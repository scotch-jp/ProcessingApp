PImage wallpaper;
PImage icon1;
PFont font;
PFont font2;
int i;
int score;
int type;
int select1 = 3;
int select2 = 3;
int select3 = 3;
int select4 = 3;
int DInBed=0;
int DInBed2=0;
int InBed;
int InBed2;
int n = 10;
int h =10;
int u1=255;
int u2=255;
int u3=255;//確認ボタンの色
int u4=0;
int u5=0;
int tall;
int weight;
int displayCenterX=320;
int move;

int currentScreen = -1;
int subcurrentScreen = 0;


void setup() {
  font = createFont("San Francisco", 20);
  font2 = createFont("クレー", 20);
  size(900, 900);
  background(100);
  //iPhone16Pro();

  ////app.incon
  //rect(700, 700, 70, 70, 15);

  //BedTime();
  //StudyEdit();
  //Lovemaster();
}

void draw() {
  // 現在の時刻を取得
  int h = hour();
  int m = minute();
  // 時刻を整形して表示
  String timeString = nf(h, 2) + ":" + nf(m, 2);

  if (currentScreen == -1) {
    RockScreen();
  }
  if (currentScreen == 0) {
    textSize(12);
    iPhone16Pro();
    BedTime();
    Lovemaster();
    textSize(22);
    fill(255);
    text(timeString, 310, 67);
  } else if (currentScreen == 1) {
    BedTimeAction0();
  } else if (currentScreen == 11) {
    BedTimeAction1();
  } else if (currentScreen == 12) {
    BedTimeAction2();
  } else if (currentScreen == 121) {
    BedTimeAction21();
    select1 = 0;
    if (select1 != 3 && select2 != 3 && select3 != 3 && select4 != 3) {
      BedTimeAction22();
    }
  } else if (currentScreen == 122) {
    BedTimeAction21();
    select1 = 1;
    if (select1 != 3 && select2 != 3 && select3 != 3 && select4 != 3) {
      BedTimeAction22();
    }
  } else if (currentScreen == 123) {
    BedTimeAction21();
    select2 = 0;
    if (select1 != 3 && select2 != 3 && select3 != 3 && select4 != 3) {
      BedTimeAction22();
    }
  } else if (currentScreen == 124) {
    BedTimeAction21();
    select2 = 1;
    if (select1 != 3 && select2 != 3 && select3 != 3 && select4 != 3) {
      BedTimeAction22();
    }
  } else if (currentScreen == 125) {
    BedTimeAction21();
    select3 = 0;
    if (select1 != 3 && select2 != 3 && select3 != 3 && select4 != 3) {
      BedTimeAction22();
    }
  } else if (currentScreen == 126) {
    BedTimeAction21();
    select3 = 1;
    if (select1 != 3 && select2 != 3 && select3 != 3 && select4 != 3) {
      BedTimeAction22();
    }
  } else if (currentScreen == 127) {
    BedTimeAction21();
    select4 = 0;
    if (select1 != 3 && select2 != 3 && select3 != 3 && select4 != 3) {
      BedTimeAction22();
    }
  } else if (currentScreen == 128) {
    BedTimeAction21();
    select4 = 1;
    if (select1 != 3 && select2 != 3 && select3 != 3 && select4 != 3) {
      BedTimeAction22();
    }
  } else if (currentScreen == 129) {
    BedTimeAction3();
  } else if (currentScreen == 20) {
    BedTimeRecord0();
    BedTimeRecord01();
    BedTimeRecord10();
  } else if (currentScreen == 21) {
    BedTimeRecord0();
    BedTimeRecord02();
    BedTimeRecord11();
  } else if (currentScreen == 22) {
    BedTimeRecord20();
    BedTimeRecord21();
    BedTimeRecord22();
    BedTimeAction33();
  } else if (currentScreen == 3) {
    LoveAction0();
  } else if (currentScreen == 31) {
    LoveAction1();
    u1=255;
    u2=255;
    u3=255;
    u4=0;
  } else if (currentScreen == 311) {
    LoveAction11();
  } else if (currentScreen == 312) {
    LoveAction12();
  } else if (currentScreen == 32) {
    LoveAction2();
    LoveAction21();
  } else if (currentScreen == 34) {
    LoveAction4();
  }
  else if (currentScreen == 35){
    LoveAction41();
  }
}

