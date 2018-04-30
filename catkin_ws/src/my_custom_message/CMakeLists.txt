cmake_minimum_required(VERSION 2.8.3)
project(my_custom_message)

find_package(catkin REQUIRED COMPONENTS
#  roscpp
#  rospy
#  std_msgs
  message_generation
#  genmsg
)

add_message_files(
  FILES
  str_msg.msg
  numbers.msg
  num_sum.msg
)

generate_messages(
  DEPENDENCIES
#  std_msgs
)

catkin_package(
)

#include_directories(
# include
#  ${catkin_INCLUDE_DIRS}
#)


