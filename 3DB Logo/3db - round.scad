
difference()
{
    3db();
    
    translate([0,0,-10]) 
    difference()
    {
        sphere(30, true, $fn=100);
        sphere(20, true, $fn=100);
    }
}

module 3db()
{    
    union()
    {
        translate([-13,-6,3]) linear_extrude(10) text("3DB",size=30, true);
        //translate([18,0,0]) linear_extrude(10) text("D",size=30);
        //translate([42,0,0]) linear_extrude(10) text("B",size=30);
    }
}