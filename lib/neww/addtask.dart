import 'package:flutter/material.dart';
import 'package:project6/neww/edit.dart';
import 'package:project6/services/todoservices.dart';

class task extends StatelessWidget {
   task({super.key});

TextEditingController titleController=TextEditingController();
TextEditingController detailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Task",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff9395d3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(controller: titleController,
              decoration: InputDecoration(hintText: "Title"),
            ),
            TextField(controller: detailController,
              decoration: InputDecoration(hintText: "Details"),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Map<String,dynamic> todo={
                 'title': titleController.text,
                  'detail':detailController.text,
                };
                addtodo(todo);
                print(todo);
                print("clicked");
                print(titleController.text);
                print(detailController.text);
                Navigator.pop(context);
              },
              child: Text("ADD"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xff9395d3)),
            )
          ],
        ),
      ),
    );
  }
}

