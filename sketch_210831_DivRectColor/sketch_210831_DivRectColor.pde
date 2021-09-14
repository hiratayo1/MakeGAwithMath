int numA = 7;     // 横
int numB = 9;      // 縦
int scallar = 50;  // 倍率
numA *= scallar;
numB *= scallar;
int posX = 0;
int posY = 0;
int sqWidth = numB;// 正方形の辺長さ,値の小さいほうを代入しておく。入替処理もあるのでAでもBでもOK

int itr =0;        // 繰り返し回数

size(500,500);     // ウィンドウサイズ
colorMode(HSB,1);  // 色の表示する方式、0から1までの数値で指定
while(sqWidth>0){  // 描画する正方形の辺の長さが0になるまでつづける
  itr++;
  if(itr%2 == 1){  // 奇数回
  // X方向への展開
     while(posX+sqWidth <= numA){
       color c = color(random(1),1,1);
       fill(c);
       rect(posX,posY,sqWidth,sqWidth);
       posX += sqWidth;
     }
     
     sqWidth = numA-posX;
  }
  else{            // 偶数回
  // Y方向への展開
     while(posY+sqWidth <= numB){
       color col = color(random(1),1,1);
       fill(col);
       rect(posX,posY,sqWidth,sqWidth);
       posY += sqWidth;
     }
     sqWidth = numB-posY; 
  }
}
