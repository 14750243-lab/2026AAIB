//week06-1好玩的程式設計
//File-Preference偏好設定,字型放大, 接續上週的 week05-5
int [][] b = new int [10][16];//Java 的 2D陣列
void setup(){
  size(800, 500);//視窗大小800 x 500
}
void draw(){
  background(255);//背景白色
  for (int i=0;i<10; i++){  // 左手 i 的for(迴圈)對應y座標
    for(int j=0; j<16; j++){ //右手j的for(迴圈)對應x座標
      if (b[i][j]==1) fill(#F5CBEF);//如果陣列有1,就放淡紫色
      else fill(255);//否則就放白色
      rect( j*50, i*50, 50, 50);// 小格子(右手)對應x座標, 左手對應y座標
    }
  }
}
void mousePressed(){
  int i = mouseY / 50, j = mouseX /50;//左手對應y座標,右手對應x座標
  b[i][j] = 1;//設成1,等一下會畫顏色
}
