import 'package:flutter/material.dart';
import 'package:my_app1/pages/secondPage.dart';
import 'package:my_app1/pages/home.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.cyan,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/second': (context) => const Second_page(),
    },
  ),
);

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   double _ccc = 50;

//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle style = ElevatedButton.styleFrom(primary: Colors.white54, textStyle: TextStyle(color: Colors.black));
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.only(top: 80.0, right: 30.0, bottom: 20.0, left: 30.0),
//             child: Text("What is your weight goal?", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)), 
//           ),
//           Row(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 30.0),
//                 child:  Text(extFun(_ccc.round()), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black26)),
//               )
//             ] 
//           ),
//           WaveSlider(
//                 displayTrackball: true,
//                 onChanged: (double dd){
//                   setState(() {
//                   _ccc = dd * 100;
//                 });
//               },
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(_ccc.round().toString()),
//           ),
//           ElevatedButton(
//             onPressed: (){},
//             child: Container(
//               width: 90.0,
//               height: 30.0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text('Countinue', style: TextStyle(color: Colors.black),),
//                   Icon(Icons.arrow_forward, color: Colors.black,)
//                 ],
//               ),
//             ),
//             style: style,
//           ),
//         ],
//       ),
//     );
//   }
// }

// String extFun(int bal) {
//   if (bal < 50) {
//     return "UnderWeight";
//   }
//   else if (bal <= 60 && bal >= 50) {
//     return "Balanced";
//   } 
//   else {
//   }
//   return "OverWeight";
// }
// // Column(
// //         children: [
// //           //const Padding(padding: EdgeInsets.all(20.0)),
// //           Container(
// //             child: Column(
// //               children: [
// //                 const Text("What is your weight goal?",
// //                     style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
// //                 const Padding(padding: EdgeInsets.only(top: 20)),
// //                 Row(
// //                   children: const [
// //                     Text("Balanced",
// //                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black26)),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //             margin: EdgeInsets.only(top: 60, left: 40, right: 40, bottom: 0),
// //           ),
// //           // Container(
// //           //   margin: EdgeInsets.only(top: 30, left: 0, right: 0, bottom: 0),
// //           //   child: Slider(
// //           //     thumbColor: Colors.black,
// //           //     activeColor: Colors.black26,
// //           //     inactiveColor: Colors.black26,
// //           //     value: _currentSl,
// //           //     min: 1,
// //           //     max: 100,
// //           //     divisions: 100,
// //           //     label: _currentSl.round().toString() + " kg",
// //           //     onChanged: (double value) { setState(() {
// //           //       _currentSl = value;
// //           //     });
// //           //     },
// //           //   ),
// //           // ),
// //           Text("Continue ->"),
// //           WaveSlider(
// //             displayTrackball: false,
// //             onChanged: ((double drag){
// //               setState(() {
// //                 _ccc = drag * 100; 
// //               });
// //             }),
            
// //           ),
// //         ],
// //       ),