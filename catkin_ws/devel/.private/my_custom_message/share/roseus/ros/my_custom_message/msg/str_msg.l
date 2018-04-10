;; Auto-generated. Do not edit!


(when (boundp 'my_custom_message::str_msg)
  (if (not (find-package "MY_CUSTOM_MESSAGE"))
    (make-package "MY_CUSTOM_MESSAGE"))
  (shadow 'str_msg (find-package "MY_CUSTOM_MESSAGE")))
(unless (find-package "MY_CUSTOM_MESSAGE::STR_MSG")
  (make-package "MY_CUSTOM_MESSAGE::STR_MSG"))

(in-package "ROS")
;;//! \htmlinclude str_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass my_custom_message::str_msg
  :super ros::object
  :slots (_str ))

(defmethod my_custom_message::str_msg
  (:init
   (&key
    ((:str __str) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _str __str)
   self)
  (:str
   (&rest __str)
   (if (keywordp (car __str))
       (send* _str __str)
     (progn
       (if __str (setq _str (car __str)))
       _str)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _str
    (send _str :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _str
       (send _str :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _str
     (send _str :deserialize buf ptr-) (incf ptr- (send _str :serialization-length))
   ;;
   self)
  )

(setf (get my_custom_message::str_msg :md5sum-) "32224c1636e75e68745b61629dfa07c5")
(setf (get my_custom_message::str_msg :datatype-) "my_custom_message/str_msg")
(setf (get my_custom_message::str_msg :definition-)
      "std_msgs/String str

================================================================================
MSG: std_msgs/String
string data

")



(provide :my_custom_message/str_msg "32224c1636e75e68745b61629dfa07c5")


