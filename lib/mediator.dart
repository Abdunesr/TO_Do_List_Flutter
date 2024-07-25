import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_list_app/drawer.dart';
import 'package:to_do_list_app/insert_work.dart';
import 'package:to_do_list_app/model/do_model.dart';
import 'package:to_do_list_app/task_card.dart';

class Mediator extends StatefulWidget {
  @override
  State<Mediator> createState() {
    return _Mediator();
  }
}

class _Mediator extends State<Mediator> {
 final  List<DoModel> _registeredTasks = [
    DoModel(
      titel: "READING",
      amount: 2,
      Descrtiption: "i will read fluttter text book for 2 hrs ",
      catagory: Catagory.MONDAY,
    ),
  ];
  


  void _addTasks(DoModel task){
    setState(() {
      _registeredTasks.add(task);
    });
  }


  @override
  Widget build(BuildContext context) {
    Widget  temp=_registeredTasks.length==null? Text("there is no data"): TaskCard(alldata: _registeredTasks);
    return   
       Column(
       
        children:<Widget> [ temp,
        ],
      );
    
  }
}
