import 'package:flutter/material.dart';
import 'package:project6/neww/addtask.dart';
import 'package:project6/neww/edit.dart';

import '../services/todoservices.dart';

class summi extends StatefulWidget {
  const summi({super.key});

  @override
  State<summi> createState() => _summiState();
}

class _summiState extends State<summi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9395d),
      appBar: AppBar(
        title: Text(
          "TODO APP",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff9395d3),
        actions: [
          Icon(
            Icons.date_range,
            color: Colors.white,
          ),
        ],
      ),
      body: todolist.length == 0
          ? Center(
              child: Text(
              "addtask",
              style: TextStyle(fontSize: 40, color: Colors.grey),
            ))
          : ListView.builder(
              itemCount: todolist.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                    title: Text(
                      todolist[index]['title'],
                      style: TextStyle(color: Color(0xff9395d3)),
                    ),
                    subtitle: Text(
                      todolist[index]['detail'],
                      style: TextStyle(fontSize: 15),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => edit(
                                        title: todolist[index]['title'],
                                        detail: todolist[index]['detail'],
                                        index: index)));
                          },
                          icon: Icon(Icons.edit),
                          color: Color(0xff9395d3),
                        ),
                        IconButton(
                            onPressed: () {
                              delete(index);
                              print(todolist);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete_outline),
                            color: Color(0xff9395d3)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.verified_user_outlined),
                            color: Color(0xff9395d3))
                      ],
                    )),
              ),
            ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => task(),
              )).then((value) => setState(() {}));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
