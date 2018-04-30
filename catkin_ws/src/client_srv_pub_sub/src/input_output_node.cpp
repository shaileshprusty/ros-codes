#include "ros/ros.h"
#include "my_custom_message/numbers.h"
#include "my_custom_message/num_sum.h"

void in_out_Callback(const my_custom_message::num_sum::ConstPtr& Sum)
{
  //ROS_INFO("SUM = %f\n", Sum->sum);
  std::cout<<"SUM = "<<Sum->sum<<"\n";
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "input_output");
  ros::NodeHandle n;
  ros::Publisher client_pub = n.advertise<my_custom_message::numbers>("srv_topic1", 1000);

   ros::Subscriber client_sub = n.subscribe("srv_topic2", 1000, in_out_Callback);

  if (ros::ok())
  {
    my_custom_message::numbers arguments;

    std::cout<<"Find SUM of a and b:\na = ";
    std::cin>>arguments.a;

    std::cout<<"b = ";
    std::cin>>arguments.b;

    client_pub.publish(arguments);

    ros::spin();

  }

  else
    std::cout<<"\nError connecting Topic.\n";


  return 0;
}
