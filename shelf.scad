


use <myshapes.scad>
  
x = 96; 
y = 26; 
z = 42;
c = 7;
d = .75;
 
 w = x + 2; //with sides + 1/4 dado + 1/2 slides x 2  == > 1.5 + 1/2
 

fn = 50;
 
 bb();
//  


 module bb(){   
            
   %     for(i=[1, 5.5 ]) translate([0,0, 12*i])   rc(i==1? x/3 : w, y, d, 2);   //shelves
     
		for(i=[-4,-1.3, 1.3, 4]) translate([12*i,0, z/2]) c(d, y-2, z);  //sides
            
        for(i=[.75,   3.25 ]) translate([0, y/2-.5, 12*i])   c(w, d, 5);   //back
         
		for(i=[-1:1]) translate([x/3*i,i==0? 0:-y/3, z-d]) rc( x/3, 5, d, 2);   //upper
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

	 
	

