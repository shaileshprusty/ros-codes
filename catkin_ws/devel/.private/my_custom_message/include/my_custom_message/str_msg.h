// Generated by gencpp from file my_custom_message/str_msg.msg
// DO NOT EDIT!


#ifndef MY_CUSTOM_MESSAGE_MESSAGE_STR_MSG_H
#define MY_CUSTOM_MESSAGE_MESSAGE_STR_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_custom_message
{
template <class ContainerAllocator>
struct str_msg_
{
  typedef str_msg_<ContainerAllocator> Type;

  str_msg_()
    : strg()  {
    }
  str_msg_(const ContainerAllocator& _alloc)
    : strg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _strg_type;
  _strg_type strg;





  typedef boost::shared_ptr< ::my_custom_message::str_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_custom_message::str_msg_<ContainerAllocator> const> ConstPtr;

}; // struct str_msg_

typedef ::my_custom_message::str_msg_<std::allocator<void> > str_msg;

typedef boost::shared_ptr< ::my_custom_message::str_msg > str_msgPtr;
typedef boost::shared_ptr< ::my_custom_message::str_msg const> str_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_custom_message::str_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_custom_message::str_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_custom_message

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'my_custom_message': ['/home/scp/ros-codes/catkin_ws/src/my_custom_message/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_custom_message::str_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_custom_message::str_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_custom_message::str_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_custom_message::str_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_custom_message::str_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_custom_message::str_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_custom_message::str_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7320de471be605ad0f1e7c7af079792f";
  }

  static const char* value(const ::my_custom_message::str_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7320de471be605adULL;
  static const uint64_t static_value2 = 0x0f1e7c7af079792fULL;
};

template<class ContainerAllocator>
struct DataType< ::my_custom_message::str_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_custom_message/str_msg";
  }

  static const char* value(const ::my_custom_message::str_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_custom_message::str_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string strg\n\
";
  }

  static const char* value(const ::my_custom_message::str_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_custom_message::str_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.strg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct str_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_custom_message::str_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_custom_message::str_msg_<ContainerAllocator>& v)
  {
    s << indent << "strg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.strg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_CUSTOM_MESSAGE_MESSAGE_STR_MSG_H
