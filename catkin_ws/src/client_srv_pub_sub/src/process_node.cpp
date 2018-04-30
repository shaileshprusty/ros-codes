#include "ros/ros.h"
#include "my_custom_message/num_sum.h"
#include "my_custom_message/numbers.h"

void process_Callback(const my_custom_message::numbers::ConstPtr& Arguments)
{
  //ROS_INFO("Addition of %I64 and %I64.\n", Arguments->a, Arguments->b);
  ros::NodeHandle m;

  ros::Publisher srv_pub = m.advertise<my_custom_message::num_sum>("srv_topic2", 1000);

  std::cout<<"Addition of "<<Arguments->a<<" and "<<Arguments->b<<".\nCalculating SUM.....\n";
  my_custom_message::num_sum Sum;
  Sum.sum = Arguments->a + Arguments->b;
  
  srv_pub.publish(Sum);
  std::cout<<"Calculation Done, Sum = "<<Sum.sum;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "process");

  ros::NodeHandle n;
  ros::Subscriber srv_sub = n.subscribe("srv_topic1", 1000, process_Callback);

  ros::spin();

  return 0;
}

