FROM ros:humble-ros-core

RUN /bin/bash -c 'source /opt/ros/humble/setup.bash'

RUN mkdir /home/ros

COPY talker.py /home/ros/

EXPOSE 11311

CMD /bin/bash -c 'python3 /home/ros/talker.py'