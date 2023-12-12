#include <assert.h>

#include "JointLink.h"
#include "Utility.h"

using namespace Eigen;

JointLink::JointLink(DhParam params, float joint_rotation, int link_number) :
    mesh_(params.d, params.a, link_number),
    params_(params),
    rotation_(joint_rotation),
    target_rotation_(joint_rotation),
    link_number_(link_number),
    joint_speed_(0),
    to_world_(Affine3f::Identity()),
    controller_(0.05, 0.00, 0.001)
{
    this->updateLinkMatrix(rotation_);
}

void JointLink::update(float dt, Affine3f current_world_transform) {
    float control_signal = controller_.update(target_rotation_ - rotation_, dt);
    rotation_ += control_signal;
    joint_speed_ = control_signal/dt;
    updateLinkMatrix(rotation_);
    setToWorld(current_world_transform * link_matrix_);
    updateMesh();
}

void JointLink::updateLinkMatrix(float rotationAngle){
    link_matrix_ = this->evalLinkMatrix(rotationAngle);
}

void JointLink::updateMesh(){
    //the mesh is oriented using the joint's world transform
    Affine3f joint_to_world = to_world_ * link_matrix_.inverse();

    //align with joint's z axis and rotate around it by the joint's rotation
    //NOTE: this differs from DH standard since it would imply that the frame
    //that exists at the joint's location would be rotated along with the joint
    //(in DH standard it's stationary)
    Matrix3f joint_orientation = joint_to_world.linear().matrix();
    joint_orientation *= AngleAxisf(rotation_, Vector3f::UnitZ()).toRotationMatrix();

    //translate to world position of the joint
    //apply
    Affine3f transformation;
    transformation.linear() = joint_orientation;
    transformation.translation() = joint_to_world.translation();
    mesh_.setToWorldTransform(transformation);
}

void JointLink::recreateMesh(){
    mesh_ = JointLinkMesh(params_.d, params_.a, link_number_);
}

Affine3f JointLink::evalLinkMatrix(float rotationAngle) const{
    //first move up so that we are at the level of the common normal
    //then rotate around z to align x with the next x
    Affine3f z_screw = 
            AngleAxisf(rotationAngle, Vector3f::UnitZ()) *
            Translation3f(0, 0, params_.d);
    //after applying the z-screw, we are at the correct level and our x-axis points in the correct direction
    //now move towards our new x by link length and apply link twist (rotate around x-axis)
    Affine3f x_screw = 
            AngleAxisf(params_.alpha, Vector3f::UnitX()) *
            Translation3f(params_.a, 0, 0);

    //combine screws
    return z_screw * x_screw;
}

std::vector<Vertex> JointLink::getMeshVertices() const{
    return mesh_.getVertices();
}