void Lovemaster() {
  fill(255);
  rect(380, 100, 70, 70, 15);
  icon1 = loadImage("heart.png");
  image(icon1, 385, 105, 60, 60);
  fill(255);
  text("Cherry Cheese", 380, 185);
}

void LoveAction0() {
  YellowMode();
  fill(255);
  textFont(font2);
  fill(0);
  textSize(30);
  text("ようこそ", 397, 200);
  text("Cherry Cheeseへ", 343, 250);
  icon1 = loadImage("heart.png");
  image(icon1, 380, 300, 150, 150);
  textFont(font);
  textSize(12);
  text("このアプリケーションは", 383, 500);
  text("あなたの恋愛を全面的にサポートします。", 342, 520);
  fill(255, 219, 231);
  rect(385, 630, 150, 40, 15);
  textSize(18);
  fill(0);
  text("はじめる", 425, 657);
}

void LoveAction1() {
  YellowMode();
  textFont(font2);
  textSize(40);
  fill(0);
  text("Cherry Cheese", 300, 150);
  icon1 = loadImage("cheese.png");
  image(icon1, 580, 115, 50, 50);
  //自分の性格を判定する
  fill(149, 204, 255);
  rect(300, 170, 150, 75, 15);
  fill(0);
  textSize(12);
  text("あなたの性格を判定する", 310, 193);
  icon1 = loadImage("man.png");
  image(icon1, 395, 195, 50, 50);
  //相手の性格を判定する
  fill(255, 169, 169);
  rect(465, 170, 150, 75, 15);
  fill(0);
  textSize(12);
  text("相手の性格を判定する", 475, 193);
  icon1 = loadImage("woman.png");
  image(icon1, 565, 195, 50, 50);
  //恋愛IQを判定する
  fill(179, 255, 179);
  rect(300, 255, 150, 75, 15);
  fill(0);
  textSize(12);
  text("恋愛IQを判定する", 310, 279);
  icon1 = loadImage("test.png");
  image(icon1, 395, 280, 50, 50);
  //自分に合うアクセを判定する
  fill(210, 209, 255);
  rect(465, 255, 150, 75, 15);
  fill(0);
  textSize(12);
  text("自分に合うアクセを", 478, 279);
  text("判定する", 478, 295);
  icon1 = loadImage("clothes.png");
  image(icon1, 565, 280, 50, 50);
}

void LoveAction11() {
  BlueMode();
  fill(0);
  textSize(20);
  text("あなたの性格を測定する", 335, 120);
  text("'あなたは'", 413, 500);
  fill(255);
  rect(305, 140, 300, 300, 15);
  line(305, 290, 605, 290);
  line(455, 140, 455, 440);
  fill(0);
  textSize(12);
  text("アウトドア", 545, 280);
  text("インドア", 310, 280);
  text("外向的", 435, 160);
  text("内向的", 435, 460);
  text("◀戻る", 300, 80);
  fill(255, 165, 0);
  if (305<= mouseX && mouseX<=605 && 140<= mouseY && mouseY <= 440) {
    circle(mouseX, mouseY, 12);
  }
  LoveAction11sub();
  LoveAction11sub2();
}

