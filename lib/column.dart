import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mybody extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return mystate();
  }
}
class mystate extends State<mybody>
{
  var n=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('$n',style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: (){
                n++;setState((){});
              },child:const Icon(Icons.add))
            ],
          ),
      ),
    );
  }
}