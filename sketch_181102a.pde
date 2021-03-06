boolean isMenu = true;
boolean[] keys;
Menu menu = new Menu();
Player p1;
Player p2;

void setup(){
  background(225);
  size(800,600);
  p1 = new Player(50,height/2);
  p2 = new Player(width -50, height/2);

  keys = new boolean[8];
  for(int i=0; i < keys.length; i++){
    keys[i] = false;
  }
}

void draw(){
  if(isMenu){
    menu.render();
  } else{
    background(255);
  if(keys[0]){
    p1.moveY(-1);
  }
  if(keys[1]){
    p1.moveX(-1);
  }
  if(keys[2]){
    p1.moveY(1);
  }
  if(keys[3]){
    p1.moveX(1);
  }
  if(keys[4]){
    p2.moveY(-1);
  }
  if(keys[5]){
    p2.moveX(-1);
  }
  if(keys[6]){
    p2.moveX(1);
  }
  if(keys[7]){
    p2.moveY(1);
  }
    p1.render();
    p1.updateShots();
    p2.render();
    p2.updateShots();


  }


}

void mouseReleased(){
  if(isMenu){
    int result;
    result = menu.checkPress(mouseX, mouseY);
    if(result != -1){
      background(225);
      switch (result){
        case 1:
          isMenu = false;

          break;

        case 2:
          isMenu = false;
          break;

        case 3:
          isMenu = false;
          break;
      }
    }
  }
}


void keyPressed(){
  if(key=='w'){
    keys[0]=true;
  }
  if(key=='a'){
    keys[1]=true;
  }
  if(key == 's'){
    keys[2]=true;
  }
  if(key == 'd'){
    keys[3]=true;
  }

  if(keyCode == UP){
    keys[4]=true;
  }
  if(keyCode == LEFT){
    keys[5]=true;
  }
  if(keyCode == RIGHT){
    keys[6]=true;
  }
  if(keyCode == DOWN){
    keys[7]=true;
  }
}


void keyReleased(){
  if(key=='w'){
    keys[0]=false;
  }
  if(key=='a'){
    keys[1]=false;
  }
  if(key == 's'){
    keys[2]=false;
  }
  if(key == 'd'){
    keys[3]=false;
  }

  if(key == CODED && keyCode == UP){
    keys[4]=false;
  }
  if(key == CODED && keyCode == LEFT){
    keys[5]=false;
  }
  if(key == CODED && keyCode == RIGHT){
    keys[6]=false;
  }
  if(key == CODED && keyCode == DOWN){
   keys[7]=false;
 }

 if(key == 'e'){
   p1.shoot();
 }

 if(key == 'm'){
   p2.shoot();
 }



}
