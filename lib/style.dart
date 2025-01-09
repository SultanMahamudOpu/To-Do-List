import 'package:flutter/material.dart';

InputDecoration MyInputFrom(label){
  return InputDecoration(
    contentPadding: EdgeInsets.all(8),
    border: OutlineInputBorder(),
    labelText: label,
    fillColor: Colors.greenAccent,
    filled: true,
  );
}

ButtonStyle MyButtonToDo(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    backgroundColor: Colors.green,
  );
}

SizedBox MySizeBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child:child ,
    ),
  );
}