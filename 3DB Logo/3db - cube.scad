difference()
{
color ([0,0,0]) cube(35, true, $fn=100);

color ([1,0,0])
    translate([-12,-14,15]) 
        linear_extrude(10) text("3",size=30);
color ([0,1,0])
    translate([-15,-15,-15]) 
        rotate([90,0,0]) 
            linear_extrude(10) text("D",size=30);

color ([0,0,1])
    translate([15,-14,-15]) 
        rotate([90,0,90]) 
            linear_extrude(10) text("B",size=30);
}