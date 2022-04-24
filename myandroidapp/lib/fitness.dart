import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  Fitness extends StatelessWidget {
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
                height: MediaQuery.of(context).size.height * 0.15,
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("New Fitness Routines", style: TextStyle(color: Colors.white,fontSize: 24)),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green.withOpacity(0.4)),
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(const Radius.circular(8))
                ),

                height: MediaQuery.of(context).size.height * 0.36,
                margin: EdgeInsets.fromLTRB(
                    0,
                    MediaQuery.of(context).size.width * 0.35,
                    0,
                    0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,0,3),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                          NetworkImage('https://images.unsplash.com/photo-1552196563-55cd4e45efb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHlvZ2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                          backgroundColor: Colors.transparent,
                          ),
                      ),

                      title:Text('Back Flexibility Vol.2',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,0,3),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                          NetworkImage('https://images.unsplash.com/photo-1532798442725-41036acc7489?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHlvZ2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),

                      title:Text('Healthy and Peaceful Mind',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,0,3),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                          NetworkImage('https://images.unsplash.com/photo-1561049501-e1f96bdd98fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHlvZ2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),

                      title:Text('Stetch and Workout',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),
                    Divider(),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.fromLTRB(0,3,0,3),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                          NetworkImage('https://images.unsplash.com/photo-1562088287-bde35a1ea917?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHlvZ2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),

                      title:Text('Easy Shoulder Exercise',style: TextStyle(color: Colors. white),),
                      onTap: () =>null,
                    ),

                  ],
                ),
              ),
            ]
        )
    );
  }
}
