import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:HomeScreen() ,
    );

  }


}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int countNumber=0;

  void decCount() {
    if (countNumber > 0) {
      setState(() {
        countNumber--;
      });
    }
  }
  void incCount() {

      setState(() {
        countNumber++;
      });
    }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffe Shop",style:TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor:Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 33,
            ),
          ),

        ],

      ),
      body:
      
    Column(
      children: [
        Image.network('https://i.pinimg.com/564x/77/19/ec/7719ecac01ca59281d529d1b9ae2c85f.jpg',
        ),
        Text("Turkish Coffee",style:TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 30),),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Turkish coffee is a traditional Turkish beverage that’s popular in Turkey and other parts of Europe and Asia"),
      ),
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                decCount();
              },
                  style:ElevatedButton.styleFrom(primary: Colors.black,shape:CircleBorder() ),
                  child:Icon(Icons.minimize,size: 25,)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "$countNumber",
                    style: TextStyle(fontSize: 30,color: Colors.black)
                ),
              ),

              ElevatedButton(onPressed: (){
                incCount();
              },
                  style:ElevatedButton.styleFrom(primary: Colors.black,shape:CircleBorder()),
                  child:Icon(Icons.add,size: 25,)),
            ],
          ),
        ),
        ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(primary: Colors.black),
            child:
        Text("Add to Card"))

      ],
    ),
      
        

    );
  }
}



