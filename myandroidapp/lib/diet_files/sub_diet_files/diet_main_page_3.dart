import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myandroidapp/Fitness_files/sub_fitness_file/Balance_essentials_info.dart';
import 'package:myandroidapp/Fitness_files/sub_fitness_file/Strength_essentials_info.dart';

class Diet3 extends StatelessWidget {
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
                          "https://images.unsplash.com/photo-1490474418585-ba9bad8fd0ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnJ1aXQlMjBib3dsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
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
                    Text("Breakfast Bowl", style: TextStyle(color: Colors.white,fontSize: 24)),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.purple.shade900),
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(const Radius.circular(8))
                ),

                height: MediaQuery.of(context).size.height * 0.23,
                margin: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.05,
                    MediaQuery.of(context).size.width * 0.6,
                    MediaQuery.of(context).size.width * 0.05,
                    0),
                child: Container(
                    padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.width * 0.05,

                    ),
                    child: Text("The Blackstone nutrition plan helps you reach your goals faster.If you eat well according to the nutrition plan, you collect points everyday. More points mean faster progress through healthier nutrition. Very Simple, very flexible. ",style: TextStyle(fontSize: 16,color: Colors.white),))
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 500,
                    width: 500,
                  ),
                  ElevatedButton(
                      child: Text('Unlock Premium'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.purple.shade900,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      onPressed: () => {}
                  ),



                ],
              ),
            ]
        )
    );
  }
}
