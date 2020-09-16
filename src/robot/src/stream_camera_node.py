#! /usr/bin/python3
import roslib
roslib.load_manifest('robot')
import rospy
import cv2
import time
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class image_converter:
    def __init__(self):
        self.image_pub = rospy.Publisher("cv2_raw_camera", Image, queue_size=10)
        self.bridge = CvBridge()

    def convert_to_msg_and_pub(self, raw_cv):
        try:
            msg = self.bridge.cv2_to_imgmsg(raw_cv, "bgr8")
            self.image_pub.publish(msg)

        except CvBridgeError as e:
            print(e)

try:
    rospy.init_node('stream_camera' )
    converter = image_converter()
    cap = cv2.VideoCapture(-1)
    while (True):
        ret, frame = cap.read()
        converter.convert_to_msg_and_pub(cv2.resize(frame,(200,200)))
except:
    cap.release()

