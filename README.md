# jetbot #
Jetson tk1 compatible stereo camera - nickname: stereo_cyclops

--
<a href="http://3.bp.blogspot.com/-1_6cSzO5hVg/VdFlmxuEO1I/AAAAAAAACMw/uh-UoaoEGV8/s1600/xmen39_cyclops.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="320" src="http://3.bp.blogspot.com/-1_6cSzO5hVg/VdFlmxuEO1I/AAAAAAAACMw/uh-UoaoEGV8/s320/xmen39_cyclops.jpg" width="320" /></a>

<a href="http://4.bp.blogspot.com/-hVMFBN4IJsM/VXCcQGFK2PI/AAAAAAAABkI/wu_VtNCqzsA/s1600/new_stereo_camera_mounted.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="240" src="http://4.bp.blogspot.com/-hVMFBN4IJsM/VXCcQGFK2PI/AAAAAAAABkI/wu_VtNCqzsA/s320/new_stereo_camera_mounted.jpg" width="320" /></a>
--

1. [How to clone jetbot: (recommended reading)](https://github.com/hhony/jetbot#how-to-clone-jetbot)
2. [Software Requirements](https://github.com/hhony/jetbot/wiki#software-requirements)
3. [Hardware Requirements](https://github.com/hhony/jetbot/wiki#hardware-requirements)
4. [Description of jetbot](https://github.com/hhony/jetbot/wiki#description-of-jetbot)
  1. [Pros of camera](https://github.com/hhony/jetbot/wiki#pros-of-ps3eye-as-sensor-platform)
  2. [Cons of camera](https://github.com/hhony/jetbot/wiki#cons-of-ps3eye-as-sensor-platform)
5. [Hardware Modification: (DIY, how to...)](https://github.com/hhony/jetbot/wiki/wiki:-hardware-modification)
6. 3D Printable Mount (link coming soon...)

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

__Note: This will build on either armv7 or x64.__ See [Software Requirements](https://github.com/hhony/jetbot/wiki#software-requirements) for more info on building on either platform.

More details:
* [Stereo Cyclops 1.1](http://hansbot.blogspot.com/2015/06/improved-stereo-camera.html)
