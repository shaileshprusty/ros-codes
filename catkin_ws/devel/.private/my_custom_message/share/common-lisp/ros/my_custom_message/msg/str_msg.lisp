; Auto-generated. Do not edit!


(cl:in-package my_custom_message-msg)


;//! \htmlinclude str_msg.msg.html

(cl:defclass <str_msg> (roslisp-msg-protocol:ros-message)
  ((strg
    :reader strg
    :initarg :strg
    :type cl:string
    :initform ""))
)

(cl:defclass str_msg (<str_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <str_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'str_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_message-msg:<str_msg> is deprecated: use my_custom_message-msg:str_msg instead.")))

(cl:ensure-generic-function 'strg-val :lambda-list '(m))
(cl:defmethod strg-val ((m <str_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_message-msg:strg-val is deprecated.  Use my_custom_message-msg:strg instead.")
  (strg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <str_msg>) ostream)
  "Serializes a message object of type '<str_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <str_msg>) istream)
  "Deserializes a message object of type '<str_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  "7320de471be605ad0f1e7c7af079792f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'str_msg)))
  "Returns md5sum for a message object of type 'str_msg"
  "7320de471be605ad0f1e7c7af079792f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<str_msg>)))
  "Returns full string definition for message of type '<str_msg>"
  (cl:format cl:nil "string strg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'str_msg)))
  "Returns full string definition for message of type 'str_msg"
  (cl:format cl:nil "string strg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <str_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'strg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <str_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'str_msg
    (cl:cons ':strg (strg msg))
))
