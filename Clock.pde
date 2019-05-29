class Clock extends Item{
  
  Clock (float x, float y) {
    super (x,y);
  }
  
  void display(){
    if(isAlive==true){
    image(clock,x,y);
    }
  }
  
  void checkCollision(Player player){
    if(isAlive==true){
      if(isHit(x,y, w, h, player.x, player.y, player.w, player.h)){ 
      
        isAlive=false;
    
        addTime(CLOCK_BONUS_SECONDS);
     }
    }
  }
  
 
    
	
}
