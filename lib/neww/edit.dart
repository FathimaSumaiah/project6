import 'package:flutter/material.dart';
import 'package:project6/services/todoservices.dart';

class edit extends StatefulWidget {
   edit({required this.title,required this.detail,required this.index,super.key});

String title;
String detail;
int index;

  @override
  State<edit> createState() => _editState();
}
class _editState extends State<edit> {
  TextEditingController titleController=TextEditingController();

  TextEditingController detailController=TextEditingController();
@override
  void initState() {
  titleController.text=widget.title;
  detailController.text=widget.detail;// TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Task",
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

              Row(
                children: [
                  Expanded(child:
                  ElevatedButton(
                    onPressed: () {
                      Map<String,dynamic> todo={
                        'title': titleController.text,
                        'detail':detailController.text,
                      };
                      updatetodo(todo, widget.index);
                      Navigator.pop(context);
                    },
                    child: Text("Update"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color(0xff9395d3)),
                  ),
                  ),
              SizedBox(width: 20,),
                  Expanded(child:
                  ElevatedButton(
                    onPressed: () {

                      Navigator.pop(context);
                    },
                    child: Text("cancel"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color(0xff9395d3)),
                  ),
                  ),],
              ),
            ]

        ),
      ),
    );
  }
}
