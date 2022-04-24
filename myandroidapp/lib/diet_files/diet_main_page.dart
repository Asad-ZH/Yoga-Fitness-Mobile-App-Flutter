import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myandroidapp/Fitness_files/flexibilty_essentials.dart';
import 'package:myandroidapp/diet_files/sub_diet_files/diet_main_page_1.dart';
import 'package:myandroidapp/diet_files/sub_diet_files/diet_main_page_2.dart';
import 'package:myandroidapp/diet_files/sub_diet_files/diet_main_page_3.dart';
import 'package:myandroidapp/diet_files/sub_diet_files/diet_main_page_4.dart';
import 'package:myandroidapp/diet_files/sub_diet_files/diet_main_page_5.dart';

class Diet extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title:Image.network(
            "https://github.com/Asad-ZH/yoga-app/blob/main/myandroidapp/assets/appbarlogo.jpg?raw=true",
            fit: BoxFit.contain,
            height: 50,
          ),

        ),
        body:Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(color: Colors.black),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,

              child: Stack(

              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Diet And Health", style: TextStyle(color: Colors.white,fontSize: 24)),
                    ],
                  ),
                ),


                Center(
                  child: Container(

                    margin: EdgeInsets.fromLTRB(
                        0,
                        MediaQuery.of(context).size.width * 0.35,
                        0,
                        0),

                    child: Column(

                      children: [
                        GestureDetector(
                          child: buildImageInteractionCard1(),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Diet1()),
                            );
                          },
                        ),
                        SizedBox(height: 20),

                        GestureDetector(
                          child: buildImageInteractionCard2(),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Diet2()),
                            );
                          },
                        ),
                        SizedBox(height: 20),

                        GestureDetector(
                          child: buildImageInteractionCard3(),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Diet3()),
                            );
                          },
                        ),

                        SizedBox(height: 20),

                        GestureDetector(
                          child: buildImageInteractionCard4(),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Diet4()),
                            );
                          },
                        ),
                        SizedBox(height: 20),

                        GestureDetector(
                          child: buildImageInteractionCard5(),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Diet5()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

              ],
              ),
            ),
        )
    );
  }
}
Widget buildImageInteractionCard1() =>  Card(
  color: Colors.red.shade900,

  semanticContainer: true,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child:Container(
    height: 220,
    child: Column(

      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
              0,0,0,15
          ),
          child:
          Ink.image(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1509722747041-616f39b57569?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNhbmR3aWNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
            ),
            height: 160,
            width: 370,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,0),
            child: Text(
              'Rosty Toasty',
              style: TextStyle(fontSize: 20,color: Colors.white ),
            ),
          ),
        ),
      ],
    ),
  ),
);

Widget buildImageInteractionCard2() =>  Card(
  color: Colors.brown,

  semanticContainer: true,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child:Container(
    height: 220,
    child: Column(

      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
              0,0,0,15
          ),
          child:
          Ink.image(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1528207776546-365bb710ee93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFuY2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
            ),
            height: 160,
            width: 370,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,0),
            child: Text(
              'Flourless Pancakes',
              style: TextStyle(fontSize: 20,color: Colors.white ),
            ),
          ),
        ),
      ],
    ),
  ),
);

Widget buildImageInteractionCard3() =>  Card(
  color: Colors.purple.shade900,

  semanticContainer: true,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child:Container(
    height: 220,
    child: Column(

      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
              0,0,0,15
          ),
          child:
          Ink.image(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1490474418585-ba9bad8fd0ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnJ1aXQlMjBib3dsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
            ),
            height: 160,
            width: 370,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,0),
            child: Text(
              'Breakfast Bowl',
              style: TextStyle(fontSize: 20,color: Colors.white ),
            ),
          ),
        ),
      ],
    ),
  ),
);

Widget buildImageInteractionCard4() =>  Card(
  color: Colors.green.shade900,

  semanticContainer: true,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child:Container(
    height: 220,
    child: Column(

      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
              0,0,0,15
          ),
          child:
          Ink.image(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXZvY2Fkb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
              ),
            height: 160,
            width: 370,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,0),
            child: Text(
              'Avocado Feta Wrap',
              style: TextStyle(fontSize: 20,color: Colors.white ),
            ),
          ),
        ),
      ],
    ),
  ),
);

Widget buildImageInteractionCard5() =>  Card(
  color: Colors.blue.shade600,

  semanticContainer: true,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child:Container(
    height: 220,
    child: Column(

      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
              0,0,0,15
          ),
          child:
          Ink.image(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1596560548464-f010549b84d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cmljZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
            ),
            height: 160,
            width: 370,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,0),
            child: Text(
              'Turkey Fried Rice',
              style: TextStyle(fontSize: 20,color: Colors.white ),
            ),
          ),
        ),
      ],
    ),
  ),
);

