; Auto-generated. Do not edit!


(cl:in-package robot-msg)


;//! \htmlinclude direction_msg.msg.html

(cl:defclass <direction_msg> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:integer
    :initform 0)
   (turn
    :reader turn
    :initarg :turn
    :type cl:integer
    :initform 0))
)

(cl:defclass direction_msg (<direction_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <direction_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'direction_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot-msg:<direction_msg> is deprecated: use robot-msg:direction_msg instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <direction_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot-msg:speed-val is deprecated.  Use robot-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <direction_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot-msg:reverse-val is deprecated.  Use robot-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'turn-val :lambda-list '(m))
(cl:defmethod turn-val ((m <direction_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot-msg:turn-val is deprecated.  Use robot-msg:turn instead.")
  (turn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <direction_msg>) ostream)
  "Serializes a message object of type '<direction_msg>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reverse)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'turn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <direction_msg>) istream)
  "Deserializes a message object of type '<direction_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reverse) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<direction_msg>)))
  "Returns string type for a message object of type '<direction_msg>"
  "robot/direction_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'direction_msg)))
  "Returns string type for a message object of type 'direction_msg"
  "robot/direction_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<direction_msg>)))
  "Returns md5sum for a message object of type '<direction_msg>"
  "a8072a12186ad0921bcc9ce37f809e20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'direction_msg)))
  "Returns md5sum for a message object of type 'direction_msg"
  "a8072a12186ad0921bcc9ce37f809e20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<direction_msg>)))
  "Returns full string definition for message of type '<direction_msg>"
  (cl:format cl:nil "int32 speed~%int32 reverse~%int32 turn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'direction_msg)))
  "Returns full string definition for message of type 'direction_msg"
  (cl:format cl:nil "int32 speed~%int32 reverse~%int32 turn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <direction_msg>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <direction_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'direction_msg
    (cl:cons ':speed (speed msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':turn (turn msg))
))
