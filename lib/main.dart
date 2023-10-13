import 'package:cats_api/presntation/cats_page.dart';
import 'package:cats_api/data/model/cat.dart';
import 'package:cats_api/presntation/home_page.dart';
import 'package:cats_api/presntation/more_cats.dart';
import 'package:cats_api/data/remote/cats_api.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
      theme: ThemeData(
        textTheme: const TextTheme(
            displayMedium:
                TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const HomePage()
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   bool _isVisible = false;
//   TextEditingController text = TextEditingController();

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
     
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 16,),
//           const Text(
//                   " Random cats",
//                   style: TextStyle(color:Colors.deepPurple,fontSize: 50, fontWeight: FontWeight.w600, fontFamily: "Cookie-Regular"),
//                 ),
//                   Lottie.asset("assets/images/data.json"),
       

//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CatPage(),
//                       ));
//                 },
//                 child: Text(
//                   " Random Cat Image",
//                   style: TextStyle(fontSize: 20),
//                 )),

//             ElevatedButton(
//                 onPressed: () {
                  
//                   setState(() {
//                     _isVisible = true;
//                   });
//                 },
//                 child: Text(
//                   "More than one Random Cat Image!",
//                   style: TextStyle(fontSize: 20),
//                 )),
//             Visibility(
//               visible: _isVisible,
//               child: TextField(
//                 controller: text,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                     hintText: 'Enter the number of cats you want here',
//                     suffixIcon: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     MoreCatsPage(a: int.parse(text.text)),
//                               ));
//                         },
//                         child: Icon(Icons.arrow_forward_ios_outlined))),
//               ),
//             ),

//             // child: ListView.builder(
//             //   itemBuilder: (context, index) {
//             //     cats![index].url;
//             //   },
//             // ),
//           ],
//         ),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
