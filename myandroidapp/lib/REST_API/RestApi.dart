import 'package:flutter/material.dart';
import 'package:myandroidapp/REST_API/controller/Todo_Controller.dart';
import 'package:myandroidapp/REST_API/repository/todo_repository.dart';

import '../Settings.dart';
import 'models/todo.dart';


class RestApi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var todoController = TodoController((TodoRepository()));
    todoController.fetchTodoList();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text("Settings"),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Settings()),
                );
              },
            ),
          ],
        ),
        body:FutureBuilder<List<Todo>>(
          future: todoController.fetchTodoList(),
          builder: (context, snapshot)
          {
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }
            if(snapshot.hasError){
              return Center(
                child: Text('error'),
              );
            }
            return buildBodyContent(snapshot, todoController);
          },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Todo todo = Todo(userId: 3, title: 'sample post', completed: false);
          todoController.postTodo(todo);
          },
        child: Icon(Icons.add),
      ),
    );
  }

  SafeArea buildBodyContent(AsyncSnapshot<List<Todo>> snapshot, TodoController todoController) {
    return SafeArea(
            child: ListView.separated(itemBuilder: (context,index){
              var todo = snapshot.data?[index];

              return Container(
                height: 100.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(flex: 1,child: Text('${todo?.id}')),
                    Expanded(flex: 3,child: Text('${todo?.title}')),
                    Expanded(flex: 2,child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap:(){
                              todoController.updatePatchCompleted(todo!).then((value) {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    duration: const Duration(milliseconds: 500),
                                    content: Text('$value'),
                                  ),
                                );
                              });
                            },
                            child: buildCallContainer("patch",Colors.orangeAccent)),

                        InkWell(
                            onTap:(){
                               todoController.updatePutCompleted(todo!);
                            },
                          child: buildCallContainer("put",Colors.deepPurpleAccent)),
                        InkWell(
                            onTap:(){
                              todoController.deleteTodo(todo!).then((value) {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  duration: const Duration(milliseconds: 500),
                                  content: Text('$value'),
                                ),
                                );
                              });
                            },
                          child: buildCallContainer("del",Colors.redAccent)),
                      ],
                    )),
                  ],
                ),
              );
            }, separatorBuilder: (context, index){
              return Divider(thickness: 0.5, height: 0.5,);
            }, itemCount: snapshot.data?.length??0),
          );
  }

  Container buildCallContainer(String title,Color color) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.circular(10.0)),
      child:Center(child: Text("$title")),
      );
  }
}

