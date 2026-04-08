// week04-2 好玩的程式設計 for for 迴圈 + if 判斷
//Ctrl-N開新的視窗
void setup()  {
  size(600, 400);
}
void draw() {
  for (int y = 0; y < 400; y += 50) {
    for (int x = 0; x < 600; x += 50) {
      if (x < mouseX && mouseX < x+50) fill (#A00202);
      else if (y < mouseY && mouseY < y+50) fill(#A00202);
      else fill(#C2FAD3);//自己在Tool-色彩選擇器,挑色彩
      rect(x, y, 50, 50 );
    }
  }
}
