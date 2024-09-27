import 'dart:developer';

import 'package:http/http.dart' as http;

class HomeRepository {
  Future<http.Response> getPixabayData(int page, int perPage
      ) async {
    final response = await http.get(
      Uri.parse(
          "https://pixabay.com/api/?key=46223974-766a28f52ecb21717540eb1ce&image_type=photo&pretty=true&per_page=$perPage&page=$page"),
    );
    log("Pixabay Data : ${response.body}");
    return response;
  }
}