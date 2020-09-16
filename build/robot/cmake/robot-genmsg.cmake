# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot: 8 messages, 0 services")

set(MSG_I_FLAGS "-Irobot:/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg;-Irobot:/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg" NAME_WE)
add_custom_target(_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot" "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg" ""
)

get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg" NAME_WE)
add_custom_target(_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot" "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg" "robot/robot_actionsGoal:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robot/robot_actionsActionGoal:robot/robot_actionsActionFeedback:robot/robot_actionsResult:robot/robot_actionsFeedback:std_msgs/Header:robot/robot_actionsActionResult"
)

get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg" NAME_WE)
add_custom_target(_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot" "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg" "robot/robot_actionsGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg" NAME_WE)
add_custom_target(_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot" "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg" "actionlib_msgs/GoalID:robot/robot_actionsResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg" NAME_WE)
add_custom_target(_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot" "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header:robot/robot_actionsFeedback"
)

get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg" NAME_WE)
add_custom_target(_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot" "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg" ""
)

get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg" NAME_WE)
add_custom_target(_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot" "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg" ""
)

get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg" NAME_WE)
add_custom_target(_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot" "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
)
_generate_msg_cpp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
)
_generate_msg_cpp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
)
_generate_msg_cpp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
)
_generate_msg_cpp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
)
_generate_msg_cpp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
)
_generate_msg_cpp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
)
_generate_msg_cpp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
)

### Generating Services

### Generating Module File
_generate_module_cpp(robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_generate_messages robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg" NAME_WE)
add_dependencies(robot_generate_messages_cpp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg" NAME_WE)
add_dependencies(robot_generate_messages_cpp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_cpp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_cpp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_cpp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_cpp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_cpp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_cpp _robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_gencpp)
add_dependencies(robot_gencpp robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
)
_generate_msg_eus(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
)
_generate_msg_eus(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
)
_generate_msg_eus(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
)
_generate_msg_eus(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
)
_generate_msg_eus(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
)
_generate_msg_eus(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
)
_generate_msg_eus(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
)

### Generating Services

### Generating Module File
_generate_module_eus(robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_generate_messages robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg" NAME_WE)
add_dependencies(robot_generate_messages_eus _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg" NAME_WE)
add_dependencies(robot_generate_messages_eus _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_eus _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_eus _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_eus _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_eus _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_eus _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_eus _robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_geneus)
add_dependencies(robot_geneus robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
)
_generate_msg_lisp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
)
_generate_msg_lisp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
)
_generate_msg_lisp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
)
_generate_msg_lisp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
)
_generate_msg_lisp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
)
_generate_msg_lisp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
)
_generate_msg_lisp(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
)

### Generating Services

### Generating Module File
_generate_module_lisp(robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_generate_messages robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg" NAME_WE)
add_dependencies(robot_generate_messages_lisp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg" NAME_WE)
add_dependencies(robot_generate_messages_lisp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_lisp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_lisp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_lisp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_lisp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_lisp _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_lisp _robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_genlisp)
add_dependencies(robot_genlisp robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
)
_generate_msg_nodejs(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
)
_generate_msg_nodejs(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
)
_generate_msg_nodejs(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
)
_generate_msg_nodejs(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
)
_generate_msg_nodejs(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
)
_generate_msg_nodejs(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
)
_generate_msg_nodejs(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_generate_messages robot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg" NAME_WE)
add_dependencies(robot_generate_messages_nodejs _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg" NAME_WE)
add_dependencies(robot_generate_messages_nodejs _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_nodejs _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_nodejs _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_nodejs _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_nodejs _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_nodejs _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_nodejs _robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_gennodejs)
add_dependencies(robot_gennodejs robot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
)
_generate_msg_py(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
)
_generate_msg_py(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
)
_generate_msg_py(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
)
_generate_msg_py(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
)
_generate_msg_py(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
)
_generate_msg_py(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
)
_generate_msg_py(robot
  "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
)

### Generating Services

### Generating Module File
_generate_module_py(robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_generate_messages robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/src/robot/msg/direction_msg.msg" NAME_WE)
add_dependencies(robot_generate_messages_py _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsAction.msg" NAME_WE)
add_dependencies(robot_generate_messages_py _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_py _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_py _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsActionFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_py _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsGoal.msg" NAME_WE)
add_dependencies(robot_generate_messages_py _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsResult.msg" NAME_WE)
add_dependencies(robot_generate_messages_py _robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amazing/Documents/ROS/roadsmart_nws/devel/share/robot/msg/robot_actionsFeedback.msg" NAME_WE)
add_dependencies(robot_generate_messages_py _robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_genpy)
add_dependencies(robot_genpy robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robot_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robot_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robot_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robot_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot)
  install(CODE "execute_process(COMMAND \"/home/amazing/anaconda3/envs/roadsmart_ws/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robot_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