void LoveAction11sub() {
  if (305 <= mouseX && mouseX <= 380 && 140 <= mouseY && mouseY <= 215) {
    fill(0);
    textSize(25);
    text("社交的頭脳派", 380, 550);
    icon1 = loadImage("conan.png");
    image(icon1, 390, 550, 140, 140);
    textSize(12);
    text("多くの人と交流しつつ、戦略や思考を好む。", 345, 720);
    text("©青山剛昌／小学館・読売テレビ・TMS 1996", 335, 735);
    type = 1;
  }
  if (305 <= mouseX && mouseX <= 380 && 215 <= mouseY && mouseY <= 290) {
    fill(0);
    textSize(25);
    text("冷静な分析者 ", 380, 550);
    icon1 = loadImage("deathnote.jpg");
    image(icon1, 320, 560, 280, 140);
    textSize(12);
    text("表面的には社交的だが、内に秘めた野望や思考が優先。", 315, 720);
    text("©大場つぐみ・小畑健／集英社", 370, 760);
    text("・VAP・マッドハウス・NTV・D.N.ドリームパートナーズ", 310, 780);
    type =2;
  }

  if (380 <= mouseX && mouseX <= 455 && 140 <= mouseY && mouseY <= 215) {
    fill(0);
    textSize(25);
    text("陽気なムードメーカー", 340, 550);
    icon1 = loadImage("tanjiro.png");
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("周囲を明るくし、協調性を重んじる。", 365, 720);
    text("©吾峠呼世晴／集英社・アニプレックス・ufotable", 335, 735);
  }

  if (455 <= mouseX && mouseX <= 530 && 140 <= mouseY && mouseY <= 215) {
    fill(0);
    textSize(25);
    text("熱血行動派リーダー", 360, 550);
    icon1 = loadImage("luffy.jpg");
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("率先して行動し、仲間を引っ張る。", 345, 720);
    text("©尾田栄一郎／集英社・フジテレビ・東映アニメーション", 315, 735);
  }

  if (530 <= mouseX && mouseX <= 605 && 140 <= mouseY && mouseY <= 215) {
    fill(0);
    textSize(25);
    text("純粋な冒険者", 380, 550);
    icon1 = loadImage("goku.jpg");
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("好奇心旺盛で、困難を乗り越えるのが好き。", 345, 720);
    text("©バードスタジオ／集英社・東映アニメーション", 335, 735);
  }

  if (380 <= mouseX && mouseX <= 455 && 215 <= mouseY && mouseY <= 290) {
    fill(0);
    textSize(25);
    text("気配り上手な世話焼き", 350, 550);
    icon1 = loadImage("bakugo.jpeg");
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("周囲に気を配り、時にぶっきらぼうながらも行動する。", 315, 720);
    text("©堀越耕平／集英社・僕のヒーローアカデミア製作委員会", 310, 735);
  }


  if (455 <= mouseX && mouseX <= 530 && 215 <= mouseY && mouseY <= 290) {
    fill(0);
    textSize(25);
    text("活発な探求者", 380, 550);
    icon1 = loadImage("deku.jpeg");
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("目標に向かって努力を惜しまず、積極的に行動する。", 315, 720);
    text("©堀越耕平／集英社・僕のヒーローアカデミア製作委員会", 310, 735);
  }

  if (530 <= mouseX && mouseX <= 605 && 215 <= mouseY && mouseY <= 290) {
    fill(0);
    textSize(25);
    text("無邪気な挑戦者", 380, 550);
    icon1 = loadImage("gon.png");
    image(icon1, 390, 560, 130, 170);
    textSize(12);
    text("新しいことに臆せず飛び込み、純粋に楽しむ。", 345, 720);
    text("©POT（冨樫義博）1998年-2011年", 370, 735);
    text("©VAP・日本テレビ・集英社・マッドハウス", 345, 750);
  }

  if (305 <= mouseX && mouseX <= 380 && 290 <= mouseY && mouseY <= 365) {
    fill(0);
    textSize(25);
    text("知的な策士", 380, 550);
    icon1 = loadImage("lelouch.jpg");
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("一匹狼だが、状況を動かすために計算高く行動する。", 315, 720);
    text("©サンライズ／PROJECT GEASS", 360, 735);
    text("キャラクターデザイン ©2006-2008 CLAMP", 335, 750);
  }

  if (380 <= mouseX && mouseX <= 455 && 290 <= mouseY && mouseY <= 365) {
    fill(0);
    textSize(25);
    text("優しい観察者", 380, 550);
    icon1 = loadImage("tatsuya.png");
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("表立って感情を出さないが、周囲をよく見て支える。", 315, 720);
    text("©2013 佐島勤／KADOKAWA ", 360, 735);
    text("アスキー・メディアワークス刊／魔法科高校製作委員会", 330, 750);
  }

  if (455 <= mouseX && mouseX <= 530 && 290 <= mouseY && mouseY <= 365) {
    fill(0);
    textSize(25);
    text("寡黙な実力者", 380, 550);
    icon1 = loadImage("levi.jpeg");
    image(icon1, 390, 560, 130, 140);
    textSize(12);
    text("言葉は少ないが、確かな実力と行動で信頼を得る。", 315, 720);
    text("©諫山創・講談社／「進撃の巨人」", 350, 735);
    text("The Final Season製作委員会", 370, 750);
  }

  if (530 <= mouseX && mouseX <= 605 && 290 <= mouseY && mouseY <= 365) {
    fill(0);
    textSize(25);
    text("自然を愛する孤高の戦士", 330, 550);
    icon1 = loadImage("giyu.jpg"); // 仮の画像ファイル名
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("一人の時間を好み、自然の中で静かに力を磨く。", 315, 720);
    text("©吾峠呼世晴／集英社・アニプレックス・ufotable", 335, 735);
  }

  if (305 <= mouseX && mouseX <= 380 && 365 <= mouseY && mouseY <= 440) {
    fill(0);
    textSize(25);
    text("内省的な思索家", 360, 550);
    icon1 = loadImage("shinji.png");
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("自分の内面と向き合い、深く考えることを好む。", 315, 720);
    text("©カラー／Project EVA.", 370, 735);
  }

  if (380 <= mouseX && mouseX <= 455 && 365 <= mouseY && mouseY <= 440) {
    fill(0);
    textSize(25);
    text("繊細な芸術家/研究者", 340, 550);
    icon1 = loadImage("kaworu.png"); // 仮の画像ファイル名
    image(icon1, 390, 550, 140, 140);
    textSize(12);
    text("感受性が高く、独自の興味や世界に没頭する。", 315, 720);
    text("©カラー／Project EVA.", 370, 735);
  }

  // 15. ストイックな求道者
  if (455 <= mouseX && mouseX <= 530 && 365 <= mouseY && mouseY <= 440) {
    fill(0);
    textSize(25);
    text("ストイックな求道者", 350, 550);
    icon1 = loadImage("vegeta.png"); // 仮の画像ファイル名
    image(icon1, 390, 550, 140, 140);
    textSize(12);
    text("己の道を究めるため、孤独な鍛錬を厭わない。", 315, 720);
    text("©バードスタジオ／集英社・東映アニメーション", 335, 735);
  }

  if (530 <= mouseX && mouseX <= 605 && 365 <= mouseY && mouseY <= 440) {
    fill(0);
    textSize(25);
    text("独立した放浪者", 360, 550);
    icon1 = loadImage("killua.jpg"); // 仮の画像ファイル名
    image(icon1, 390, 560, 130, 130);
    textSize(12);
    text("群れるのを嫌い、自由に動き回りながら自己を確立する。", 315, 720);
    text("©POT（冨樫義博）1998年-2011年", 370, 735);
    text("©VAP・日本テレビ・集英社・マッドハウス", 345, 750);
  }
}

