; Auto-generated. Do not edit!


(cl:in-package robot-msg)


;//! \htmlinclude robot_actionsFeedback.msg.html

(cl:defclass <robot_actionsFeedback> (roslisp-msg-protocol:ros-message)
  ((current_long
    :reader current_long
    :initarg :current_long
    :type cl:float
    :initform 0.0)
   (current_lat
    :reader current_lat
    :initarg :current_lat
    :type cl:float
    :initform 0.0))
)

(cl:defclass robot_actionsFeedback (<robot_actionsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_actionsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_actionsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot-msg:<robot_actionsFeedback> is deprecated: use robot-msg:robot_actionsFeedback instead.")))

(cl:ensure-generic-function 'current_long-val :lambda-list '(m))
(cl:defmethod current_long-val ((m <robot_actionsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot-msg:current_long-val is deprecated.  Use robot-msg:current_long instead.")
  (current_long m))

(cl:ensure-generic-function 'current_lat-val :lambda-list '(m))
(cl:defmethod current_lat-val ((m <robot_actionsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot-msg:current_lat-val is deprecated.  Use robot-msg:current_lat instead.")
  (current_lat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_actionsFeedback>) ostream)
  "Serializes a message object of type '<robot_actionsFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_long))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_actionsFeedback>) istream)
  "Deserializes a message object of type '<robot_actionsFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_long) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_lat) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_actionsFeedback>)))
  "Returns string type for a message object of type '<robot_actionsFeedback>"
  "robot/robot_actionsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_actionsFeedback)))
  "Returns string type for a message object of type 'robot_actionsFeedback"
  "robot/robot_actionsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_actionsFeedback>)))
  "Returns md5sum for a message object of type '<robot_actionsFeedback>"
  "02a7c0fb9633ae41b2997d7c1088daa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_actionsFeedback)))
  "Returns md5sum for a message object of type 'robot_actionsFeedback"
  "02a7c0fb9633ae41b2997d7c1088daa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_actionsFeedback>)))
  "Returns full string definition for message of type '<robot_actionsFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# define feedback~%float32 current_long~%float32 current_lat~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_actionsFeedback)))
  "Returns full string definition for message of type 'robot_actionsFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# define feedback~%float32 current_long~%float32 current_lat~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_actionsFeedback>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_actionsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_actionsFeedback
    (cl:cons ':current_long (current_long msg))
    (cl:cons ':current_lat (current_lat msg))
))
