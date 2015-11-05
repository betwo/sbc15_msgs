cmake_minimum_required(VERSION 2.8.3)
project(sbc15_msgs)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  std_msgs
  control_msgs
  actionlib_msgs
  message_generation
)
add_message_files(
  FILES
    Object.msg
    ObjectsCenter.msg
    Segment.msg
    Segments.msg
)
add_service_files(
  FILES
    GetObjects.srv
    PreplannedTrajectories.srv
    GripperServices.srv
)
add_action_files(
  DIRECTORY
    action
  FILES
    MoveManipulatorHightOffset.action
    MoveManipulator.action
    visual_servoing.action
    Play.action
)


# Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
    geometry_msgs
    control_msgs
    std_msgs
    actionlib_msgs
)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
   CATKIN_DEPENDS
     message_runtime
     geometry_msgs
     control_msgs
     std_msgs
)
