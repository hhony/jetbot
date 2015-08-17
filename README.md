# jetbot #
Jetson tk1 compatible stereo camera - nickname: stereo_cyclops, [here's the device](http://hansbot.blogspot.com/2015/06/improved-stereo-camera.html)

1. [How to clone jetbot: (recommended reading)](https://github.com/hhony/jetbot#how-to-clone-jetbot)
2. [Software Requirements](https://github.com/hhony/jetbot/wiki/jetbot-wiki-home#software-requirements)
3. [Hardware Requirements](https://github.com/hhony/jetbot/wiki/jetbot-wiki-home#hardware-requirements)
4. [Description of jetbot](https://github.com/hhony/jetbot/wiki/jetbot-wiki-home#description-of-jetbot)
  1. [Pros of camera](https://github.com/hhony/jetbot/wiki/jetbot-wiki-home#pros-of-ps3eye-as-sensor-platform)
  2. [Cons of camera](https://github.com/hhony/jetbot/wiki/jetbot-wiki-home#cons-of-ps3eye-as-sensor-platform)
5. [Hardware Modification: (DIY, how to...)](https://github.com/hhony/jetbot/wiki/wiki:-hardware-modification)

### How to clone jetbot: ###
This project has submodules, so you will have to clone it using the following command:

     git clone --recurse-submodules https://github.com/hhony/jetbot.git

To update a submodule:

     git submodule init; git submodule update

For more help on using submodules, see: 

     git submodule --help

### How to start the app ###
This was built using ROS Indigo. Install ROS Indigo, and start with:

     roslaunch app robot.launch

__Note: This will build on either armv7 or x64.__ See [Software Requirements](https://github.com/hhony/jetbot/wiki/jetbot-wiki-home#software-requirements) for more info on building on either platform.

More details:
* I will be sharing the 3D print model and editable file soon also...
* [Stereo Cyclops 1.1](http://hansbot.blogspot.com/2015/06/improved-stereo-camera.html)
