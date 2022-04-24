import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myandroidapp/Fitness_files/sub_fitness_file/flexibilty_essentials_info.dart';

class  FlexibiltyEssentialsInfo extends StatelessWidget {
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
        body:Stack(
            children:[
              Container(
                decoration: BoxDecoration(color: Colors.black),
              ),


              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8eW9nYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
                      ),
                      fit: BoxFit.cover,
                    )),
                height: MediaQuery.of(context).size.height * 0.25,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.fromLTRB(0,
                    MediaQuery.of(context).size.width * 0.05,0,
                    0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Flexibility Essentials", style: TextStyle(color: Colors.white,fontSize: 24)),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green.withOpacity(0.4)),
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(const Radius.circular(8))
                ),

                height: MediaQuery.of(context).size.height * 0.76,
                margin: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.05,
                    MediaQuery.of(context).size.width * 0.6,
                    MediaQuery.of(context).size.width * 0.05,
                    0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      1.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text("Wide fold with hands behind",style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      2.',style: TextStyle(color: Colors. white),),
                      ),
                      title:Text('Wide stance with side stretch',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      3.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('Peaceful Warrior',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      4.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('Extended Arms Chair',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      5.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('Support standing backbend',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      6.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('Tree pose',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      7.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('revoled trinagle',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      8.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('Dancer',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      9.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('Extended Side Angle',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      10.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('Gate Pose',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,30,3),
                        child: Text('      11.',style: TextStyle(color: Colors. white),),
                      ),

                      title:Text('Corpse pose',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(color: Colors.green,),

                  ],
                ),
              ),
            ]
        )
    );
  }
}
