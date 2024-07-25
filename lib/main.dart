import 'package:flutter/material.dart';
import 'package:to_do_list_app/drawer.dart';
import 'package:to_do_list_app/insert_work.dart';
import 'package:to_do_list_app/mediator.dart';
import 'package:to_do_list_app/settingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(


       theme: ThemeData().copyWith(
        bottomSheetTheme:const  BottomSheetThemeData().copyWith(
          backgroundColor: Colors.teal

        ),
          ),



       

      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
   
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void __opensheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => InsertWork(),
    );
  }

  var activeScreen = 'Home-page';

  void SwitchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void homebacker() {
    setState(() {
      activeScreen = 'Home-page';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: activeScreen == 'Home-page'
            ? const Color.fromARGB(255, 89, 208, 210)
            : const Color.fromARGB(255, 75, 121, 213),
        appBar: AppBar(
          backgroundColor:const  Color.fromARGB(175, 26, 79, 84),
          title: Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.sunny))
            ],
          ),
        ),
        drawer: Drawers(SwitchScreen, homebacker),
        body: activeScreen == 'Home-page' ? Mediator() : Settingscreen(),
        floatingActionButton: activeScreen == 'Home-page'
            ? FloatingActionButton(
                onPressed: __opensheet,
                child: const Icon(Icons.add),
              )
            : null, // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
