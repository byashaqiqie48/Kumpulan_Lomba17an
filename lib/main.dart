import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ListViewApp());

class ListViewApp extends StatelessWidget {
  List<Item> data = [
    Item(
        "https://images.pexels.com/photos/379743/pexels-photo-379743.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "https://1.bp.blogspot.com/-pGak06r8bmY/XU2DdfbwXYI/AAAAAAAABq0/LT_XGDbA_N0TbnjNyVSpc0KFlvuOQZuJQCLcBGAs/s320/logo-hut-ri-ke-74-png.png",
        "Panjat Pinang",
        "Sebuah pohon pinang yang tinggi dan batangnya dilumuri oleh pelumas disiapkan oleh panitia perlombaan. Di bagian atas pohon tersebut, disiapkan berbagai hadiah menarik. Para peserta berlomba untuk mendapatkan hadiah-hadiah tersebut dengan cara memanjat batang pohon yang biasanya pohon pinang."
    ),
    Item(
      "https://ponorogo.go.id/wp-content/uploads/2016/08/TARIK-TAMBANG.jpg",
        "https://1.bp.blogspot.com/-pGak06r8bmY/XU2DdfbwXYI/AAAAAAAABq0/LT_XGDbA_N0TbnjNyVSpc0KFlvuOQZuJQCLcBGAs/s320/logo-hut-ri-ke-74-png.png",
      "Tarik Tambang",
      "Tarik Tambang adalah permainan antarregu yang memerlukan kekuatan juga kekompakan. Tarik tambang biasa dimainkan dalam perayaan Hari Kemerdekaan Indonesia. Permainan populer ini tidak hanya dimainkan ketika lomba pada tanggal 17 Agustus saja tetapi juga dilombakan pada pekan-pekan kreativitas di sekolah."
    ),
    Item(
        "https://2.bp.blogspot.com/-4Im2EWyem7E/Wesphn6ifkI/AAAAAAAAC2I/ZY6WZsQbO0YCtBXnl1gbLpWixAg0RA3zACLcBGAs/s1600/balap%2Bkarung.jpg",
        "https://1.bp.blogspot.com/-pGak06r8bmY/XU2DdfbwXYI/AAAAAAAABq0/LT_XGDbA_N0TbnjNyVSpc0KFlvuOQZuJQCLcBGAs/s320/logo-hut-ri-ke-74-png.png",
        "Balap Karung",
        "Balap karung adalah salah satu lomba tradisional yang populer pada hari kemerdekaan Indonesia. Sejumlah peserta diwajibkan memasukkan bagian bawah badannya ke dalam karung kemudian berlomba sampai ke garis akhir."
    ),
    Item(
        "https://cdn-image.hipwee.com/wp-content/uploads/2017/08/hipwee-Screenshot_2017-08-16-17-43-15-95-640x552.png",
        "https://1.bp.blogspot.com/-pGak06r8bmY/XU2DdfbwXYI/AAAAAAAABq0/LT_XGDbA_N0TbnjNyVSpc0KFlvuOQZuJQCLcBGAs/s320/logo-hut-ri-ke-74-png.png",
        "Balap Kelereng",
        "Permainan kelereng yang biasanya dimainkan oleh dua orang atau lebih, kemudian dimodifikasi di Indonesia menjadi salah satu permainan yang kini kita kenal dengan nama balap kelereng."
    ),

  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Title',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kumpulan Lomba 17 Agustus an',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
            )
          ],
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            child: ListView.builder(
              itemBuilder: (contex, index) {
                return ImageListView(data[index]);
              },
              itemCount: data.length,
            ),
          ),
        ),
      ),
    );
  }
}

class Item {
  String img, logo, title, sub;

  Item(this.img, this.logo, this.title, this.sub);
}

class ImageListView extends StatelessWidget {
 final Item item;

  ImageListView(this.item);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {},
      child: Card(
        margin: EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(item.img),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(item.logo),
              ),
              title: Text(
                item.title,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
              ),
              subtitle: Column(
                children: <Widget>[
                  Text(
                    item.sub,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 25.0,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.comment,
                        color: Colors.red,
                        size: 25.0,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.share,
                        color: Colors.red,
                        size: 25.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
