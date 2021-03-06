// Generated by gencpp from file robot/robot_actionsResult.msg
// DO NOT EDIT!


#ifndef ROBOT_MESSAGE_ROBOT_ACTIONSRESULT_H
#define ROBOT_MESSAGE_ROBOT_ACTIONSRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot
{
template <class ContainerAllocator>
struct robot_actionsResult_
{
  typedef robot_actionsResult_<ContainerAllocator> Type;

  robot_actionsResult_()
    : success(false)  {
    }
  robot_actionsResult_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::robot::robot_actionsResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot::robot_actionsResult_<ContainerAllocator> const> ConstPtr;

}; // struct robot_actionsResult_

typedef ::robot::robot_actionsResult_<std::allocator<void> > robot_actionsResult;

typedef boost::shared_ptr< ::robot::robot_actionsResult > robot_actionsResultPtr;
typedef boost::shared_ptr< ::robot::robot_actionsResult const> robot_actionsResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot::robot_actionsResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot::robot_actionsResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot::robot_actionsResult_<ContainerAllocator1> & lhs, const ::robot::robot_actionsResult_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot::robot_actionsResult_<ContainerAllocator1> & lhs, const ::robot::robot_actionsResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot::robot_actionsResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot::robot_actionsResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot::robot_actionsResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot::robot_actionsResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot::robot_actionsResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot::robot_actionsResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot::robot_actionsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::robot::robot_actionsResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot::robot_actionsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot/robot_actionsResult";
  }

  static const char* value(const ::robot::robot_actionsResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot::robot_actionsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# define result\n"
"bool success\n"
"\n"
;
  }

  static const char* value(const ::robot::robot_actionsResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot::robot_actionsResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_actionsResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot::robot_actionsResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot::robot_actionsResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_MESSAGE_ROBOT_ACTIONSRESULT_H
