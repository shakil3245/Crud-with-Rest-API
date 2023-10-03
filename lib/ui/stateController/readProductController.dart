import 'package:crud/data/NetworkUtils.dart';
import 'package:get/get.dart';

import '../../data/models/readProductModel.dart';

class ReadProductController extends GetxController {
  ReadProductModel _readProductModel = ReadProductModel();
  bool _getProductInProgress = false;

  bool get getProductInProgress => _getProductInProgress;

  ReadProductModel get ProductModel => _readProductModel;

  Future<bool> getproductList() async {
    _getProductInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: 'ReadProduct');
    _getProductInProgress = false;
    if (response.isSuccess) {
      _readProductModel = ReadProductModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}