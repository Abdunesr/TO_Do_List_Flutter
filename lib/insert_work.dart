import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_list_app/model/do_model.dart';
import 'package:to_do_list_app/task_card.dart';

class InsertWork extends StatefulWidget {
  InsertWork(  {super.key});

  /* final void Function(DoModel modeldata) plustask; */
  

  @override
  State<InsertWork> createState() {
    return _InsertWork();
  }
}

class _InsertWork extends State<InsertWork> {
  final _titelController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _amountController = TextEditingController();

  String _selectedAgeRange = 'TUSDAY';

  final List<String> _ageRanges = [
    'MONDAY',
    'TUSDAY',
    'WEDNSDAY',
    'THURSDAY',
    'FRIDAY',
    'SATURDAY',
    'SUNDAY',
  ];

  void _submitExpenseData() {
    final enteredData = double.tryParse(_amountController.text);
    final amountIsInvalid = enteredData == null || enteredData <= 0;
    

    if (_titelController.text.trim().isEmpty ||
        amountIsInvalid ||
        _descriptionController.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text("Invalid Input"),
          content: const Text(
              "please make sure a Insert the correct Input check All of the inputs are correct and try again!"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                },
                child: const Text("okay"))
          ],
        ),
      );
      return;
    }
  /*   widget.plustask(
      DoModel(
          titel: _titelController.text,
          amount: enteredData,
          Descrtiption: _descriptionController.text,
          catagory: Catagory.values[0 ]),
    ); */
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 90),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 124, 226, 239),
            Color.fromARGB(255, 6, 158, 158)
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _titelController,
              maxLength: 20,
              decoration: const InputDecoration(
                  label: Text(
                    " TASK TITEL",
                    style: TextStyle(color: Colors.black),
                  ),
                  hintText: 'please add the title of the Task',
                  hintStyle: TextStyle(color: Colors.black)),
            ),
            TextField(
              controller: _descriptionController,
              maxLength: 50,
              decoration: const InputDecoration(
                  label: Text(
                    " Descrtiption ",
                    style: TextStyle(color: Colors.black),
                  ),
                  hintText: 'Describe the work/Task you have to acomplish',
                  hintStyle: TextStyle(color: Colors.black)),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 140,
                  child: TextField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefixText: '/hr    ',
                      label:
                          Text("Time ", style: TextStyle(color: Colors.black)),
                      hintText: 'How Long',
                    ),
                  ),
                ),
                const Spacer(),
                const Text("SELECT DAY"),
                const SizedBox(
                  width: 6,
                ),
                DropdownButton<String>(
                  value: _selectedAgeRange,
                  hint: const Text("optional"),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedAgeRange = newValue!;
                    });
                  },
                  items:
                      _ageRanges.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: _submitExpenseData,
                  child: const Text("save Task"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
