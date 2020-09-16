
(cl:in-package :asdf)

(defsystem "robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "direction_msg" :depends-on ("_package_direction_msg"))
    (:file "_package_direction_msg" :depends-on ("_package"))
    (:file "robot_actionsAction" :depends-on ("_package_robot_actionsAction"))
    (:file "_package_robot_actionsAction" :depends-on ("_package"))
    (:file "robot_actionsActionFeedback" :depends-on ("_package_robot_actionsActionFeedback"))
    (:file "_package_robot_actionsActionFeedback" :depends-on ("_package"))
    (:file "robot_actionsActionGoal" :depends-on ("_package_robot_actionsActionGoal"))
    (:file "_package_robot_actionsActionGoal" :depends-on ("_package"))
    (:file "robot_actionsActionResult" :depends-on ("_package_robot_actionsActionResult"))
    (:file "_package_robot_actionsActionResult" :depends-on ("_package"))
    (:file "robot_actionsFeedback" :depends-on ("_package_robot_actionsFeedback"))
    (:file "_package_robot_actionsFeedback" :depends-on ("_package"))
    (:file "robot_actionsGoal" :depends-on ("_package_robot_actionsGoal"))
    (:file "_package_robot_actionsGoal" :depends-on ("_package"))
    (:file "robot_actionsResult" :depends-on ("_package_robot_actionsResult"))
    (:file "_package_robot_actionsResult" :depends-on ("_package"))
  ))