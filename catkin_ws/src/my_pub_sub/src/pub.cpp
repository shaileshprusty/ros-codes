#include "ros/ros.h"
#include "my_custom_message/str_msg.h"

#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "pub");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<my_custom_message::str_msg>("my_topic", 1000);

  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {
    my_custom_message::str_msg msg;

    std::stringstream ss;
    ss << "Hello Shailesh..!!! " << count;
    msg.strg = ss.str();

    ROS_INFO("%s", msg.strg.c_str());

    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}


