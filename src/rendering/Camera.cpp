#define _USE_MATH_DEFINES
#include <math.h>
#include <iostream>

#include "Camera.h"

using namespace Eigen;


Camera::Camera(
        const Eigen::Vector3f& center, const float radius,
        const float azimuth, const float polar,
        const Eigen::Vector3f& up, float speed, float mouse_sensitivity
        ):
            center_(center),
            azimuthAngle_(azimuth),
            polarAngle_(polar),
            speed_(speed),
            up_(up),
            mouse_sensitivity_(mouse_sensitivity),
            fov_(70.0f),
            near_(0.3f),
            far_(50.0f),
            aspect_(16/9),
            dragLeft_(false),
            dragMiddle_(false),
            dragRight_(false),
            shiftDown_(false),
            radius_(radius)
        {
            //Calculate sin & cos of angles
            const float sinAzimuth = sin(azimuthAngle_);
            const float cosAzimuth = cos(azimuthAngle_);
            const float sinPolar = sin(polarAngle_);
            const float cosPolar = cos(polarAngle_);

            //Calculate eye position out of them
            const float x = center_.x() + radius_ * cosPolar * cosAzimuth;
            const float y = center_.y() + radius_ * sinPolar;
            const float z = center_.z() + radius_ * cosPolar * sinAzimuth;

            position_ = {x, y, z};

            // calculate forward
            forward_ = (center_ - position_).normalized();
        }

        void Camera::handleEvent(const Event& ev){
            switch (ev.type){
                case EventType::KEY_DOWN:
                    if(ev.key == GLFW_MOUSE_BUTTON_LEFT) dragLeft_ = true;
                    if(ev.key == GLFW_MOUSE_BUTTON_MIDDLE) dragMiddle_ = true;
                    if(ev.key == GLFW_MOUSE_BUTTON_RIGHT) dragRight_ = true;
                    if(ev.key == GLFW_KEY_LEFT_SHIFT) shiftDown_ = true;
                    break;
                case EventType::KEY_UP:
                    if(ev.key == GLFW_MOUSE_BUTTON_LEFT) dragLeft_ = false;
                    if(ev.key == GLFW_MOUSE_BUTTON_MIDDLE) dragMiddle_ = false;
                    if(ev.key == GLFW_MOUSE_BUTTON_RIGHT) dragRight_ = false;
                    if(ev.key == GLFW_KEY_LEFT_SHIFT) shiftDown_ = false;
                    break;
                case EventType::MOUSE_MOVED:
                {
                    Vector3f delta = Vector3f(ev.mouse_pos.x() - last_mouse_pos.x(), last_mouse_pos.y() - ev.mouse_pos.y(), 0.0f);
                    last_mouse_pos.x() = ev.mouse_pos.x();
                    last_mouse_pos.y() = ev.mouse_pos.y();

                    if (dragMiddle_) {
                        if(shiftDown_) {
                            //move center of rotation
                            center_ -= up_ * mouse_sensitivity_ * delta.y();

                            Vector3f strafeVector = forward_.cross(up_).normalized();
                            center_ -= strafeVector * mouse_sensitivity_ * delta.x();
                        } else {
                            //rotate azimuth by mouse delta in that direction
                            azimuthAngle_ += mouse_sensitivity_ * delta.x();

                            //Keep azimuth angle within range <0..2PI> - this will have it output nicely
                            const float fullCircle = 2.0f * M_PI;
                            azimuthAngle_ = fmodf(azimuthAngle_, fullCircle);
                            if(azimuthAngle_ < 0.0f){
                                azimuthAngle_ = fullCircle + azimuthAngle_;
                            }

                            polarAngle_ -= mouse_sensitivity_ * delta.y();

                            //Check if the angle hasn't exceeded quarter of a circle to prevent flip, add a bit of epsilon: 0.001 rad
                            const auto polarCap = M_PI / 2.0f - 0.001f;
                            if(polarAngle_ > polarCap) {
                                polarAngle_ = polarCap;
                            }
                            if(polarAngle_ < -polarCap){
                                polarAngle_ = -polarCap;
                            }
                        }
                    }
                    break;
                }
                case EventType::MOUSE_SCROLLED:
                {
                    radius_ -= ev.scroll_amount;
                    if(radius_ < _minRadius) {
                        radius_ = _minRadius;
                    }
                    break;
                }
            }
        }

        void Camera::update(float dt, GLFWwindow* wondow){
            //Calculate sin & cos of angles
            const float sinAzimuth = sin(azimuthAngle_);
            const float cosAzimuth = cos(azimuthAngle_);
            const float sinPolar = sin(polarAngle_);
            const float cosPolar = cos(polarAngle_);

            //Calculate eye position out of them
            const float x = center_.x() + radius_ * cosPolar * cosAzimuth;
            const float y = center_.y() + radius_ * sinPolar;
            const float z = center_.z() + radius_ * cosPolar * sinAzimuth;

            //apply the new position
            position_ = Vector3f(x, y, z);

            //apply the new orientation
            forward_ = (center_ - position_).normalized();
            Vector3f right = forward_.cross(Vector3f(0,1,0));
            up_ = right.cross(forward_);
        }

        Eigen::Matrix4f Camera::getViewMatrix() const {
            Matrix3f orient = getOrientation();
            Vector3f pos = orient.transpose() * position_;
            Affine3f r;
            r.linear() = orient.transpose();
            r.translation() = -pos;
            return r.matrix();
        }

        Eigen::Matrix4f Camera::getProjectionMatrix() const {
            //Camera points towards -z, 0 < near < far.
            //Matrix maps z range [-near, -far] to [-1, 1], after homogeneous division.
            float f = tan(fov_ * M_PI / 360.0f);
            float d = near_ - far_;
            f = f ? 1/f : 0;
            d = d ? 1/d : 0;

            Matrix4f r;
            r.row(0) = Vector4f(f, 0.0f, 0.0f, 0.0f);
            r.row(1) = Vector4f(0.0f, f*aspect_, 0.0f, 0.0f);
            r.row(2) = Vector4f(0.0f, f * aspect_, 0.0f, 0.0f);
            r.row(3) = Vector4f(0.0f, 0.0f, -1.0f, 0.0f);
            return r;
        }

        Eigen::Matrix3f Camera::getOrientation() const {
            Eigen::Matrix3f r;
            r.col(2) = -forward_.normalized();
            r.col(0) = up_.cross(r.col(2)).normalized();
            r.col(1) = (r.col(2)).cross(r.col(0)).normalized();
            return r;
        }