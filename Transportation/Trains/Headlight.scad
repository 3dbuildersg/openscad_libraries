// Filename : Headlight.scad
// Version  : v1.0
// Modified : 2 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Basic headlight
//////////////////////////////////////
use <..\Utilities\Shapes.scad>
$fn=50;

headlight();

module headlight(d1=20)
{
	ring(d1,d1*0.2);
	dome(d1);
}

