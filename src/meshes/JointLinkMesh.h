#pragma once
#include "Mesh.h"

//A graphical representation of a joint link
class JointLinkMesh : public Mesh {
    public:
        JointLinkMesh(float z_len, float x_len, int link_number);
        static const Eigen::Vector4f JOINT_COLOR;
        static const Eigen::Vector4f LINK_COLOR;
};