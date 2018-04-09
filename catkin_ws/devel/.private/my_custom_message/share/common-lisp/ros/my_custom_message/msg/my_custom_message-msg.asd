
(cl:in-package :asdf)

(defsystem "my_custom_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Number" :depends-on ("_package_Number"))
    (:file "_package_Number" :depends-on ("_package"))
  ))