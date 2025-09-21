void BedTime(){
//BedTime.app
fill(255);
rect(290,100,70,70,15);
icon1 = loadImage("bedicon.png");
image(icon1,295,105,60,60);
fill(255);
text("BedTime",303,185);
}

void BedTimeAction0(){
  DarkMode();
  fill(255);
  textFont(font2);
  textSize(30);
  text("ようこそ",397,200);
  text("BedTimeへ",383,250);
  icon1 = loadImage("bed.png");
  image(icon1,380,300,150,150);
  textFont(font);
  textSize(12);
  text("このアプリケーションは",383,500);
  text("あなたの睡眠を分析し、睡眠ライフをサポートします。",312,520);
  fill(0,114,255);
  rect(385,630,150,40,15);
  fill(255);
  textSize(18);
  text("はじめる",425,657);

}

void BedTimeAction1(){
  DarkMode();
  textFont(font2);
  textSize(40);
  text("BedTime",300,150);
  //睡眠の快適度を計測する
  fill(58,157,63);
  rect(300,170,150,75,15);
  fill(255);
  textSize(12);
  text("睡眠の快適度を計測する",310,193);
  icon1 = loadImage("graph.png");
  image(icon1,395,190,50,50);
  //睡眠時間を計測する
  fill(103,58,157);
  rect(465,170,150,75,15);
  fill(255);
  textSize(12);
  text("睡眠時間を計測する",475,193);
  icon1 = loadImage("clock.png");
  image(icon1,565,193,50,50);
}

void BedTimeAction2(){
  DarkMode();
  textFont(font2);
  textSize(20);
  text("-睡眠の快適度を計測する-",335,150);
  icon1 = loadImage("graph.png");
  image(icon1,395,170,120,120);
  textSize(15);
  text("これらの質問に答えてください",350,320);
  text("Q.最近夢をよく見ますか?",290,370);
  text("Q.最近寝心地はどうですか?",290,460);
  text("Q.最近寝起きの様子はどうですか?",290,550);
  text("Q.最近の室温はどんな感じですか?",290,640);
  fill(0,114,255);
  for (int i = 0; i < 4; i++) {
    float startY = 385 + i * 90; // Y座標を90ずつずらす
    rect(315,startY,130,50,15);
  }
  for (int i = 0; i < 4; i++) {
    float startY = 385 + i * 90; // Y座標を90ずつずらす
    rect(470,startY,130,50,15);
  }
  fill(255);
  textSize(18);
  text("はい",360,418);
  text("いいえ",505,418);
  text("良い",360,505);
  text("悪い",515,505);
  text("すっきり",345,597);
  text("いまいち",500,597);
  text("快適",360,687);
  text("微妙",515,687);
  //rect(315,385,130,50,15);
  //rect(315,475,130,50,15);
  //rect(315,565,130,50,15);
  //rect(315,655,130,50,15);
  //rect(470,385,130,50,15);
  //rect(470,475,130,50,15);
  //rect(470,565,130,50,15);
  //rect(470,655,130,50,15);
}

void BedTimeAction21(){
  BedTimeAction2();
  if (select1 == 0){
  fill(255);
  rect(315,385,130,50,15);
  fill(0,114,255);
  text("はい",360,418);
  }
  if (select1 == 1){
  fill(255);
  rect(470,385,130,50,15);
  fill(0,114,255);
  text("いいえ",505,418);
  }
  if (select2 == 0){
  fill(255);
  rect(315,475,130,50,15);
  fill(0,114,255);
  text("良い",360,505);
  }
  if (select2 == 1){
  fill(255);
  rect(470,475,130,50,15);
  fill(0,114,255);
  text("悪い",515,505);
  }
  if (select3 == 0){
  fill(255);
  rect(315,565,130,50,15);
  fill(0,114,255);
  text("すっきり",345,597);
  }
  if (select3 == 1){
  fill(255);
  rect(470,565,130,50,15);
  fill(0,114,255);
  text("いまいち",500,597);
  }
  if (select4 == 0){
  fill(255);
  rect(315,655,130,50,15);
  fill(0,114,255);
  text("快適",360,687);
  }
  if (select4 == 1){
  fill(255);
  rect(470,655,130,50,15);
  fill(0,114,255);
  text("微妙",515,687);
  }
}

