# jetbot #
Jetson tk1 compatible stereo camera - nickname: stereo_cyclops

### how to clone jetbot: ###
This project has submodules, so you will have to clone it using the following command:

     git clone --recurse-submodules https://github.com/hhony/jetbot.git

To update a submodule:

     git submodule init; git submodule update

For more help on using submodules, see: 

     git submodule --help

### Requirements ###
This was built using ROS Indigo. Install ROS Indigo, and start with:

     roslaunch app robot.launch

To build this on the Jetson, with an ARM processor, you will have to build ROS from source. This requires python tools and a separate workspace that acts like `/opt/ros/indigo/share`. DO NOT USE `apt-get install ros-indigo-*` if you are going this route - it will not work. You will then have to remove one additional file after the above is working:

     rm jetbot/bsp/ros/CATKIN_IGNORE

Removing this file will allow you to build on the ARM process and link the forked version of `stereo_image_proc` into the `catkin_make` command. Again you will not be using the standard apt-get package route, so do not install them in parallel.

### Description of jetbot ###
This repo is a subtree started from of a larger project (called 'beast') which I worked on in early 2015. A few roboticists in the bay area got together to build a robot for a NASA challenge. I built a stereo camera from off-the-shelf parts, 3D printed models of the prototype, hardware synced the device, calibrated and added ROS node to the tree. In large part, my efforts were accomplished with the assistance of another teammate: Bruno Hexsel. 

The point of the project was to be able to build and off-the-shelf sensor for under $20. Bruno and I chose the cameras, baseline, field of view, and initial framerate. Then, I fine tuned the performance to use cuda on the jetson tk1 nvidia GPU (and neon vectors). This increased the update rate from 4Hz to about 15Hz. The effective range of the camera is about 1-5m with a 9cm baseline and the stock optics in PS3eye.

The camera is a very inexpensive PS3eye, which you can purchase on amazon for a few dollars from bulk stock. The driver for the module is uvcvideo. The driver can be modified for variable framerates from a config file, if you so desire, but you will have to build a custom linux kernel and include the uvcvideo driver as module. Since most pc's have cameras - it generally comes as part of the kernel.

For stereo vision, your bottleneck is generally not the camera speed - but is actually the algorithms. The types of algorithms I am referring are algorithms like: 
* [Block Based Matching (*BM*)](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.11.6390&rep=rep1&type=pdf)
* [Constant-Space Belief Propagation (*CSBP*)](http://www.cs.cityu.edu.hk/~qiyang/publications/cvpr-10-qingxiong-yang-csbp.pdf)
* [Random Sample Consensus (*RANSAC*)](http://www.cs.columbia.edu/~belhumeur/courses/compPhoto/ransac.pdf)

### Pros of PS3eye as sensor platform: ###
* It is dirt cheap!
  * You cannot buy a decent stereo camera off-the-shelf for under $300.
  * There are a lot of these left over in bulk stock from a few years ago.
  * In _the spirit of hacking_ is really the only other answer.
* The driver is the standard uvcvideo driver, which can be modified for variable framerates as high as 120fps.
  * The standard resolution is 640x480 @ 33fps. The resolution is 320x240 @ 120fps.
* It has a standard M-mount lense part that can be 3D printed (from grabcad) or purchased online.
* It runs out of the box, without cuda (but update rate will be slower).

### Cons of PS3eye as sensor platform: ###
* It requires a hardware modification to keep the camera frames in sync. 
  * It might be possible to do this in software, but for the amount of time you would spend vs. the benefits... the hardware modification is much cheaper and easier.
  * If you're looking for cheap and easy, you might just want to go buy a Bumblebee now!
* It has a rolling shutter... a global shutter would be the absolute best way to go, for sure. You get more noise with this camera because the image is written to the buffer in scans vs. a full dump.
* You need to work on getting the performance speed high enough to navigate or modify your navigation algorithm appropriately to accomodate this.

### Hardware Modification ###
__WIKI COMING SOON__

