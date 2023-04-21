import 'package:flutter/material.dart';

void main()
{
  runApp(Apple());
}
class Apple extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget
{
  var n=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    
      body:Center(
        child: StatefulBuilder(
          builder: (context, setState) =>  Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('$n',style: TextStyle(fontSize: 25),),
                ElevatedButton(onPressed: (){
                  n++;setState((){});
                },child:const Icon(Icons.add)),
              ],
            ),
        ),
      )
    );
  }
}