// Filename : Robot-2.scad
// Version  : v2.0
// Modified : 3 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Basic car frame. (Base class)
//////////////////////////////////////
$fn=60;
robot();

module robot()
{
    translate([0,0,60])head();
    translate([0,0,50])neck();
    torso();
    translate([0,-30,5])arm();
    translate([0,+30,5])arm();
    translate([0,-20,-60]) hip();
    translate([0,+20,-60]) hip();
    //legs();
}

//////////////////////////////////////////////////////////
// HEAD
//////////////////////////////////////////////////////////
module head(length=20, breadth=20, height=20)
{   
    color("Lime") minkowski()
    {
        cube([length-2, breadth-2, height-2],true);
        rotate([0,-90,0]) cylinder(2,2,2);
    }
    translate([length/2,-breadth/3,height/4]) rotate([0,90,0])eye();
    translate([length/2,+breadth/3,height/4]) rotate([0,90,0])eye();
    translate([0,+breadth/2,0]) rotate([0,90,0]) ear(5, true);
    translate([0,-breadth/2,0]) rotate([0,90,0]) ear(5, false);
    translate([length/2,0,0]) rotate([0,90,0]) nose();      
    translate([length/2,0,-height/3]) rotate([0,90,0]) mouth(3, breadth);
    
        //translate([0,-15,0]) rotate([90,0,0])cylinder(10,4,3, true);
}
module eye(size=3)
{
    color("Yellow")cylinder(size,size,size, true);
    color("Black")cylinder(size*1.5,size*.7,size*.7, true);
}
module ear(size=3, left=true)
{
    //difference()
    {
        color("Purple") cylinder(size*0.5,size,size, true);
        if(left)
            translate([0,-size,0]) color("Purple") cube([size*2, size*2, size*0.5], true);
        else
            translate([0,size,0]) color("Purple") cube([size*2, size*2, size], true);
    }    
}
module nose(size=3)
{
    color("SkyBlue") cylinder(8,size,size*.8, true);
}
module mouth(size=3, breadth = 20)
{
    color("Red") hull ()
    {
        translate([0,+breadth/6,0]) cylinder(size, size, size, true);
        translate([0,-breadth/6,0]) cylinder(size, size, size, true);
    }
}
//////////////////////////////////////////////////////////
// NECK
//////////////////////////////////////////////////////////
module neck(size=5)
{
      color("Red") cylinder(size*2,size,size, true);
}

//////////////////////////////////////////////////////////
// TORSO
//////////////////////////////////////////////////////////
module torso(length=50, breadth=15, height=50)
{
    color("Blue") hull()
    {
        translate([0,0,+height/2])rotate([90,0,0]) cylinder(length,breadth,breadth, true, $fn=80);
        translate([0,0,-height/2])rotate([90,0,0]) cylinder(length*0.7, breadth*0.5,breadth*0.5, true, $fn=80);
    }
}
//////////////////////////////////////////////////////////
// ARMS
//////////////////////////////////////////////////////////
module arm(length=10, breadth=10, height=25)
{
    color("Green") hull()
    {
        translate([0,0,+height*3/4])rotate([90,0,0]) cylinder(length,breadth,breadth, true, $fn=80);
        translate([0,0,-height*3/4])rotate([90,0,0]) cylinder(length*0.8, breadth*0.8,breadth*0.8, true, $fn=80);
    }
//    color("LightGreen") hull()
//    {
//        translate([0,0,+height/2])rotate([90,0,0]) cylinder(length,breadth,breadth, true, $fn=80);
//        translate([0,0,-height/2])rotate([90,0,0]) cylinder(length*0.8, breadth*0.8,breadth*0.8, true, $fn=80);
//    }
}
//////////////////////////////////////////////////////////
// HIPS
//////////////////////////////////////////////////////////
module hip(length=10, breadth=10, height=40)
{
    color("Pink") hull()
    {
        translate([0,0,+height*3/4])rotate([90,0,0]) cylinder(length,breadth,breadth, true, $fn=80);
        translate([0,0,-height*3/4])rotate([90,0,0]) cylinder(length*0.8, breadth*0.8,breadth*0.8, true, $fn=80);
    }
    
}
//////////////////////////////////////////////////////////
// LEGS
//////////////////////////////////////////////////////////
module legs()
{
}
//////////////////////////////////////////////////////////
