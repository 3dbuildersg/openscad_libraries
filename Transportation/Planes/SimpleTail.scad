///////////////////////////////////////////////////////////////////////////////
// Filename 		: SimpleTail.scad
// Main Module   	: Plane
// Sub-module	: tail
// Version  		: v1.0
// Category 		: Transportation
// Modified 		: 18 Sept 2016
// Author   		: Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for Plane.pptx.
//
// A SIMPLE PLANE
// 
///////////////////////////////////////////////////////////////////////////////

Tail();

module Tail(t1=20, t2=40, h1=50, thick=3)
{	
	data=[[0,0],[0, h1], [t1,h1], [t2,0]];	
	translate([-t2/2,thick/2,0]) color("LightGreen") rotate([90,0,0])linear_extrude(thick) polygon(data);
}

