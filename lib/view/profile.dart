import 'package:flutter/material.dart';
import 'package:flutter_next/ModelList.dart';
import 'EtudiantList.dart';


class EtudiantList extends StatefulWidget {
  @override
  _EtudiantListState createState() => _EtudiantListState();
}
class _EtudiantListState extends State<EtudiantList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ModelList.etudiant.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => IdEtudiant()));
                  },
                title: Text(
                    ModelList.etudiant[index].nom +'   '+ModelList.etudiant[index].prenom
                ),
                trailing: Checkbox(
                  value: ModelList.etudiant[index].checked,
                  onChanged: (value) {
                    setState(() {
                      setState(() {
                        ModelList.etudiant[index].checked=value;
                      });
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}