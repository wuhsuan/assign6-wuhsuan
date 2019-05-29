class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class
    Cabbage (float x, float y){
    super(x,y);
  }
  
  
  void display(){  
      if(isAlive==true){
      image(cabbage, x, y);  
      }
    }
    
  void checkCollision(Player player){
    if(isAlive==true){
    if(isHit( x, y, w, h, player.x, player.y, player.w, player.h)){ 
      
        if(player.health < player.PLAYER_MAX_HEALTH){        
        isAlive=false;
        player.health ++;

        } 
      }
    }
  }
       
 	
}
