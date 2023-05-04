import 'package:flutter/material.dart';

void main() {
  /*Değişkenler*/

//camelCase
//PascalCase

  String mesaj_degeri = "Merhaba Engin";
  int dogumYili = 1985;
  double oran = 1.15;
  bool loginMi = false;

  print(mesaj_degeri);
  print("Doğum yılı : "+ dogumYili.toString());
  print("Oran : "+oran.toString());

  //Şart blokları
  bool sistemeGirmisMi = false;
  sistemeGirmisMi = true;

  if(sistemeGirmisMi == true ){
    print("Anasayfa giriş başarılı");
  }
  else{
    print("login sayfasına gidildi");
  }

  int puan = 45;
  if(puan >= 50 ){
    print("Geçti");
  }
  else if(puan>=40){
    print("Bütünleme");
  }
  else{
    print("Kaldı");
  }

  //Switch case yapısı
  String not = "A";

  switch(not){
    case "A" :
      {print("Süper");}
      break;
    case "B" :
      {print("Süper değil");}
      break;
    default : {print("Bilinmiyor");}
    break;
  }


  //Fixed list   sabit liste
  var fixedLengthList = List<int>.filled(5, 0); //5elamanlı liste oluştur
  /* fixedListe bu metotlar yok
 fixedLengthList.length = 0;  // Error
fixedLengthList.add(499);    // Error*/
  fixedLengthList[0] = 87;   //ilk indise kutuya 87 'yi' ekle
  print(fixedLengthList);
  //Growable List büyüyebilen liste
  List birinciListe = ["","","","",""];
  birinciListe[0] = "Laptop";
  birinciListe[1] = "Mouse";
  birinciListe[2] = "Klavye";
  birinciListe[3] = "Monitor";
  birinciListe[4] = "Microphone";
  print(birinciListe);
  var growableList = [1, 2,3,4];
//growableList.length = 6; liste uzunluğu belirlenir
  growableList.add(499);  // en son indise ekle
  growableList[1] = 87;  // ikinci indise ekler
  print(growableList);

  // filtreleme işlemleri
  //İçerisinde a içerenleri listele
  print(birinciListe.where((s) => s.contains("a")));
  print(birinciListe.first); //ilk elemanı yaz
  print(birinciListe.reversed);//tersten yaz
  print(birinciListe.length); // liste uzunluğu yazar

  //dart list function araştır.

  //Dart dili döngüler
  void main(){
    // i<10 , 1>10, i<>10 farklı 10 , i==10 i eşit 10
    //i++ = i + 1 , i-- = i-1 ; i+=1  i=i+1;
    for(var i = 1 ; i<10;i++){
      print(i);
    }

    var products = ["Laptop","Mouse","Keyboard"];
    for(var i = 0; i< products.length;i++){
      print(products[i]);
    }

    for (var pr in products){
      print(pr);
    }

    int sayi = 1;
    while(sayi<10){
      print(sayi);
      sayi++;
    }

    var number = 1000;
    do{
      print("Sayı 2 = "+number.toString());
      number++;
    } while(number<1000);
  }
  //Sözlük tanımlama ve değer ekleme
  var dictionary1 = new Map();
  dictionary1["book"]="kitap";
  dictionary1["little"]="küçük";

  var dictionary2 = {"kitap":"book","küçük":"little"};
  dictionary2 ["büyük"]="big";
  //tanımlanan değerleri yazdırma
  print(dictionary1);
  print(dictionary2);

  dictionary1.remove("book");
  print(dictionary1);

  //Anahtarları dolaş
  for (var key in dictionary2.keys){
    print(key) ;
  }

  //Değerleri dolaş
  for (var value in dictionary2.values){
    print(value);

    //keyboardkeyi varmı sözlükte
    print(dictionary2.containsKey("keyboard"));

    //kitap keyi varmı sözlükte
    print(dictionary2.containsKey("kitap"));
  }
//Foreach flutter
  dictionary2.forEach((k,v)=>{
    print(k+" : "+v)
  });
//Flutter fonksiyonlar


  //Fonksiyonlar

  //Fonksiyon çağırma değer döndürmeyen
  selamVer();
  //Parametreli fonksiyon çağırma değer döndürmeyen
  selamVer2("Fenerbahçe");

  //Parametreli fonksiyon çağırma değer döndüren
  var hesapSonucu = hesapla(10000,15);
  print(hesapSonucu);

  //Çoklu değer alan fonksiyon
  test1(1,2);
  //Sıralı değer alan fonksiyon
  test2(sayi1:1,sayi3:2,sayi2:4);

runApp(const MyApp());
}

//Değer döndürmeyen fonksiyon oluşturma
void  selamVer(){
  print("Merhaba");
}

//Değer döndürmeyen parametreli fonksiyon
void  selamVer2(String kullanici){
  print("Selam  "+ kullanici);
}

//Değer döndüren parametreli fonksiyon
//fonksiyonu başka yerde de kullanırken işe yarar.
double hesapla(double krediTutari,double yuzde){
  var sonuc =  krediTutari * yuzde /100;

  return sonuc;
}

//[sayi1,sayi2] buradaki değerleri ister ekle ister ekleme
void test1(int sayi1,[int sayi2=0,int sayi3=0]){
  print(sayi1);
  print(sayi2);
  print(sayi3);
}

void test2({int sayi1=0,int sayi2=0,int sayi3=0}) {
  print(sayi1);
  print(sayi2);
  print(sayi3);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
