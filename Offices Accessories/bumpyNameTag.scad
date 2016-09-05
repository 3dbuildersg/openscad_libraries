BumpyNameTag("Faith Ong", 12, 0.55, 1.2);

module BumpyNameTag(name, fontsize, spread, jump)
{
    fonttype="Impact:style Italic";
    //translate([0,20,0]) linear_extrude(5) text(name,size=fontsize, true, $fn=80);
    for(i=[0:len(name)])
    {
        //color([255,0,0])
        if(i%2==0)
        {
            color([255,0,0])
            translate([i*fontsize*spread,jump,0]) 
                linear_extrude(5) text(name[i],size=fontsize, font=fonttype, true, $fn=80);
        }
        else
        {   
            color([0,255,0])
            translate([i*fontsize*spread,-jump,0]) 
                linear_extrude(5) text(name[i],size=fontsize,font =fonttype, true, $fn=80);
        }
    }
    //translate([0,-2,0])cube([fontsize*len(name)*spread+2, fontsize+2, 2]);
}