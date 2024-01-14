import 'package:flutter/material.dart';
import 'package:flutter_next/view/classeList.dart';


class Home extends StatefulWidget {
  @override
  HomeView createState() => HomeView();
}

class HomeView extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
                child: Form(
//            key: _keyForm,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline),
                            labelText: 'Email',
                            border: OutlineInputBorder()
                        ),
                        /* validator: (val) => val.isEmpty ? 'Entrez votre email' : null,
                        onChanged: (val) => email = val,*/
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                            labelText: 'Mot de passe',
                            border: OutlineInputBorder()
                        ),
                        /* validator: (val) => val.length < 6 ? 'Entrez un password avec ou + de caracteres' : null,
                        onChanged: (val) => password = val,*/
                        obscureText: true,
                      ),
                      SizedBox(height: 20.0),

                      SizedBox(height: 20.0),
                      // ignore: deprecated_member_use
                      OutlineButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ClasseList()));
                        },
                        borderSide: BorderSide(width: 10.0, color: Colors.blue),
                        child: Text(
                          'Valide-moi', style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      // ignore: deprecated_member_use

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}