void mousePressed() {
  // BedTimeアイコンが押されたらBedTime画面へ
  if (currentScreen == 0 &&
    mouseX >= 290 && mouseX <= 360 &&
    mouseY >= 100 && mouseY <= 170
    ) {
    currentScreen = 1;
  }
  // ホームバーでホームに戻る
  if (mouseX >= 395 && mouseX <= 530 &&
    mouseY >= 810 && mouseY <= 815
    ) {
    currentScreen = 0;
  }
  if (currentScreen == 1 &&
    mouseX >= 385 && mouseX <= 535 &&
    mouseY >= 630 && mouseY <= 670
    ) {
    currentScreen = 11;
  }
  if (currentScreen == 11 &&
    mouseX >= 300 && mouseX <= 450 &&
    mouseY >= 170 && mouseY <= 245
    ) {
    currentScreen = 12;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 315 && mouseX <= 445 &&
    mouseY >= 385 && mouseY <= 435
    ) {
    currentScreen = 121;
    subcurrentScreen = 1;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 470 && mouseX <= 600 &&
    mouseY >= 385 && mouseY <= 435
    ) {
    currentScreen = 122;
    subcurrentScreen = 1;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 315 && mouseX <= 445 &&
    mouseY >= 475 && mouseY <= 525
    ) {
    currentScreen = 123;
    subcurrentScreen = 1;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 470 && mouseX <= 600 &&
    mouseY >= 475 && mouseY <= 525
    ) {
    currentScreen = 124;
    subcurrentScreen = 1;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 315 && mouseX <= 445 &&
    mouseY >= 565 && mouseY <= 615
    ) {
    currentScreen = 125;
    subcurrentScreen = 1;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 470 && mouseX <= 600 &&
    mouseY >= 565 && mouseY <= 615
    ) {
    currentScreen = 126;
    subcurrentScreen = 1;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 315 && mouseX <= 445 &&
    mouseY >= 655 && mouseY <= 705
    ) {
    currentScreen = 127;
    subcurrentScreen = 1;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 470 && mouseX <= 600 &&
    mouseY >= 655 && mouseY <= 705
    ) {
    currentScreen = 128;
    subcurrentScreen = 1;
  }
  if (currentScreen == 12 || subcurrentScreen == 1 &&
    mouseX >= 380 && mouseX <= 530 &&
    mouseY >= 740 && mouseY <= 790
    ) {
    currentScreen = 129;
    subcurrentScreen = 0;
  }
  if (currentScreen == 129 &&
    mouseX >= 385 && mouseX <= 535 &&
    mouseY >= 630 && mouseY <= 670
    ) {
    currentScreen = 11;
    select1 = 3;
    select2 = 3;
    select3 = 3;
    select4 = 3;
  }
  if (currentScreen == 11 &&
    mouseX >= 465 && mouseX <= 615 &&
    mouseY >= 170 && mouseY <= 245
    ) {
    currentScreen = 20;
  }
  if (currentScreen == 20 &&
    mouseX >= 300 && mouseX <= 590 &&
    mouseY >= 305 && mouseY <= 635
    ) {
    DInBed = InBed;
    currentScreen = 21;
  }
  if (currentScreen == 21 &&
    mouseX >= 300 && mouseX <= 590 &&
    mouseY >= 305 && mouseY <= 635 && key == ENTER
    ) {
    currentScreen = 22;
    DInBed2 = InBed2;
  }
  if (currentScreen == 22 &&
    mouseX >= 385 && mouseX <= 535 &&
    mouseY >= 630 && mouseY <= 670
    ) {
    currentScreen = 11;
    select1 = 3;
    select2 = 3;
    select3 = 3;
    select4 = 3;
  }
  if (currentScreen == 0 &&
    mouseX >= 380 && mouseX <= 450 &&
    mouseY >= 100 && mouseY <= 170
    ) {
    currentScreen = 3;
  }
  if (currentScreen == 3 &&
    mouseX >= 385 && mouseX <= 535 &&
    mouseY >= 630 && mouseY <= 670
    ) {
    currentScreen = 31;
  }
  if (currentScreen == 31 &&
    mouseX >= 300 && mouseX <= 450 &&
    mouseY >= 170 && mouseY <= 245
    ) {
    currentScreen = 311;
  }
  if (
    mouseX >= 300 && mouseX <= 350 &&
    mouseY >= 74 && mouseY <= 86 ) {
    currentScreen = 31;
  }
  if (currentScreen == 311 &&
    mouseX >= 310 && mouseX <= 330 &&
    mouseY >= 460 && mouseY <= 480) {
    u1=0;
    u2=110;
    u3=255;
    fill(0);
    u4=1;
  }
  if (currentScreen == 311 && u5==1 &&
    305<= mouseX && mouseX<=605 && 140<= mouseY && mouseY <= 440) {
    currentScreen = 312;
  }
  if (currentScreen == 312 &&
    mouseX >= 380 && mouseX <= 535 &&
    mouseY >= 759 && mouseY <= 790 ) {
    currentScreen = 31;
    type=0;
    u5=0;
  }
  if (currentScreen == 31 &&
    mouseX >= 300 && mouseX <= 450 &&
    mouseY >= 255 && mouseY <= 330 ) {
    currentScreen = 32;
  }
  if (currentScreen == 31 &&
    mouseX >= 465 && mouseX <= 615 &&
    mouseY >= 255 && mouseY <= 330 ) {
    currentScreen = 34;
  }
  if (currentScreen == 34 &&
    mouseX >= 310 && mouseX <= 330 &&
    mouseY >= 255 && mouseY <= 275 ) {
    u1=0;
    u2=110;
    u3=255;
    fill(0);
    u4=1;
  }
  if (currentScreen == 34 &&
    mouseX >= 535 && mouseX <= 605 &&
    mouseY >= 65 && mouseY <= 90 ) {
      currentScreen = 35;
  }
}
