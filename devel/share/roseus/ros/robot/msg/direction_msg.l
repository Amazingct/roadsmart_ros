;; Auto-generated. Do not edit!


(when (boundp 'robot::direction_msg)
  (if (not (find-package "ROBOT"))
    (make-package "ROBOT"))
  (shadow 'direction_msg (find-package "ROBOT")))
(unless (find-package "ROBOT::DIRECTION_MSG")
  (make-package "ROBOT::DIRECTION_MSG"))

(in-package "ROS")
;;//! \htmlinclude direction_msg.msg.html


(defclass robot::direction_msg
  :super ros::object
  :slots (_speed _reverse _turn ))

(defmethod robot::direction_msg
  (:init
   (&key
    ((:speed __speed) 0)
    ((:reverse __reverse) 0)
    ((:turn __turn) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _reverse (round __reverse))
   (setq _turn (round __turn))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:turn
   (&optional __turn)
   (if __turn (setq _turn __turn)) _turn)
  (:serialization-length
   ()
   (+
    ;; int32 _speed
    4
    ;; int32 _reverse
    4
    ;; int32 _turn
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _speed
       (write-long _speed s)
     ;; int32 _reverse
       (write-long _reverse s)
     ;; int32 _turn
       (write-long _turn s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reverse
     (setq _reverse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _turn
     (setq _turn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot::direction_msg :md5sum-) "a8072a12186ad0921bcc9ce37f809e20")
(setf (get robot::direction_msg :datatype-) "robot/direction_msg")
(setf (get robot::direction_msg :definition-)
      "int32 speed
int32 reverse
int32 turn

")



(provide :robot/direction_msg "a8072a12186ad0921bcc9ce37f809e20")


