
from enum import *
from godot_api.binding_external cimport *
cimport classes.Joint
cdef class Generic6DOFJoint(classes.Joint.Joint):
    pass
ctypedef enum Param :PARAM_LINEAR_LOWER_LIMIT, PARAM_LINEAR_UPPER_LIMIT, PARAM_LINEAR_LIMIT_SOFTNESS, PARAM_LINEAR_RESTITUTION, PARAM_LINEAR_DAMPING, PARAM_LINEAR_MOTOR_TARGET_VELOCITY, PARAM_LINEAR_MOTOR_FORCE_LIMIT, PARAM_ANGULAR_LOWER_LIMIT, PARAM_ANGULAR_UPPER_LIMIT, PARAM_ANGULAR_LIMIT_SOFTNESS, PARAM_ANGULAR_DAMPING, PARAM_ANGULAR_RESTITUTION, PARAM_ANGULAR_FORCE_LIMIT, PARAM_ANGULAR_ERP, PARAM_ANGULAR_MOTOR_TARGET_VELOCITY, PARAM_ANGULAR_MOTOR_FORCE_LIMIT, PARAM_MAX, 
ctypedef enum Flag :FLAG_ENABLE_LINEAR_LIMIT, FLAG_ENABLE_ANGULAR_LIMIT, FLAG_ENABLE_ANGULAR_SPRING, FLAG_ENABLE_LINEAR_SPRING, FLAG_ENABLE_MOTOR, FLAG_ENABLE_LINEAR_MOTOR, FLAG_MAX, 
