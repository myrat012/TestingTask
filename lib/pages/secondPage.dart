// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class Second_page extends StatefulWidget {
  const Second_page({ Key? key }) : super(key: key);

  @override
  _Second_pageState createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const Icon(
            Icons.done,
            size: 50.0,
          ),
          const Text("You're all set", style: TextStyle(color: Colors.black, fontSize: 30.0),),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, right: 40.0, bottom: 30.0, left: 40.0),
            child: Text("You can now start to use the app with all the features.", style: TextStyle(color: Colors.black38, fontSize: 20.0,), textAlign: TextAlign.center ,),
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text("Continue", style: TextStyle(fontSize: 25.0),),
            )
        ],
      ),
    );
  }
}