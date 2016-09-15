$fn=80;
submarine();

module submarine()
{
	body();
	translate([10,0,40])mast();
}

module body(length=120)
{
	hull()
	{
		//rotate([0,90,0])cylinder(length, length*.2,length*.3, true);
		translate([length/2,0,0])sphere(length*.25, true);
		translate([-length/2,0,0])sphere(length*.2, true);

	}
}

module mast()
{
	cube([20,8,30],true);
}