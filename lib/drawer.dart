import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Drawers extends StatelessWidget {
 const  Drawers(this.changer,this.back,{super.key});
  final void Function() changer;
  final void Function() back;


  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: const Color.fromARGB(255, 7, 255, 23),
        backgroundColor:  Color.fromARGB(165, 39, 207, 190),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 180,
              width: double.infinity,
              color: Colors.black,
              alignment: Alignment.centerLeft,
              child: const Text(
                "What am I Gonna  DO 🤔 ! ✈️  🖥️ 🏋🏿",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
             ListTile(
              hoverColor: Colors.amber,
              focusColor: Colors.red,
              leading: const Icon(
                Icons.home,
                size: 26,
              ),
              title:const  Text(
                "Home ",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              onTap: back,
            ),
             ListTile(
              hoverColor: Colors.amber,
              focusColor: Colors.red,
              leading: const Icon(
                Icons.work,
                size: 26,
              ),
              title:const  Text(
                "All works",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              onTap: changer,
            ),

             ListTile(
              hoverColor: Colors.amber,
              focusColor: Colors.red,
              leading: const Icon(
                Icons.pie_chart,
                size: 26,
              ),
              title:const  Text(
                "pie_chart",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              onTap: (){},
            ),

                ListTile(
              hoverColor: Colors.amber,
              focusColor: Colors.red,
              leading: const Icon(
                Icons.settings,
                size: 26,
              ),
              title:const  Text(
                "Setting",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              onTap: changer,
            ),
             

          ],
        ));
  }
}
