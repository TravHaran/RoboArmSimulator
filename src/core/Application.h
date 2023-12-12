#pragma once

#include <vector>
#include <memory>

#include "Eigen/Dense"
#include "Robot.h"
#include "rendering/Camera.h"
#include "rendering/Shader.h"

using namespace std;

#include "Event.h"

class Application {
    private:
        enum class DrawMode{
            MODE_MESH,
            MODE_MESH_WIREFRAME
        };

        struct glGeneratedIndices{
            //Shader programs
            GLuint simple_shader;

            //Vertex array objects
            GLuint simple_vao, point_vao;

            //Buffers
            GLuint simple_vertex_buffer;

            //Shader uniforms
            GLint model, view, projection, lightPos, viewPos, lightColor, objectColor;
        };
    public:
        Application();
        virtual ~Application() {};
        void createWindow(int width, int height);
        void initRendering();
        void run();
        void render();
        void update(float dt);
        void updateJointControlSliders();
        void applyJointControls();
        void abortRunningIkSolution();
        void mouseButtonCallback(GLFWwindow* window, int button, int action, int mods);
        void setIkTarget();
        void handleEvent(const Event& ev);
    private:
        Application(const Application&); //forbid copy
        Application& operator= (const Application&); //forbid assignment
        Camera camera_;
        GLFWwindow* window_;
        DrawMode drawmode_;
        bool shading_toggle_;
        bool shading_mode_changed_;
        vector<float> joint_angle_controls_;
        vector<float> prev_controls_;

        uint64_t time_end_;
        float temp = 0;
        bool running_ik_solution_ = false;

        float pid_p = 0.035;
        float pid_i = 0;
        float pid_d = 0;

        glGeneratedIndices gl_;

        Eigen::Vector3f ray_start_, ray_end_;

        unique_ptr<Shader> shader_;
        unique_ptr<Robot> robot_;
};