void LoveAction11sub2() {
  fill(0);
  textSize(10);
  text("確認する", 303, 495);
  fill(u1, u2, u3);
  rect(310, 460, 20, 20);
  if (u4==1) {
    fill(255);
    textSize(30);
    text("✔", 313, 478);
    u5=1;
  }
}

void LoveAction12() {
  BlueMode();
  image(icon1, 350, 100, 200, 200);
  fill(255);
  rect(293, 330, 330, 400, 15);
  fill(0);
  textSize(40);
  text("-恋愛傾向-", 350, 370);
  fill(0, 114, 255);
  rect(385, 750, 150, 40, 15);
  fill(255);
  textSize(18);
  text("一覧へ戻る", 415, 777);
  fill(0);
  textSize(15);
  if (type==1) {
    text("表面上はスマートで社交的ですが、", displayCenterX, 410); // Y座標を調整
    text("恋愛になると少し不器用な面も。", displayCenterX, 430);
    text("論理的に相手を理解しようとし、", displayCenterX, 450);
    text("問題解決のように関係を深めようと", displayCenterX, 470);
    text("とするかもしれません。共通の知的", displayCenterX, 490);
    text("興味や謎解きを共有できる相手に", displayCenterX, 510);
    text("惹かれやすいでしょう。", displayCenterX, 530);
    text("©青山剛昌／小学館・読売テレビ・TMS 1996", displayCenterX-17, 590); // 著作権表示
  }
}

void LoveAction2() {
  GreenMode();
  fill(0);
  textSize(12);
  text("◀戻る", 300, 80);
  textSize(20);
  text("ー恋愛IQを測定するー", 343, 120);
  text("現在の恋愛IQ", 395, 560);
  icon1 = loadImage("renai.png");
  image(icon1, 380, 600, 160, 160);
  fill(255);
  circle(459, 680, 140);
}

