import 'package:get/get.dart';
import 'package:pixabay/App/Data/Repo/repos.dart';

import '../Data/Models/model.dart';

class HomeController extends GetxController {
  final HomeRepository repository = HomeRepository();
  final int _perPage = 20;
  int _currentPage = 1;

  List<Hit> images = [];
  bool isLoading = false;

  ImagesData? imagesData;

  Future getData() async {
    if (isLoading) return;
    isLoading = true;
    update();
    try {
      final response = await repository.getPixabayData(_currentPage, _perPage);
      if (response.statusCode == 200) {
        imagesData = imagesDataFromJson(response.body);
        images.addAll(imagesData!.hits!);
        _currentPage++;
      } else {
        print("Error in fetching Data");
      }
    } catch (e) {
      print("Exception: $e");
    }finally {
      isLoading = false;
      update();
    }

  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
