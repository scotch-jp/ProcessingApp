void iPhone16Pro(){
smooth();
fill(255);
icon1 = loadImage("wallpaper.png");
image(icon1,270,30,369,800);
icon1 = loadImage("battery.png");
image(icon1,580,42,30,30);
icon1 = loadImage("wifi.png");
image(icon1,558,46,20,20);
icon1 = loadImage("celler.png");
image(icon1,535,46,20,20);
fill(0);
rect(395,44,120,25,50);
fill(255);
rect(390,810,135,5,20);
text("BedTime",303,185);
}

void RockScreen(){
  icon1 = loadImage("wallpaper.png");
  image(icon1,270,30+move,369,800);
  icon1 = loadImage("battery.png");
  image(icon1,580,42+move,30,30);
  icon1 = loadImage("wifi.png");
  image(icon1,558,46+move,20,20);
  icon1 = loadImage("celler.png");
  image(icon1,535,46+move,20,20);
  fill(0);
  rect(395,44,120,25,50);
  fill(255);
  rect(390,810,135,5,20);
  textSize(15);
  text("fun mobile", 300, 62+move);
  textSize(80);
  // 現在の時刻を取得
  int h = hour();
  int m = minute();
  int day = day();
  String dateString = "August" + nf(day, 2) +"th";
  String timeString = nf(h, 2) + ":" + nf(m, 2);
  text(timeString, 363, 200);
  textSize(25);
  text(dateString, 390,130);
}
//void AppOpen(){
//  circle(100,100,500+n);
//}

void DarkMode(){
smooth();  
fill(0);
rect(270,30,369,800,60);
fill(255);
rect(395,810,135,5,20);
rect(395,44,120,25,50);
}

void YellowMode(){
smooth();  
fill(255,252,219);
rect(270,30,369,800,60);
fill(0);
rect(395,810,135,5,20);
rect(390,44,120,25,50);
}

void BlueMode(){
smooth();  
fill(210,236,249);
rect(270,30,369,800,60);
fill(255);
rect(395,810,135,5,20);
rect(390,44,120,25,50);
}

void GreenMode(){
smooth();  
fill(221,255,221);
rect(270,30,369,800,60);
fill(255);
rect(395,810,135,5,20);
rect(390,44,120,25,50);
}

void PurpleMode(){
  smooth();
  fill(210,209,255);
  rect(270,30,369,800,60);
  fill(255);
  rect(395,810,135,5,20);
  rect(390,44,120,25,50);
}
