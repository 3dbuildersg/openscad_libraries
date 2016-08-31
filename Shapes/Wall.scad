castle(20,120,120);

module castle(thick, height, length)
{
    wall(thick, height,length);
    //translate([length-thick,0,0])wall(thick, height,length);
    //translate([-110,0,0])wall(thick, height,length);
    //translate([0,110,0])rotate(90) wall(thick, height,length);
    //translate([0,-110,0])rotate(90) wall(thick, height,length);
    
}

module wall(thick, height, length)
{
    for(i=[0:length/40])
    {
        translate([0,0,height/2]) cube([thick,length,height],true);
    
        difference() 
        {
            union()
            {
                translate([thick/2,0,height]) cube([thick/2, length, 30],true);    
                translate([-thick/2,0,height]) cube([thick/2, length, 30],true);
            }
            for(i=[0:length/10])
                translate([0,-length/2+i*2*5,height+10]) cube([thick*1.5,5,5],true);    
        }   
    }    
}

