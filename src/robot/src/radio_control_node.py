#! /usr/bin/python3
import rospy
from robot.msg import direction_msg
rospy.init_node("radio_control_node")


import smbus
bus = smbus.SMBus(1)
import time
data = []


def get_dir():
    global data
    try:
        data = bus.read_i2c_block_data(8,0,3)
    except:
        pass
    return data[0], data[1], data[2]

pub = rospy.Publisher('direction', direction_msg, queue_size=10)
rate = rospy.Rate(1) #rate to publish
msg_to_publish = direction_msg()

while not rospy.is_shutdown():
    speed, reverse, turn = get_dir()
    msg_to_publish.speed = speed
    msg_to_publish.reverse = reverse
    msg_to_publish.turn = turn

    pub.publish(msg_to_publish)
    rate.sleep()





