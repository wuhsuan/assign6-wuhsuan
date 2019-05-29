class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class
  
  float TRIGGERED_SPEED_MULTIPLIER = 5;
  float speed = 1f;
  

  Dinosaur(float x , float y){    
      super(x,y);
   }
   
   void update(){
         
     x+=speed;
     
     if( x+w > width || x<0 ) { speed*=-1; TRIGGERED_SPEED_MULTIPLIER*=-1; }
          
     if(player.y == y && player.x > x && speed>0  ){                                 
        if( player.y == y && player.x < x && speed<0 ){
       
          x+=TRIGGERED_SPEED_MULTIPLIER;
           
        }else{
          x+=speed;
        }
     }
   }
   
   void display(){
     int direction = (speed > 0)? RIGHT:LEFT;
     
     pushMatrix();
     translate(x,y);
     if(direction==RIGHT){
       scale(1,1);
       image(dinosaur,0,0,w,h);
     }else{
       scale(-1,1);
       image(dinosaur,-w,0,w,h);      
     }
    popMatrix();
   }
	
}
