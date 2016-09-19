///////////////////////////////////////////////////////////////////////////////
// Filename 	  	: SimpleWings.scad
// Main Module 	: Plane
// Sub-module 	: Wings
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
$fn=180;
Wing();
//Wing(left=true);

module Wing(w1=20, w2=40, wingspan=120, t1=3, left=false)
{	
//	offset=computePoints(wingspan,left);
//	data=[[0,0],[0, offset], [w1,offset], [w2,0]];	
	color("Beige")
	if(left==false) {
		translate([-w2/2,0,-t1/2]) {
            rotate([+30,0,0])linear_extrude(t1) polygon([[0,0],[0, wingspan/-2], [w1,wingspan/-2], [w2,0]]);
            rotate([-30,0,0])linear_extrude(t1) polygon([[0,0],[0, wingspan/-2], [w1,wingspan/-2], [w2,0]]);
        }
	}	
	else {
		translate([-w2/2,0,-t1/2]) {
            rotate([+30,0,0])linear_extrude(t1) polygon([[0,0],[0, wingspan/2], [w1,wingspan/2], [w2,0]]);
            rotate([-30,0,0])linear_extrude(t1) polygon([[0,0],[0, wingspan/2], [w1,wingspan/2], [w2,0]]);
    }
	}
	
}

//function computePoints(wingspan,left)=(left ? wingspan/2 : wingspan/-2);