void BedTimeAction22(){
  BedTimeAction21();
  fill(0,114,255);
  rect(380,740,150,50,15);
  fill(255);
  text("結果を見る",410,770);
}

void BedTimeAction3(){
  DarkMode();
  BedTimeAction31();
  textSize(20);
  text("あなたの睡眠の快適度は",335,150);
  text("です",540,270);
  textSize(60);
  text(score,370,270);
  text("%",490,270);
  BedTimeAction32();
  BedTimeAction33();
}

void BedTimeAction31(){
  score = (50-select1*50)+(25-select2*25)+(13-select3*13)+(12-select4*12);
}

void BedTimeAction32(){
  if (score<26){
    textSize(12);
    text("あなたはあまり良い睡眠習慣を送れているとは言えません。",300,330);
    text("睡眠環境の見直しやルーティーンの改善が勧められます。",300,350);
    icon1 = loadImage("low.png");
    image(icon1,400,380,120,120);
    icon1 = loadImage("download.png");
    image(icon1,560,50,40,40);
  }
  if (26<score){
    if (score<36){
    textSize(12);
    text("あなたの睡眠習慣はまだまだ改善の余地があるようです。",300,330);
    text("睡眠時間をもっと確保したり、",300,350);
    text("身体の調子を整えることが勧められます。",300,370);
    icon1 = loadImage("mid.png");
    image(icon1,400,380,120,120);
    icon1 = loadImage("download.png");
    image(icon1,560,50,40,40);
  }
    if (36<score){
     if (score<51){
    textSize(12);
    text("あなたの睡眠習慣は悪くはないようです。",300,330);
    text("少しの改善で最高のパフォーマンスを得る事ができます。",300,350);
    icon1 = loadImage("high.png");
    image(icon1,400,380,120,120);
    icon1 = loadImage("download.png");
    image(icon1,560,50,40,40);
  }
  }
    if (51<score){
      if (score<76){
      textSize(12);
    text("あなたの睡眠習慣はかなり良いようです。",300,330);
    text("基本的なパフォーマンスを十分得られています。",300,350);
    icon1 = loadImage("max.png");
    image(icon1,400,380,120,120);
    icon1 = loadImage("download.png");
    image(icon1,560,50,40,40);
  }
  if (76<score){
  textSize(12);
    text("あなたの睡眠習慣は十分良いようです。",300,330);
    text("最高のパフォーマンスを今後を得る事が",300,350);
    text("できるように継続しましょう。",300,370);
    icon1 = loadImage("maxz.png");
    image(icon1,400,380,120,120);
    icon1 = loadImage("download.png");
    image(icon1,560,50,40,40);
  }
  }
  }
  }

void BedTimeAction33(){
  fill(0,114,255);
  rect(385,630,150,40,15);
  fill(255);
  textSize(18);
  text("一覧に戻る",420,657);
}

void BedTimeRecord0(){
  DarkMode();
  textFont(font2);
  textSize(20);
  text("-睡眠時間を計測する-",335,150);
  icon1 = loadImage("clock.png");
  image(icon1,395,170,120,120);
  textSize(15);
}

void BedTimeRecord01(){
  text("あなたは何時に寝ましたか?",350,320);
}

void BedTimeRecord02(){
  text("あなたは何時に起きましたか?",350,320);
}

