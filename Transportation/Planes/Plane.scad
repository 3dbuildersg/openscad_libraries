// Filename 		: Plane.scad
// Main Module   	: Plane 
// Sub-module	: NONE
// Version  		: v1.0
// Category 		: Transportation
// Modified 		: 19 Sept 2016
// Author   		: Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for dimension parameters.
// These allow flexibilities in variant train's design.
///////////////////////////////////////////////////////////////////////////////

use <SimpleBody.scad>
use <SimpleWings.scad>
use <SimpleTail.scad>

$fn=150;

// Wings parameters
w1=30;
w2=50;
wingspan=170;

// Body parameters
body_length=150;
body_diameter=15;

// Tail parameters
t1=20;
t2=30;
tail_height=30;
/////////////////////////////////////////////

plane();

module plane()
{
	Body(body_length , body_diameter);
	translate([-w2/2,+body_diameter-5,0]) Wing(w1=w1,w2=w2,wingspan=wingspan,left=true);
	translate([-w2/2,-body_diameter+5,0]) Wing(w1=w1,w2=w2,wingspan=wingspan,left=false);
	translate([-body_length/4,0,10]) Tail(t1, t2, tail_height);
}



















