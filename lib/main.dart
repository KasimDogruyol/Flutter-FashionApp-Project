import 'package:flutter/material.dart';

import 'detay.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}
class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 20,),),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 20,),),
            Tab(icon: Icon(Icons.navigation, color: Colors.black, size: 20,),),
            Tab(icon: Icon(Icons.supervised_user_circle, color: Colors.grey, size: 20,),),
          ],
        ),
      ),
      



      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // gölge olmasın
        title: Text("Moda Uygulaması",
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
            ),
        ],
        
        ),
      
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            // Üstteki kısım
            Container(
              // color: Colors.blue.shade300,
              height: 140,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all( 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listeElemani('assets/images/model1.jpeg', 'assets/images/chanellogo.jpg'),
                    SizedBox(width: 30,),
                    listeElemani('assets/images/model2.jpeg', 'assets/images/louisvuitton.jpg'),
                    SizedBox(width: 30,),
                    listeElemani('assets/images/model3.jpeg', 'assets/images/diorlogo.jpg'),
                    SizedBox(width: 30,),
                    listeElemani('assets/images/model1.jpeg', 'assets/images/chanellogo.jpg'),
                    SizedBox(width: 30,),
                    listeElemani('assets/images/model2.jpeg', 'assets/images/louisvuitton.jpg'),
                    SizedBox(width: 30,),
                    listeElemani('assets/images/model3.jpeg', 'assets/images/diorlogo.jpg'),
                    SizedBox(width: 30,),
                    
                  ],
                ),
              ),
              ),
              //Card
              
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  // color: Colors.blue.shade300,
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/model1.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width - 160,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Daisy",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("1 hour ago",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.more_vert,
                            color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text("This official website features a ribbed knit zipper jacket that is ""modern and stylish. It looks very temparament and is recommend to friends",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath: 'assets/images/modelgrid1.jpeg',)));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid1.jpeg',
                                child: Container(
                                  height: 200,
                                  width: (MediaQuery.of(context).size.width - 50) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/modelgrid1.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath: 'assets/images/modelgrid2.jpeg',)));
                              },
                                  child: Hero(
                                    tag: 'assets/images/modelgrid2.jpeg',
                                    child: Container(
                                      height: 95,
                                      width: (MediaQuery.of(context).size.width - 100) / 2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/modelgrid2.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                InkWell(
                                  onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay(imgPath: 'assets/images/modelgrid3.jpeg',)));
                              },
                                  child: Hero(
                                    tag: 'assets/images/modelgrid3.jpeg',
                                    child: Container(
                                      height: 95,
                                      width: (MediaQuery.of(context).size.width - 100) / 2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/modelgrid3.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              
                            ),
                            
                          ],
                          
                        ),
                        SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 105,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.brown.withOpacity(0.2),
                                    
                                  ),
                                  child: Center(
                                    child: Text("# Louis Vuitton",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Colors.brown,
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.brown.withOpacity(0.2),
                                    
                                  ),
                                  child: Center(
                                    child: Text("# Chloe",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Colors.brown,
                                    ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),

                            Divider(),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(Icons.reply,
                                color: Colors.brown.withOpacity(0.2), size: 30,),
                                SizedBox(width: 5,),
                                Text("1.7k",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  
                                ),
                                ),
                                SizedBox(width: 15,),
                                Icon(Icons.comment,
                                color: Colors.brown.withOpacity(0.2), size: 30,),
                                SizedBox(width: 5,),
                                Text("325",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  
                                ),
                                ),
                                SizedBox(width: 15,),
                               Container(
                                width: MediaQuery.of(context).size.width - 230,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.favorite,
                                    color: Colors.red, size: 30,),
                                    SizedBox(width: 5,),
                                    Text("2.3k",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      
                                    ),
                                    ),
                                  ],
                                ),
                                ),
                               
                              ],
                            )


                      ],
                    ),
                  ),
                ),
              )

            
          ],
        ),
      )
    );
  }
  
  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children:[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            
          ]
        ),
        SizedBox(height: 10,),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.brown,
          ),
          child: Center(
            child: Text("Follow",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        )
      ],
    );
  }
}


