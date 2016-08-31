stepsize=5;

stairs(20);

module stairs(noOfSteps)
{
    for(i=[1:noOfSteps])
        translate([0,stepsize*(i-1),0]) cube([stepsize*2,stepsize,stepsize*i]);
}