# fetch-gazebo
[参考サイト 公式ドキュメント](https://docs.fetchrobotics.com/index.html)
- procedure
  ```
  cd ./fetch-gazebo/src/
  git clone https://docs.fetchrobotics.com/index.html
  cd ../Docker
  ./build.sh
  ./run.sh # change some arguments for each env
  ### in the container
  byobu
  cd /root/catkin_ws
  catkin build
  source devel/setup.bash
  roslaunch fetch_gazebo playground.launch
  #push F2
  source devel/setup.bash
  roscd fetch_test/scripts
  python tests_arm_movements.py
  ```
