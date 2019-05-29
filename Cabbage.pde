class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class
    Cabbage (float x, float y){
    super(x,y);
  }
  
  
  void display(){  
      image(cabbage, x, y);  
    }
    
  void checkCollision(Player player){
    if(isHit(this.x, this.y, w, h, player.x, player.y, player.w, player.h)){
      if(player.health < player.PLAYER_MAX_HEALTH){
      player.health ++;
      isAlive=false;   
      }
    }
  }
  
	/*
	Code for Reference:

		for(int i = 0; i < cabbageX.length; i++){

			// Display Cabbage
			image(cabbage, cabbageX[i], cabbageY[i]);

			// Check collision with player
			if(player.health < player.PLAYER_MAX_HEALTH
			&& isHit(cabbageX[i], cabbageY[i], SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){

				player.health ++;
				cabbageX[i] = cabbageY[i] = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

			}

		}

	*/
}
