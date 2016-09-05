// Filename : Rocket.scad
// Version  : v1.0
// Modified : 3 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Rocket.
//////////////////////////////////////

$fn=50;
height=120;
diameter1=25;
diameter2=diameter1/2;
offset=diameter1/2+diameter2/2;
subRocket=.5;
difference()
{
    union()
    {
        cylinder(height, diameter1, diameter1-5);
        translate([0,0,height])cylinder(height*.6, diameter1-5, 0);
    }
    translate([offset,offset,-15])cylinder(height*subRocket,diameter2,diameter2-3);
    translate([offset,-offset,-15])cylinder(height*subRocket,diameter2,diameter2-3);
    translate([-offset,offset,-15])cylinder(height*subRocket,diameter2,diameter2-3);
    translate([-offset,-offset,-15])cylinder(height*subRocket,diameter2,diameter2-3);
    
}
translate([offset,offset,-15])subRocket(height*subRocket, diameter2);
translate([offset,-offset,-15])subRocket(height*subRocket, diameter2);
translate([-offset,offset,-15])subRocket(height*subRocket, diameter2);
translate([-offset,-offset,-15])subRocket(height*subRocket, diameter2);


module subRocket(s_height, s_diameter)
{
    difference()
    {
        cylinder(s_height,s_diameter,s_diameter-3);
        cylinder(s_height-5, s_diameter-2, s_diameter-3);
    }
}
