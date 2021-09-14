// ユークリッドの互除法
int a = 10;
int b = 6; // 商
int c ;    // 商
int d = b; // 余り
int itr = 0;

//繰り返し処理
while(d>0){
  itr++;
  c = a/b; // cに商を代入
  d = a%b; // dに余りを代入
  println(itr,":", a, "/", b, "=",c, "..", d );
  a = b; // bをaに代入
  b = d; // dをbに代入
}

println("GCD is", a);
