


use <myshapes.scad>
  
x = 36; 
y = 16; 
z = 78;
c = 7;
d = .75;
 
 w = x + 2; //with sides + 1/4 dado + 1/2 slides x 2  == > 1.5 + 1/2
 

fn = 50;
 
 bb();
//  


 module bb(){   
            
        for(i=[1, 4 ,5.5, 6.5]) translate([0,0, 12*i])   rc(w, y, d, 2);   //shelves
     
		for(i=[-1,1]) translate([w/2*i,0, z/2]) c(d, y, z);  //sides
            
        
        for(i=[1:4]) translate([0,0, 9.5+6.5*i])   box(x, y, 6);  //drawers
        for(i=[0:1]) translate([0,0, 40.75+4*i])   box(x, y, 3.5);  //drawers
 }
 
 module box(w, l, h){
     difference(){
            c(w, l, h);
            translate([0,0, d])   c(w-d*2, l-d*2, d);
     } 
 }
  

    module holes(d, h, x, ff = fn){ 
        
		for(i=[-1,1]) translate([x/2*i,0, h/2]) rotate([0, 0, 30]) cy( d, h, ff); 
        
        
}

	 
	

