
(cl:in-package :asdf)

(defsystem "my_custom_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "num_sum" :depends-on ("_package_num_sum"))
    (:file "_package_num_sum" :depends-on ("_package"))
    (:file "numbers" :depends-on ("_package_numbers"))
    (:file "_package_numbers" :depends-on ("_package"))
    (:file "str_msg" :depends-on ("_package_str_msg"))
    (:file "_package_str_msg" :depends-on ("_package"))
  ))