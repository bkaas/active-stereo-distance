#Active Stereoscopic Distance Measurement

Figure 1: Display of Concept
![display of concept](http://i.imgur.com/a6WHJRa.png)

Using simple trigonometry, a triangle can be constructed with the two cameras and the laser point as its verticies.  The distance to the laser point can then be determined from the median of the triangle.
To determine the inner angles of the triangle:

![equation](http://i.imgur.com/oIaLle3.jpg)

The device is held together using 3D printed parts and laser-cut acrylic.

![apparatus](http://i.imgur.com/V0C60wQ.png)

Its operation is managed by a Raspberry Pi Model B+ using a bash script titled scan.sh, with one input for the images' filenames.
Images are captured using fswebcam and two Microsoft Lifecam 3000-HD webcams.  The images are then processed in process.py.  Finally, the stepper motor turns the apparatus using stepper.py.

Sample output of mapping the interior of a room:
![room plot](http://i.imgur.com/aqwaQT4.jpg)