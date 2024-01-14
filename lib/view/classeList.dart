import 'package:flutter/material.dart';
import 'package:flutter_next/ModelList.dart';
import 'package:flutter_next/view/profile.dart';
class ClasseList extends StatefulWidget {
  @override
  _ClasseListState createState() => _ClasseListState();
}

class _ClasseListState extends State<ClasseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ModelList.classes.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => EtudiantList()));
                  },
                title: Text(
                    ModelList.classes[index].niveau
                ),

                leading: CircleAvatar(
                  child: Text(
                      "1"
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}