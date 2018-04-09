; Auto-generated. Do not edit!


(cl:in-package my_custom_message-msg)


;//! \htmlinclude Number.msg.html

(cl:defclass <Number> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass Number (<Number>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Number>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Number)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_message-msg:<Number> is deprecated: use my_custom_message-msg:Number instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Number>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_message-msg:num-val is deprecated.  Use my_custom_message-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Number>) ostream)
  "Serializes a message object of type '<Number>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Number>) istream)
  "Deserializes a message object of type '<Number>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Number>)))
  "Returns string type for a message object of type '<Number>"
  "my_custom_message/Number")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Number)))
  "Returns string type for a message object of type 'Number"
  "my_custom_message/Number")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Number>)))
  "Returns md5sum for a message object of type '<Number>"
  "57d3c40ec3ac3754af76a83e6e73127a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Number)))
  "Returns md5sum for a message object of type 'Number"
  "57d3c40ec3ac3754af76a83e6e73127a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Number>)))
  "Returns full string definition for message of type '<Number>"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Number)))
  "Returns full string definition for message of type 'Number"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Number>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Number>))
  "Converts a ROS message object to a list"
  (cl:list 'Number
    (cl:cons ':num (num msg))
))