void LoveAction21() {
  icon1 = loadImage("fukidashi.png");
  image(icon1, 290, 100, 190, 190);
  fill(0);
  textSize(50);
  text("Lv.1", 495, 220);
  fill(255);
  textSize(15);
  text("明日の講義の持ち物", 315, 185);
  text("教えてくれない？", 315, 210);
  fill(0);
  text("Q.これに対する最も良い返信を答えよ", 325, 300);
  fill(255);
  for (int i = 0; i < 3; i++) {
    float startY = 330 + i * 70;
    rect(325, startY, 260, 50, 15);
  }
  fill(0);
  textSize(16);
  text("どしたん話聞こうか？", 340, 360);
  text("持ち物は外履と汗拭きタオルだよ", 340, 430);
  text("君可愛いね", 340, 500);
}

void LoveAction4() {
  PurpleMode();
  fill(0);
  textSize(12);
  text("◀戻る", 300, 80);
  textSize(20);
  text("- 自分に合うアクセサリを判定する-", 295, 140);
  textSize(15);
  text("自分のスペックを入力", 375, 180);
  text("身長", 440, 215);
  text("cm", 480, 280);
  fill(255);
  rect(305, 230, 300, 10, 15);
  if (mouseX >= 305 && mouseX <= 605 && mouseY >= 230 && mouseY <= 240) {
    fill(255, 165, 0);
    ellipse(mouseX, mouseY, 10, 10);
    tall= mouseX/2-55;
    fill(0);
    textSize(20);
    text(tall, 430, 280);
  }
  fill(0);
  textSize(10);
  text("確認する", 303, 290);
  fill(u1, u2, u3);
  rect(310, 255, 20, 20);
  if (u4==1) {
    fill(255);
    textSize(30);
    text("✔", 313, 273);
    u5=1;
    fill(0);
    textSize(20);
    text(tall, 430, 280);
  }
  fill(0);
  textSize(15);
  text("体重", 440, 315);
  text("Kg", 480, 380);
  fill(255);
  rect(305, 330, 300, 10, 15);
  if (mouseX >= 305 && mouseX <= 605 && mouseY >= 330 && mouseY <= 340) {
    fill(255, 165, 0);
    ellipse(mouseX, mouseY, 10, 10);
    weight= mouseX/2-155;
    fill(0);
    textSize(20);
    text(weight, 430, 380);
  }
  fill(0);
  textSize(10);
  text("確認する", 303, 390);
  fill(u1, u2, u3);
  rect(310, 355, 20, 20);
  if (u4==1) {
    fill(255);
    textSize(30);
    text("✔", 313, 373);
    u5=1;
    fill(0);
    textSize(20);
    text(weight, 430, 380);
  }
  textSize(20);
  fill(0);
  text("自分の属性", 400, 420);
  fill(0, 114, 255);
  for (int i = 0; i < 4; i++) {
    float startY = 445 + i * 90; // Y座標を90ずつずらす
    rect(315, startY, 130, 50, 15);
  }
  for (int i = 0; i < 4; i++) {
    float startY = 445 + i * 90; // Y座標を90ずつずらす
    rect(470, startY, 130, 50, 15);
  }
  rect(535,65,70,25,20);
  fill(255);
  text("判定",550,85,12);
  fill(255);
  textSize(18);
  text("草食系", 353, 478);
  text("肉食系", 505, 478);
  text("少年", 360, 565);
  text("筋肉", 515, 565);
  text("高身長", 345, 657);
  text("低身長", 500, 657);
  text("イケメン", 350, 747);
  text("フツメン", 495, 747);
}

void LoveAction41(){
  PurpleMode();
  fill(0);
  text("-あなたにおすすめのアクセはこちら-",300, 140);
  fill(255);
  for (int i = 0; i < 3; i++) {
    float startY = 160 + i * 115; // Y座標を90ずつずらす
    rect(305, startY, 300, 100, 15);
  }
  textSize(20);
  fill(0);
  text("モールドスクエアMサイズ　",310,190);
  text("EZOSIKA [NMS6M-B2-001]",310,210);
  textSize(18);
  text("3300yen",510,245);
  textSize(20);
  text("メリノタートルネックセーター",310,300);
  text("ユニクロ",310,320);
  textSize(18);
  text("3990yen",510,365);
  textSize(20);
  text("デニムキャロットパンツ",310,420);
  text("GU",310,440);
  textSize(18);
  text("2990yen",510,480);
}
