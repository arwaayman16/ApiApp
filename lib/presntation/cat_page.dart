import 'package:cats_api/data/model/cat.dart';
import 'package:cats_api/data/remote/cats_api.dart';
import 'package:cats_api/presntation/bloc/cats_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  List<Cat> c = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: BlocBuilder<CatsBloc, CatsState>(
      builder: (context, state) {
         return Column(children: [
               if (state is CatsLoading) 
            const CircularProgressIndicator(),
              if (state is CatsLoded)
             
               Image.network("${state.cat[0].url}"
                ),
              
            ],);
      },
    )));
  }
}
