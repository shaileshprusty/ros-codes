#include "ros/ros.h"
#include "my_custom_message/str_msg.h"

void chatterCallback(const my_custom_message::str_msg::ConstPtr& msg)
{
  ROS_INFO("Shailesh heard: [%s]", msg->strg.c_str());
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "sub");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("my_topic", 1000, chatterCallback);

  ros::spin();

  return 0;
}

