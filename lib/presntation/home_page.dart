import 'package:cats_api/presntation/cats_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:cats_api/presntation/more_cats.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   bool _isVisible = false;
  TextEditingController text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 112, 158),
     
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SizedBox(
          height: 900,
          child: ListView(
            children: [
              SizedBox(height: 16,),
            const Text(
                    " Random cats",
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Colors.white,fontSize: 50, fontWeight: FontWeight.w600, fontFamily: "Cookie-Regular"),
                  ),
                    Lottie.asset("assets/images/data.json"),
               
       SizedBox(height: 150,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CatPage(),
                        ));
                  },
                  child: Text(
                    " Random Cat Image",
                    style: TextStyle(fontSize: 20),
                  )),
        
              ElevatedButton(
                  onPressed: () {
                    
                    setState(() {
                      _isVisible = true;
                    });
                  },
                  child: Text(
                    "More than one Random Cat Image!",
                    style: TextStyle(fontSize: 20),
                  )),
              Visibility(
                visible: _isVisible,
                child: Padding(
                  padding:EdgeInsets.all(20),
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: text,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 20),
                   
                      suffixIconColor: Colors.white,
                        hintText: 'Enter the number of cats you want here',
                        suffixIcon: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MoreCatsPage(a: int.parse(text.text)),
                                  ));
                            },
                            child: Icon(Icons.arrow_forward_ios_outlined))),
                  ),
                ),
              ),
        
              // child: ListView.builder(
              //   itemBuilder: (context, index) {
              //     cats![index].url;
              //   },
              // ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}