// week12-1好玩的地鼠(有圖片)
//file-preference字型放大
PImage img;//圖片的變數 img
//先把老師[桌面]gopher.png拉到程式裡
void setup(){
  size (300, 300);//視窗大小
  img = loadImage("gopher.png");//讀入圖檔
}
void draw(){
  background(128);//灰色背景
  image(img, 0, 0, 100, 100);//畫出圖片
   //函式呼叫,有5個參數:(圖片, x, y, 寬, 高)
}