void BedTimeRecord10(){
  text("選択された時刻",405,690);
  text("21:00",435,365);
  text("22:00",280,505);
  text("23:00",435,645);
  text("00:00",590,505);
  fill(188);
  circle(455,500,250);
  fill(0);
  circle(455,500,230);
  icon1 = loadImage("bed.png");
  image(icon1,380,420,150,150);
  float distance = dist(mouseX, mouseY, 455, 500);
  if(118< distance && distance <125){
    fill(255,165,0);
    circle(mouseX,mouseY,12);
  }
  if(375<mouseY && mouseY<395.83){
    fill(255,165,0);
    if(445<mouseX && mouseX<465){
    text("21:00",mouseX-20,mouseY-10);
    textSize(45);
    text("21:00",395,745);
    InBed = 0;
    }
    else if(mouseX<450){
      text("21:10",mouseX-20,mouseY-10);
      textSize(45);
      text("21:10",395,745);
      InBed = 1;
    }
    else{
      text("00:50",mouseX-20,mouseY-10);
      textSize(45);
      text("00:50",395,745);
      InBed = 23;
    }
  }
  if(395.83<mouseY && mouseY<416.66){
    fill(255,165,0);
    if(mouseX<455){
      text("21:20",mouseX-20,mouseY-10);
      textSize(45);
      text("21:20",395,745);
      InBed = 2;
    }
    else{
      text("00:40",mouseX-20,mouseY-10);
      textSize(45);
      text("00:40",395,745);
      InBed = 22;
    }
  }
  if(416.66<mouseY && mouseY<437.49){
    fill(255,165,0);
    if(mouseX<455){
      text("21:30",mouseX-20,mouseY-10);
      textSize(45);
      text("21:30",395,745);
      InBed = 3;
    }
    else{
      text("00:30",mouseX-20,mouseY-10);
      textSize(45);
      text("00:30",395,745);
      InBed = 21;
    }
  }
  if(437.49<mouseY && mouseY<458.32){
    fill(255,165,0);
    if(mouseX<455){
      text("21:40",mouseX-20,mouseY-10);
      textSize(45);
      text("21:40",395,745);
      InBed = 4;
    }
    else{
      text("00:20",mouseX-20,mouseY-10);
      textSize(45);
      text("00:20",395,745);
      InBed = 20;
    }
  }
  if(458.32<mouseY && mouseY<479.15){
    fill(255,165,0);
    if(mouseX<455){
      text("21:50",mouseX-20,mouseY-10);
      textSize(45);
      text("21:50",395,745);
      InBed = 5;
    }
    else{
      text("00:10",mouseX-20,mouseY-10);
      textSize(45);
      text("00:10",395,745);
      InBed = 19;
    }
  }
  if(479.15<mouseY && mouseY<519.15){
    fill(255,165,0);
    if(mouseX<345.85){
      text("22:00",mouseX-20,mouseY-10);
      textSize(45);
      text("22:00",395,745);
      InBed = 6;
    }
    else{
      text("00:00",mouseX-20,mouseY-10);
      textSize(45);
      text("00:00",395,745);
      InBed = 18;
    }
  }
  if(539.98<mouseY && mouseY<560.81){
    fill(255,165,0);
    if(mouseX<455){
      text("22:20",mouseX-20,mouseY-10);
      textSize(45);
      text("22:20",395,745);
      InBed = 8;
    }
    else{
      text("23:40",mouseX-20,mouseY-10);
      textSize(45);
      text("23:40",395,745);
      InBed = 16;
    }
  }
  if(519.15<mouseY && mouseY<539.98){
    fill(255,165,0);
    if(mouseX<455){
      text("22:10",mouseX-20,mouseY-10);
      textSize(45);
      text("22:10",395,745);
      InBed = 7;
    }
    else{
      text("23:50",mouseX-20,mouseY-10);
      textSize(45);
      text("23:50",395,745);
      InBed = 17;
    }
  }
  if(560.81<mouseY && mouseY<581.64){
    fill(255,165,0);
    if(mouseX<455){
      text("22:30",mouseX-20,mouseY-10);
      textSize(45);
      text("22:30",395,745);
      InBed = 9;
    }
    else{
      text("23:30",mouseX-20,mouseY-10);
      textSize(45);
      text("23:30",395,745);
      InBed = 15;
    }
  }
  if(581.64<mouseY && mouseY<602.47){
    fill(255,165,0);
    if(mouseX<455){
      text("22:40",mouseX-20,mouseY-10);
      textSize(45);
      text("22:40",395,745);
      InBed = 10;
    }
    else{
      text("23:20",mouseX-20,mouseY-10);
      textSize(45);
      text("23:20",395,745);
      InBed = 14;
    }
  }
  if(602.47<mouseY && mouseY<625){
    fill(255,165,0);
    if(445<mouseX && mouseX<465){
    text("23:00",mouseX-20,mouseY-10);
    textSize(45);
    text("23:00",395,745);
    InBed = 12;
    }
    else
    if(mouseX<455){
      text("22:50",mouseX-20,mouseY-10);
      textSize(45);
      text("22:50",395,745);
      InBed = 11;
    }
    else{
      text("23:10",mouseX-20,mouseY-10);
      textSize(45);
      text("23:10",395,745);
      InBed = 13;
    }
  }
}

