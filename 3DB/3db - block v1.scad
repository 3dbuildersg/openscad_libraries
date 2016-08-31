
difference()
{
    color([1,0.5,0.2])translate([0,0,0]) linear_extrude(10) text("3D",size=30, true, $fn=80);
    translate([0,-5,2]) rotate([0,-10,0]) cube([18,18,10], $fn=80); 
}
color([1,1,1]) translate([17,0,0]) linear_extrude(5) text("Builder",size=30, true, $fn=80);
