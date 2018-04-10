;; Auto-generated. Do not edit!


(when (boundp 'my_custom_message::str_msg)
  (if (not (find-package "MY_CUSTOM_MESSAGE"))
    (make-package "MY_CUSTOM_MESSAGE"))
  (shadow 'str_msg (find-package "MY_CUSTOM_MESSAGE")))
(unless (find-package "MY_CUSTOM_MESSAGE::STR_MSG")
  (make-package "MY_CUSTOM_MESSAGE::STR_MSG"))

(in-package "ROS")
;;//! \htmlinclude str_msg.msg.html


(defclass my_custom_message::str_msg
  :super ros::object
  :slots (_strg ))

(defmethod my_custom_message::str_msg
  (:init
   (&key
    ((:strg __strg) "")
    )
   (send-super :init)
   (setq _strg (string __strg))
   self)
  (:strg
   (&optional __strg)
   (if __strg (setq _strg __strg)) _strg)
  (:serialization-length
   ()
   (+
    ;; string _strg
    4 (length _strg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _strg
       (write-long (length _strg) s) (princ _strg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _strg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get my_custom_message::str_msg :md5sum-) "7320de471be605ad0f1e7c7af079792f")
(setf (get my_custom_message::str_msg :datatype-) "my_custom_message/str_msg")
(setf (get my_custom_message::str_msg :definition-)
      "string strg

")



(provide :my_custom_message/str_msg "7320de471be605ad0f1e7c7af079792f")


