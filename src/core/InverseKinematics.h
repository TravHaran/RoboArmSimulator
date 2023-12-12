#include <array>
#include "Eigen/Dense"
#include "Robot.h"
#include "Utility.h"

//TODO: add numerical IK solvers based on the paper recommendations
// http://math.ucsd.edu/~sbuss/ResearchWeb/ikmethods/iksurvey.pdf
//Especially Jacobian Transpose is said to be easy to implent, fast and accurate.

// namespace contains different IK solver functions for use with the robot
namespace IK {
    const float DISTANCE_THRESHOLD = 0.0001f;
    const float TIMEOUT_MICROS = 1000;

    //represents a solution to the inverse kinematics problem
    //if timed_out=true, then the target is unreachable
    //and joint_angles will be whatever the algorithm ended at on its last iteration
    struct IKSolution{
        Eigen::VectorXf joint_angles;
        uint64_t time_taken_micros;
        bool timed_out;
    };

    //the first IK solver, not particularly fast or accurate, but gets the job done
    class SimpleIKSolver {
        public:
            static IKSolution solve(const Robot& robot, const Eigen::Vector3f& tcp_target_wrt_world);
    };
}
