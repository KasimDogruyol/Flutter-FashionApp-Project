import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;
  Detay({this.imgPath});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children : [
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 15.0,
          left: 15.0,
          right: 15.0,
          child: Material(
            borderRadius: BorderRadius.circular(10.0),
            elevation: 4.0,
            child: Container(
            width: MediaQuery.of(context).size.width - 30.0,
            height: 260.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 125.0,
                        height: 125.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/images/dress.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("LAMINATED",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                        ),
                        SizedBox(height: 5.0,),
                        Text("Louis Vuitton",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                        ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width - 200.0,
                          child: Text(
                            "One button Vneck sling long-sleeved waist female stitching dress",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          ),
                      ],
                    )
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$6500',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: FloatingActionButton(
                          onPressed: (){},
                          child: Center(child: Icon(Icons.arrow_forward_ios)),
                          backgroundColor: Colors.brown,
                        ),
                      )
                    ],
                  ),
                )

              ],
            )
            ),
          ),
            
          ),
          Positioned(
            top: 30.0,
            left: 15.0,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/2,
            left:50.0,
            child: Container(
              width: 130.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "LAMINATED",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  Icon( Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 18.0,)
                ],
              ),
            ),
          )
       ]
        ),
        
    
       
      
    );
  }
}