; Auto-generated. Do not edit!


(cl:in-package my_custom_message-msg)


;//! \htmlinclude num_sum.msg.html

(cl:defclass <num_sum> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass num_sum (<num_sum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <num_sum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'num_sum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_message-msg:<num_sum> is deprecated: use my_custom_message-msg:num_sum instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <num_sum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_message-msg:sum-val is deprecated.  Use my_custom_message-msg:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <num_sum>) ostream)
  "Serializes a message object of type '<num_sum>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <num_sum>) istream)
  "Deserializes a message object of type '<num_sum>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<num_sum>)))
  "Returns string type for a message object of type '<num_sum>"
  "my_custom_message/num_sum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num_sum)))
  "Returns string type for a message object of type 'num_sum"
  "my_custom_message/num_sum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<num_sum>)))
  "Returns md5sum for a message object of type '<num_sum>"
  "b88405221c77b1878a3cbbfff53428d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'num_sum)))
  "Returns md5sum for a message object of type 'num_sum"
  "b88405221c77b1878a3cbbfff53428d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<num_sum>)))
  "Returns full string definition for message of type '<num_sum>"
  (cl:format cl:nil "int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'num_sum)))
  "Returns full string definition for message of type 'num_sum"
  (cl:format cl:nil "int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <num_sum>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <num_sum>))
  "Converts a ROS message object to a list"
  (cl:list 'num_sum
    (cl:cons ':sum (sum msg))
))