void BedTimeRecord11(){
  text("選択された時刻",405,690);
  text("8:00",435,365);
  text("9:00",280,505);
  text("10:00",435,645);
  text("11:00",590,505);
  fill(188);
  circle(455,500,250);
  fill(0);
  circle(455,500,230);
  icon1 = loadImage("bed.png");
  image(icon1,380,420,150,150);
  float distance = dist(mouseX, mouseY, 455, 500);
  if(118< distance && distance <125){
    fill(255,165,0);
    circle(mouseX,mouseY,12);
  }
  if(375<mouseY && mouseY<395.83){
    fill(255,165,0);
    if(445<mouseX && mouseX<465){
    text("08:00",mouseX-20,mouseY-10);
    textSize(45);
    text("08:00",395,745);
    InBed2 = 0;
    }
    else if(mouseX<450){
      text("08:10",mouseX-20,mouseY-10);
      textSize(45);
      text("08:10",395,745);
      InBed2 = 1;
    }
    else{
      text("11:50",mouseX-20,mouseY-10);
      textSize(45);
      text("11:50",395,745);
      InBed2 = 23;
    }
  }
  if(395.83<mouseY && mouseY<416.66){
    fill(255,165,0);
    if(mouseX<455){
      text("08:20",mouseX-20,mouseY-10);
      textSize(45);
      text("08:20",395,745);
      InBed2 = 2;
    }
    else{
      text("11:40",mouseX-20,mouseY-10);
      textSize(45);
      text("11:40",395,745);
      InBed2 = 22;
    }
  }
  if(416.66<mouseY && mouseY<437.49){
    fill(255,165,0);
    if(mouseX<455){
      text("08:30",mouseX-20,mouseY-10);
      textSize(45);
      text("08:30",395,745);
      InBed2 = 3;
    }
    else{
      text("11:30",mouseX-20,mouseY-10);
      textSize(45);
      text("11:30",395,745);
      InBed2 = 21;
    }
  }
  if(437.49<mouseY && mouseY<458.32){
    fill(255,165,0);
    if(mouseX<455){
      text("08:40",mouseX-20,mouseY-10);
      textSize(45);
      text("08:40",395,745);
      InBed2 = 4;
    }
    else{
      text("11:20",mouseX-20,mouseY-10);
      textSize(45);
      text("11:20",395,745);
      InBed2 = 20;
    }
  }
  if(458.32<mouseY && mouseY<479.15){
    fill(255,165,0);
    if(mouseX<455){
      text("08:50",mouseX-20,mouseY-10);
      textSize(45);
      text("08:50",395,745);
      InBed2 = 5;
    }
    else{
      text("11:10",mouseX-20,mouseY-10);
      textSize(45);
      text("11:10",395,745);
      InBed2 = 19;
    }
  }
  if(479.15<mouseY && mouseY<519.15){
    fill(255,165,0);
    if(mouseX<345.85){
      text("09:00",mouseX-20,mouseY-10);
      textSize(45);
      text("09:00",395,745);
      InBed2 = 6;
    }
    else{
      text("11:00",mouseX-20,mouseY-10);
      textSize(45);
      text("11:00",395,745);
      InBed2 = 18;
    }
  }
  if(539.98<mouseY && mouseY<560.81){
    fill(255,165,0);
    if(mouseX<455){
      text("09:20",mouseX-20,mouseY-10);
      textSize(45);
      text("09:20",395,745);
      InBed2 = 8;
    }
    else{
      text("10:40",mouseX-20,mouseY-10);
      textSize(45);
      text("10:40",395,745);
      InBed2 = 16;
    }
  }
  if(519.15<mouseY && mouseY<539.98){
    fill(255,165,0);
    if(mouseX<455){
      text("09:10",mouseX-20,mouseY-10);
      textSize(45);
      text("09:10",395,745);
      InBed2 = 7;
    }
    else{
      text("10:50",mouseX-20,mouseY-10);
      textSize(45);
      text("10:50",395,745);
      InBed2 = 17;
    }
  }
  if(560.81<mouseY && mouseY<581.64){
    fill(255,165,0);
    if(mouseX<455){
      text("09:30",mouseX-20,mouseY-10);
      textSize(45);
      text("09:30",395,745);
      InBed2 = 9;
    }
    else{
      text("10:30",mouseX-20,mouseY-10);
      textSize(45);
      text("10:30",395,745);
      InBed2 = 15;
    }
  }
  if(581.64<mouseY && mouseY<602.47){
    fill(255,165,0);
    if(mouseX<455){
      text("09:40",mouseX-20,mouseY-10);
      textSize(45);
      text("09:40",395,745);
      InBed2 = 10;
    }
    else{
      text("10:20",mouseX-20,mouseY-10);
      textSize(45);
      text("10:20",395,745);
      InBed2 = 14;
    }
  }
  if(602.47<mouseY && mouseY<625){
    fill(255,165,0);
    if(445<mouseX && mouseX<465){
    text("10:00",mouseX-20,mouseY-10);
    textSize(45);
    text("10:00",395,745);
    InBed2 = 12;
    }
    else
    if(mouseX<455){
      text("09:50",mouseX-20,mouseY-10);
      textSize(45);
      text("09:50",395,745);
      InBed2 = 11;
    }
    else{
      text("10:10",mouseX-20,mouseY-10);
      textSize(45);
      text("10:10",395,745);
      InBed2 = 13;
    }
  }
}


