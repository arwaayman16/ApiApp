import 'dart:convert';
import 'dart:io';

import 'package:cats_api/data/model/cat.dart';
import 'package:http/http.dart';

abstract class CatApi {
  Future<List<Cat>> getCat();
  Future<List<Cat>> getMoreCat(int a);
}

class CatApiImpl implements CatApi {
  @override
  Future<List<Cat>> getCat() async {
    Response response = await get(
      Uri.parse("https://api.thecatapi.com/v1/images/search?"),
    );
    if (response.statusCode > 199 && response.statusCode < 300) {
      print(response.statusCode);
      print(response.body);
      return (jsonDecode(response.body) as List)
          .map((cat) => Cat.fromMap(cat))
          .toList();
    } else {
      print(response.statusCode);
      //    print(response.body);
      throw Expando('field');
    }
  }

  @override
  Future<List<Cat>> getMoreCat(int a) async {
    Response response = await get(
      Uri.parse(
          "https://api.thecatapi.com/v1/images/search?limit=$a&api_key=live_lgMh6Jn6gqVGwqs8MxUJY8L0pJxjP9ezVFIsFVJqQ5jyFr8C3Vfi0EmOo7AnChA2 "),
    );
    if (response.statusCode > 199 && response.statusCode < 300) {
      print(response.statusCode);
      print(response.body);
      return (jsonDecode(response.body) as List)
          .map((cat) => Cat.fromMap(cat))
          .toList();
    } else {
      print(response.statusCode);
      //    print(response.body);
      throw Expando('field');
    }
  }
}
