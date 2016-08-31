
difference()
{
    color([1,0.6,0.1])translate([0,0,0]) linear_extrude(5) text("3D",size=30, true, $fn=80);
    translate([0,-5,2]) cube([17,17,0], $fn=80); 
}
color([1,1,1]) translate([17,0,0]) linear_extrude(5) text("BuilderSG",size=30, true, $fn=80);
