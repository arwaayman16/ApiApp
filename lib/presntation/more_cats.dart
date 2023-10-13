import 'package:cats_api/data/remote/cats_api.dart';
import 'package:flutter/material.dart';

class MoreCatsPage extends StatefulWidget {
  const MoreCatsPage({super.key, required this.a});
  final int a;

  @override
  State<MoreCatsPage> createState() => _MoreCatsPageState();
}

class _MoreCatsPageState extends State<MoreCatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: FutureBuilder(
          future: CatApiImpl().getMoreCat(widget.a),
          builder: (context, snapshot) {
            print(snapshot.data);
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.data == null) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemBuilder: (context, i) =>
                    Image.network("${snapshot.data![i].url}"),
                itemCount: snapshot.data!.length,
              );
            }
          }),
    ));
  }
}
