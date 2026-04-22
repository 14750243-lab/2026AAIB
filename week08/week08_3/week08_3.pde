//week08-3會飛的氣球
//Ctrl+N 新視窗
void setup(){
  size(500, 500);
  img = loadImage("balloon.png");
}
PImage img;//圖片宣告(要再拉一次ballon.png到程式裡)
float x, y;//變數宣告
float s = 0.1 ;
void draw(){
  background(255);//白色背景
  if(mousePressed){
    s *= 1.1;
    image(img, mouseX-(96*s)/2, mouseY-(132*s), 96*s, 132*s);
  }else{
    image(img, x, y, 96*s, 132*s);
    y--;
  }
}//注意要再拉一次balloon,png到程式裡
void mouseReleased(){
  x = mouseX-(96/2)/2;//X座標
  y = mouseY-(132*s);//y座標
}
  //image(img, mouseX-96/2, mouseY-132, 96, 132);
//注意,要要再拉一次balloon.png到程式裡
