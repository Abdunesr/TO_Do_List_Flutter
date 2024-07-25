import 'package:flutter/material.dart';
import 'package:to_do_list_app/insert_work.dart';
import 'package:to_do_list_app/model/do_model.dart';

class TaskCard extends StatelessWidget{
 const  TaskCard({super.key,
                 required this.alldata});


  final List<DoModel> alldata;




  @override
  Widget build(BuildContext context) {
    

    return Card(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(alldata[0].titel,style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(alldata[0].Descrtiption ),
                const Spacer(),
                 Row(
                  children: [
                    const SizedBox(width: 8,),
                    Text(alldata[0].amount.toString())
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
