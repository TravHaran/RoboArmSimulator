#pragma once
#include <iostream>
#include <chrono>

#define GLEW_STATIC
#include "GL/glew.h"
#include "GLFW/glfw3.h"
#include "Eigen/Dense"

using namespace std;

inline uint64_t currentTimeMillis(){
    return chrono::duration_cast<chrono::milliseconds>(chrono::high_resolution_clock::now().time_since_epoch()).count();
}

inline uint64_t currentTimeMicros(){
    return chrono::duration_cast<chrono::microseconds>(chrono::high_resolution_clock::now().time_since_epoch()).count();
}

inline void checkGlErrors(){
    GLenum err;
    while((err = glGetError()) != GL_NO_ERROR){
        cerr<<err<<endl;
        abort();
    }
}

//to determine the size of an array of strings
template<typename T, size_t N>
char(&static_sizeof_array(T(&)[N]))[N];
#define SIZEOF_ARRAY( x ) sizeof(static_sizeof_array(x))