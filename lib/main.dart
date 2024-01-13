import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

 @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Student Teacher Performance Analyzer'),
      ),
      body:Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Text('LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.deepOrange,

                ) ,
              ),
            ),
            Container(
                width: 200,
                height: 300,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [

                     ElevatedButton(
                       child: Text('Institute',style: TextStyle(
                         fontSize: 35,
                         fontWeight: FontWeight.bold,
                        // color: Colors.white,
                       ),
                       ),
                       onPressed: (){
                         print('Intitute Login');
                       },


                     ),
                     ElevatedButton(
                       child: Text('Teacher',style: TextStyle(
                         fontSize: 35,
                         fontWeight: FontWeight.bold,
                         //color: Colors.white,
                       ),
                       ),
                       onPressed: (){
                         print('Teacher Login');
                       },

                     ),
                     ElevatedButton(
                       child: Text('Student',style: TextStyle(
                         fontSize: 35,
                         fontWeight: FontWeight.bold,
                         //color: Colors.white,
                       ),
                       ),
                       onPressed: (){
                         print('Student Login');
                       },

                     ),
                   ],

                ),
              ),
          ],
        ),
        ),

    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
