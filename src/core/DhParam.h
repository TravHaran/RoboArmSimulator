#pragma once
#include <string>
#include <vector>

//DH parameters for describing a link
struct DhParam{
    //a = translation along the x-axis of the previous frame
    //alpha = rotation around the x-axis of previous frame
    //d = offset from previous fram to current frame (translation along previous z)
    //theta = angle from previous frame to current frame (rotation along previous z)
    float a, alpha, d, theta;

    //joint type: R = revolute, P = prismatic
    std::string sigma;
};

std::vector<DhParam> loadDhParamsFromFile(const std::string filename);