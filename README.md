# RoboArmSimulator
Robotic Arm Simulator built with C++, OpenGl, ImGUI, and GLFW

OpenGL: 3D rendering
ImGUI: user interface
GLFW: window management
Eigen: linear algebra

This project is a 3D robot arm simulator which can simulate a robot arm with revolute joints when given its Denavit-Hartenberg parameters. 

Features:
- Live control of joint angles
- Live editing of the Denavit-Hartenberg parameters of the robot
- Shows TCP world position using forward kinematics
- Shows linear and angular velocity of the TCP using the Jacobian matrix
- Numerical inverse kinematics to any point given by right click of the mouse
