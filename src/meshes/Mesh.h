#pragma once
#include <vector>
#define _USE_MATH_DEFINES
#include <math.h>

#include "Eigen/Dense"

struct Vertex {
    Eigen::Vector3f position;
    Eigen::Vector3f normal;
    Eigen::Vector4f color;
};

class Mesh {
    public:
        Mesh();
        void setToWorldTransform(Eigen::Affine3f t);
        void transform(Eigen::Affine3f t);
        std::vector<Vertex> getVertices() const;
    protected:
        std::vector<Vertex> vertices_;
        Eigen::Affine3f to_world_;
};