; Auto-generated. Do not edit!


(cl:in-package my_custom_message-msg)


;//! \htmlinclude str_msg.msg.html

(cl:defclass <str_msg> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass str_msg (<str_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <str_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'str_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_message-msg:<str_msg> is deprecated: use my_custom_message-msg:str_msg instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <str_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_message-msg:str-val is deprecated.  Use my_custom_message-msg:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <str_msg>) ostream)
  "Serializes a message object of type '<str_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'str) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <str_msg>) istream)
  "Deserializes a message object of type '<str_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'str) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<str_msg>)))
  "Returns string type for a message object of type '<str_msg>"
  "my_custom_message/str_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'str_msg)))
  "Returns string type for a message object of type 'str_msg"
  "my_custom_message/str_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<str_msg>)))
  "Returns md5sum for a message object of type '<str_msg>"
  "32224c1636e75e68745b61629dfa07c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'str_msg)))
  "Returns md5sum for a message object of type 'str_msg"
  "32224c1636e75e68745b61629dfa07c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<str_msg>)))
  "Returns full string definition for message of type '<str_msg>"
  (cl:format cl:nil "std_msgs/String str~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'str_msg)))
  "Returns full string definition for message of type 'str_msg"
  (cl:format cl:nil "std_msgs/String str~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <str_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <str_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'str_msg
    (cl:cons ':str (str msg))
))
