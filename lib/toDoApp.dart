import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/style.dart';

class toDoApp extends StatefulWidget {
  const toDoApp({super.key});

  @override
  State<toDoApp> createState() => _toDoAppState();
}

class _toDoAppState extends State<toDoApp> {
  List ToDoList=[];
  String item="";

  MyIteamOnChange(value){
    item=value;
  }

  addIteam(){
    ToDoList.add({"item":item});
  }

  removeIteam(index){
    ToDoList.removeAt(index);
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO APP"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                        flex: 70,
                        child: TextFormField(
                          onChanged:(value){MyIteamOnChange(value);},
                          decoration: MyInputFrom("Enter your Task"),
                        )
                    ),
                    Expanded(
                        flex: 30,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: ElevatedButton(onPressed: (){
                            addIteam();
                            setState(() {});
                          }, child: Text("ADD"),style: MyButtonToDo(),),
                        )
                    )
                  ],
            )),
            Expanded(
                flex: 90,
                child: ListView.builder(
                    itemCount: ToDoList.length,
                    itemBuilder: (context,index){
                      return Card(
                        child:MySizeBox50(
                          Row(
                            children: [
                              Expanded(
                                flex: 80,
                                child: Text(ToDoList[index]["item"].toString()),
                              ),
                              Expanded(
                                flex: 20,
                                child: TextButton(onPressed: (){
                                  removeIteam(index);
                                  setState(() {
                                  });
                                }, child: Icon(Icons.delete)),
                              )
                            ],
                          )
                        ),
                      );
                    }
                ),
            )
          ],
        ),
      ),
    );
  }
}
