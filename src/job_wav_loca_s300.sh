#!/bin/bash

for i in `find ./s300 -iname *sepwavall*`
do
  
  sudo LD_LIBRARY_PATH=/home/dumont/catkin_ws/devel/lib:/opt/ros/indigo/lib ROS_MASTER_URI=http://emmanuel-HP-EliteBook-840-G2:11311/ ./wav_loca_kinect kinect_tf.zip $i

  mv /home/dumont/workspace/loca/curr_reg.xml /home/dumont/workspace/loca/s300_src1/${i:7:17}.xml

done
