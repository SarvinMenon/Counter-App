import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int number = 0;
  
  void increment(){
    
    setState(()=> number ++);
  }
  
   void decrement(){
    
    setState(()=> number --);
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar:AppBar(
    title: Text('CounterApp'),
    ),
      body : Center(
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
      children:[
        Text(
        'This is how much money I have:',
         style: TextStyle(fontSize:20),
        ),
        Text(
        '\$$number',
        style:TextStyle(fontSize:130),
        ),
      ],
      ),
   ),
      floatingActionButton: Row(
        mainAxisSize : MainAxisSize.min,
        children:[
          //increment
     FloatingActionButton(
      onPressed:increment,
      child:Icon(Icons.add),  
      ),
      SizedBox(width:10),
          //decrement
      FloatingActionButton(
      onPressed:decrement,
      child:Icon(Icons.remove),  
      ),
      ],
      ),
    );
  }
}
