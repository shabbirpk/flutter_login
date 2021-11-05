import 'package:flutter/material.dart';

////Problem was here in main function
void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter your name'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter you password'),
                ),
              ),
              RaisedButton(
                color: Colors.lightBlue,
                textColor: Colors.white,
                child: Text('Sign in'),
                // onPressed: (){
                //   return showDialog(
                //       context: context,
                //       builder: (context){
                //         return AlertDialog(
                //           title: Text('Alert!!!!'),
                //           content: Text(nameController.text),
                //           actions: [
                //             new FlatButton(
                //                 onPressed: (){
                //                   Navigator.of(context).pop();
                //                 },
                //                 child: Text('OK'))
                //
                //           ],
                //         );
                //       }
                //   );
                // }
                onPressed: () {
                  testAlert(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void testAlert(BuildContext context) {
    var alert = AlertDialog(
      title: Text('Alert!!!'),
      content: Text(nameController.text),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
