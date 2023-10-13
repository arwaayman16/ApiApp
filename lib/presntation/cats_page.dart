import 'package:cats_api/data/remote/cats_api.dart';
import 'package:flutter/material.dart';

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: FutureBuilder(
          future: CatApiImpl().getCat(),
          builder: (context, snapshot) {
            print(snapshot.data);
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.data == null) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemBuilder: (context, i) => Image.network(
                  "${snapshot.data![i].url}",
                  fit: BoxFit.cover,
                ),
                itemCount: snapshot.data!.length,
              );
            }
          }),
    ));
  }
}
