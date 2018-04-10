
(cl:in-package :asdf)

(defsystem "my_custom_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "str_msg" :depends-on ("_package_str_msg"))
    (:file "_package_str_msg" :depends-on ("_package"))
  ))