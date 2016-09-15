// Filename 		: Train.scad
// Main Module   	: Train 
// Sub-module	: NONE
// Version  		: v2.0
// Category 		: Transportation
// Modified 		: 7 Sept 2016
// Author   		: Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for dimension parameters.
// These allow flexibilities in variant train's design.
///////////////////////////////////////////////////////////////////////////////

$fa=200;

use <SimpleCabin.scad>
use <SimpleEngine.scad>
use <SimpleBase.scad>

// Cabin parameters
l1 = 70;   	// Length of Cabin.
b  = 30;   	// Breadth of Cabin.
h1 = 50;		// Height of Cabin.
t1 = 3;		// Thickness of Cabin wall.

// Engine parameters.
l2 = 100;	// Length of Engine.
h2 = b;		// Breadth of Engine.

// Wheel parameters
d  = 15;		// Diameter of wheel.

// Instantiate train object.
Train();  	// Train (default)

///////////////////////////////////////////////////////////////////////////////
module Train()
{
	translate([-l1/2,0,h1/2]) Cabin(l1,b,h1,t1);
	translate([+l2/2,0,h2/2]) Engine(l2,b,h2);
	translate([-l1/2+l2/2,0,-h2*0.1]) Base(l1+l2,b*1.2);
}