void BedTimeRecord20(){
  DarkMode();
  textSize(20);
  text("あなたの睡眠時間は",335,150);
  text("です",540,270);
  textSize(60);
  text(score,370,270);
  text("h",490,270);
}

void BedTimeRecord21(){
  if(InBed >= 0 && InBed <= 17){
    score = (((24*60)+(8*60)+(InBed2*10)) - ((21*60)+(InBed*10)))/60;
  }
  if(InBed >= 18 && InBed <= 23){
    score = ((((24*60)+(8*60)+(InBed2*10)) - (21*60)-((InBed-18)*10))/60)-3;
  }
}

void BedTimeRecord22(){
  if (score<3){
    textSize(12);
    text("あなたはあまり良い睡眠習慣を送れているとは言えません。",300,330);
    text("睡眠環境の見直しやルーティーンの改善が勧められます。",300,350);
    icon1 = loadImage("low.png");
    image(icon1,400,380,120,120);
    icon1 = loadImage("download.png");
    image(icon1,560,50,40,40);
  }
    if (3<score){
     if (score<6){
    textSize(12);
    text("あなたの睡眠習慣は悪くはないようです。",300,330);
    text("少しの改善で最高のパフォーマンスを得る事ができます。",300,350);
    icon1 = loadImage("high.png");
    image(icon1,400,380,120,120);
    icon1 = loadImage("download.png");
    image(icon1,560,50,40,40);
  }
  }
  if (6<score){
  textSize(12);
    text("あなたの睡眠習慣は十分良いようです。",300,330);
    text("最高のパフォーマンスを今後を得る事が",300,350);
    text("できるように継続しましょう。",300,370);
    icon1 = loadImage("maxz.png");
    image(icon1,400,380,120,120);
    icon1 = loadImage("download.png");
    image(icon1,560,50,40,40);
  }
}
