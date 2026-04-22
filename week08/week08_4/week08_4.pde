//week08-4會飛的氣球
//Ctrl+N 新視窗
void setup() {
  size(500, 500);
  img = loadImage("balloon.png");
}
PImage img;//圖片宣告(要再拉一次ballon.png到程式裡)
float []x = new float[100];//Java陣列
float []y = new float[100];
float []s = new float[100];
int N = 0;//現在有0個氣球
float s2 = 0.1;
void draw() {
  background(255);//白色背景
  if (mousePressed) {
    s2 *= 1.05;
    image(img, mouseX-(96*s2)/2, mouseY-(132*s2), 96*s2, 132*s2);
  } else s2 = 0.1;
  for (int i=0; i<N; i++) {//畫很多氣球
    image(img, x[i], y[i], 96*s[i], 132*s[i]);
    if (y[i]>0)y[i]-= 1;
  }
}//注意要再拉一次balloon,png到程式裡
void mouseReleased() {
  s[N] = s2;
  x[N] = mouseX-(96*s2)/2;//X座標
  y[N] = mouseY-(132*s2);//y座標
  N++;
}
//image(img, mouseX-96/2, mouseY-132, 96, 132);
//注意,要要再拉一次balloon.png到程式裡
