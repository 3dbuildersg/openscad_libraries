// Filename : Plane.scad
// Version  : v1.0
// Modified : 5 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Plane
//////////////////////////////////////

$fn=150;
plane();

module plane(body_length=100, wing_span=90)
{
	body(body_length);
	translate([-14,0,0])wings(wing_span);
	translate([-30,0,10])tail();
}

module body(length=100)
{
	translate([0,0,0])rotate([0,90,0])cylinder(h=length*.8, d1=15, d2=18, center=true);
	translate([length/2,0,0])rotate([0,90,0])cylinder(h=length*.2, d1=18, d2=0, center=true);
}

module wings(span)
{
	difference()
	{
		cube([span/3,span,5], true);
		translate([25,+20,0])rotate([0,-15,+20])cube([span/3,span,15], true);
		translate([25,-20,0])rotate([0,-15,-20])cube([span/3,span,15], true);
	}
}

module tail()
{
	difference()
	{
		cube([10,3,20], true);
		translate([8,0,5])rotate([0,-20,0])cube([10,3,20], true);
	}
}