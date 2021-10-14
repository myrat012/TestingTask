import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:wave_slider/wave_slider.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    
  double _ccc = 55;
  
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(primary: Colors.white54, textStyle: const TextStyle(color: Colors.black));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 80.0, right: 30.0, bottom: 20.0, left: 30.0),
            child: Text("What is your weight goal?", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)), 
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child:  Text(extFun(_ccc.round()), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black26)),
              )
            ] 
          ),
          WaveSlider(
                displayTrackball: true,
                onChanged: (double dd){
                  setState(() {
                  _ccc = dd * 100;
                });
              },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_ccc.round().toString()),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
            child: SizedBox(
              width: 90.0,
              height: 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Countinue', style: TextStyle(color: Colors.black),),
                  Icon(Icons.arrow_forward, color: Colors.black,)
                ],
              ),
            ),
            style: style,
          ),
        ],
      ),
    );
  }
}

String extFun(int bal) {
  if (bal < 50) {
    return "UnderWeight";
  }
  else if (bal <= 60 && bal >= 50) {
    return "Balanced";
  } 
  else {
  }
  return "OverWeight";
}