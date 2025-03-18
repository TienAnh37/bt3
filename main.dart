
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  final List<Map<String, String>> item= [
    {
      "image": "https://down-vn.img.susercontent.com/file/6c8ce68755430b006d955485379dda8f",
      "text": "Mô hình Dante Masamune 1/100 chính hãng nhà Moshow Toys là một metal build mới "
    },
    {
      "image": "https://th.bing.com/th/id/R.48943541bcd7e5ddc63c39e7f19acc9e?rik=m4DplnVgzTkbJw&riu=http%3a%2f%2fvcagundam.sg%2fcdn%2fshop%2ffiles%2fA0_803f9421-9d3a-49b2-9479-dc880b0a00c5.jpg%3fv%3d1727407116&ehk=s8FWyNTlGvl8%2flJ6J1%2b7N17pLu%2f11005Rl8bAeUFk%2bQ%3d&risl=&pid=ImgRaw&r=0",
      "text": "Mô hình Lone Shadow 1/10 chính hãng nhà Hemoxian là kit lắp ráp với nhiếu hiệu ứng "
    },
    {
      "image": "https://th.bing.com/th/id/R.527cf65fedd83d58b8a9a4a9be9bc34d?rik=vAYB968HMGmjxg&riu=http%3a%2f%2fhobbyzoneuk.co.uk%2fcdn%2fshop%2ffiles%2fHemoxian_Tastier_01.jpg%3fv%3d1707220038&ehk=gaz2BScW4C%2br17yJrO%2fdqBVLfg6jzY5O2fwuo31YrPQ%3d&risl=&pid=ImgRaw&r=0",
      "text": "Mô hình Tastỉe 1/10 chính hãng nhà Hemoxian là đối thủ của Lone Shadow "
    },
    {
      "image": "https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m2ghzxp6wvck1f",
      "text": "Mô hình Táo thiện xạ là kit chính hãng trong phim Robo trái cây "
    },
    {
      "image": "https://th.bing.com/th/id/OIP.OAEErXfEpic49BjD-nHA1QHaHa?w=209&h=209&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Quýt kiếm sĩ là kit chính hãng trong phim Robo trái cây "
    },
    {
      "image": "https://th.bing.com/th/id/OIP.xTVOTab8EvVPBR-y319ZJwHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Thơm giác đấu là kit chính hãng trong phim Robo trái cây "
    },
    {
      "image": "https://th.bing.com/th/id/OIP.dfSda-ywn__r6DyPvXP82QHaHa?w=202&h=200&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Aobing là Ngao bính-Tam thái tử của Ngao Quảng- Đông Hải Long Vương "
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,

          title: Text("Chào mừng đến với flutter!",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Đã quay về màn hình trước",style: TextStyle(fontSize: 20),),
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(10),
                  )
              );
            },
            color: Colors.white,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Mở tìm kiếm",style:TextStyle(fontSize: 20)),
                    )
                );
              },
            )
          ]
      ),
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context,index){
            return Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.network(
                            item[index]["image"]!,

                            fit: BoxFit.fill,
                          )
                      ),
                      SizedBox(width:10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item[index]["text"]!,
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 10,),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: TextButton(
                                  child: Text("Xem thêm",style: TextStyle(fontSize: 15),),
                                  onPressed: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content:Text("Đã bấm vào xem thêm", style: TextStyle(fontSize: 20),),
                                          behavior: SnackBarBehavior.floating,
                                          margin: EdgeInsets.all(10),
                                        )
                                    );
                                  },
                                )
                            )
                          ],

                        ),
                      )
                    ]

                )

            );
          }
      ),
      backgroundColor: Colors.black38,
    );
  }
}
