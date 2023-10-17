import 'package:cats_api/data/model/cat.dart';
import 'package:cats_api/data/remote/cats_api.dart';
import 'package:cats_api/presntation/bloc/cats_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoreCatsPage extends StatefulWidget {
  const MoreCatsPage({super.key, required this.a});
  final int a;

  @override
  State<MoreCatsPage> createState() => _MoreCatsPageState();
}

class _MoreCatsPageState extends State<MoreCatsPage> {
  List<Cat> c = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<CatsBloc, CatsState>(builder: (context, state) {
      return Column(
        children: [
          if (state is CatsLoading) const CircularProgressIndicator(),
          if (state is CatsLoded)
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, i) =>
                    Image.network("${state.cat[i].url}"),
                itemCount: state.cat.length,
              ),
            ),
        ],
      );
    }));
  }
}
