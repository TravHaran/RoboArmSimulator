#pragma once
#include <vector>
#include <string>
#include <iostream>

#include "DhParam.h"
#include "JointLink.h"
#include "Eigen/Dense"

class Robot{
    public:
        Robot(std::string dh_param_filename, Eigen::Vector3f location);

        //used to update joint angles over time difference dt
        void update(float dt);
        //kinematics stuff
        Eigen::Vector3f getTcpWorldPosition() const;
        Eigen::Vector3f getTcpWorldPosition(Eigen::VectorXf jointAngles) const;
        Eigen::VectorXf getTcpSpeed() const;
        Eigen::MatrixXf getJacobian() const;
        Eigen::MatrixXf getJacobian(Eigen::VectorXf jointAngles) const;
        Eigen::VectorXf getJointSpeeds() const;

        //targets are with respect to world frame
        Eigen::Vector3f getTargetTcpPosition() const { return ik_target_; };
        void setTargetTcpPosition(Eigen::Vector3f new_target_wrt_world);
        Eigen::VectorXf solveInverseKinematics(Eigen::Vector3f tcp_pos) const;

        //joint angle getters
        Eigen::VectorXf getJointAngles() const;
        float getJointAngle(unsigned index) const { return links_[index].getJointRotations(); }
        Eigen::VectorXf getTargetJointAngles() const;
        float getTargetJointAngle(unsigned index) const { return links_[index].getJointTargetRotation(); }

        //joint angle setters
        void setJointTargetAngles(Eigen::VectorXf angles);
        void setJointTargetAngle(unsigned index, float angle);
        void setJointControllerPidGains(float p, float i, float d);

        std::vector<Vertex> getMeshVertices() const;

        size_t getNumJoints() const { return links_.size(); }

        Eigen::Affine3f getWorldToBase() const { return worldToBase_; }
        void setWorldToBase(Eigen::Affine3f worldToBase) { worldToBase_ = worldToBase; }

        //for editing robot params with GUI
        std::vector<DhParam> getDhParams() const {
            std::vector<DhParam> params;
            for(const JointLink& l : links_){
                params.push_back(l.getDhParams());
            }
            return params;
        }

        void setDhParams(std::vector<DhParam> new_params) {
            for(int i=0; i < getNumJoints(); i++) {
                links_[i].setDhParams(new_params[i]);
            }
        }
    private:
        Eigen::Affine3f worldToBase_;
        void createLinks(const std::vector<DhParam>& params);

        std::vector<JointLink> links_;
        Eigen::Vector3f ik_target_;
};
