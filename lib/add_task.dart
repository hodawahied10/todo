import 'package:flutter/material.dart';

class addTask extends StatefulWidget {
  @override
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add New Task',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            TextFormField(decoration: InputDecoration(labelText: 'Titel')),
            TextFormField(
              maxLines: 4,
              maxLength: 4,
              decoration: InputDecoration(labelText: 'description'),
            ),
            Text(
              'Select Date',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            InkWell(
              onTap: showTaskDatePicker,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '12/12/2023',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: (){},
                child: Text('submit',style: TextStyle(
                  color: Colors.white
                ),

                )
            )
          ],
        ),
      ),
    );
  }

  void showTaskDatePicker(){
showDatePicker(context: context,
    initialDate: DateTime(2020, 4, 20),
    firstDate: DateTime(2019, 1, 15),
    lastDate: DateTime(2020, 11, 20));
  }
}
