import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference our box
  final _myBox = Hive.box('mybox');

  // write data
  void writeData() {
    _myBox.put(1, 'Rhuan');
  }

  // read data
  void readData() {
    print(_myBox.get(1));
  }

  void deleteData() {
    _myBox.delete(1);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            onPressed: writeData,
            child: Text('Write'),
            color: Colors.blueAccent,
          ),
          MaterialButton(
            onPressed: readData,
            child: Text('Read'),
            color: Colors.blueAccent,),
          MaterialButton(
            onPressed: deleteData,
            child: Text('Delete'),
            color: Colors.blueAccent,),
        ],
      )),
    );
  }
}