///////////////////////////////////////////////////////////////////////////////
// Filename 	: SimpleWings.scad
// Main Module 	: Plane
// Sub-module 	: Wings
// Version  	: v1.0
// Category 	: Transportation
// Modified 	: 18 Sept 2016
// Author   	: Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for Plane.pptx.
//
// A SIMPLE PLANE
// 
///////////////////////////////////////////////////////////////////////////////
$fn=180;
Wing();
Wing(left=true);
//Rocket(100);
//Flap(20, 40, 120, 3);

module Wing(w1=20, w2=40, w_length=120, t1=3, left=false)
{	
	color("LightGreen")
	if(left==false) {
		Flap(w1, w2, -w_length, t1);
        translate([0,-w_length/2,0]) Rocket(w1);
	}	
	else {
	     Flap(w1, w2, w_length, t1);
         translate([0,w_length/2,0]) Rocket(w1);
	}
    
}

module Flap(f1,f2, f_length, t1=3)
{
    echo(f1, f2, f_length, t1);
    linear_extrude(t1) polygon([[-f1/2,0],[-f1/2, f_length/2], [f1/2, f_length/2], [f2/2,0]]);
}

module Rocket(length)
{
    d1=length*0.1;
    body=length*1.2;
    warhead=length*0.5;
    rotate([0,90,0])
    {
        cylinder(body, d1, d1, center=true);
        translate([0,0, body/2+warhead/2]) cylinder(warhead, d1, 0, center=true);
    }
       
    
    
}
//function computePoints(wingspan,left)=(left ? wingspan/2 : wingspan/-2);