#include <iostream>
#include "Mesh.h"

Mesh::Mesh() : to_world_(Eigen::Affine3f::Identity()) {

}

std::vector<Vertex> Mesh::getVertices() const {
    std::vector<Vertex> res;
    for(const Vertex& v : vertices_) {
        Vertex newVert;
        Vertex curr = v;
        newVert.position = to_world_ * curr.position;
        newVert.normal = (to_world_.linear().inverse().transpose() * v.normal).normalized();
        newVert.color = v.color;
        res.push_back(newVert);
    }
    return res;
}

void Mesh::setToWorldTransform(Eigen::Affine3f trans) {
    to_world_ = trans;
}

void Mesh::transform(Eigen::Affine3f trans) {
    for(Vertex& v : vertices_){
        v.position = trans * v.position;
        v.normal = (trans.linear().inverse().transpose() * v.normal).normalized();
    }
}