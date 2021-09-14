import processing.pdf.*;
int numA = 10;       // 横
int numB = 6;      // 縦
float ratio = (float)numB/numA; // 比率
float sqWidth = width;  // 繰り返し回数
int posX = 0;
int posY = 0;
int itr =0;        // 繰り返し回数
//ファイル名
String namePDF = str(numA) + "_" + str(numB) +".pdf";  //PDFの保存ファイル名
String namePNG = str(numA) + "_" + str(numB) +".png";  //PNGの保存ファイル名
// 描画
size(500,500);          // ウィンドウサイズ
beginRecord(PDF, namePDF);
colorMode(HSB,1);       // 色の表示する方式、0から1までの数値で指定
while(sqWidth>0.1){       // 描画する正方形の辺の長さが0になるまでつづける
  itr++;
  if(itr%2 == 1){       // 奇数回
  // X方向への展開
     while(posX + sqWidth * ratio <= width + 0.1){
       fill(color(random(1),1,1));
       rect(posX,posY,sqWidth*ratio,sqWidth);
       posX += sqWidth*ratio;
     }
     sqWidth = width-posX;
  }
  else{                 // 偶数回
  // Y方向への展開
     while(posY+sqWidth/ratio <= width+0.1){
       fill(color(random(1),1,1));
       rect(posX,posY,sqWidth,sqWidth/ratio);
       posY += sqWidth/ratio;
     }
     sqWidth = width-posY; 
  }
}
endRecord();
save(namePNG);           // PNG形式で描画ウィンドウを保存
