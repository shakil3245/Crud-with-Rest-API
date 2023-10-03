import 'package:crud/data/NetworkUtils.dart';
import 'package:get/get.dart';


class CreateProductController extends GetxController {
  bool _getCreatetInProgress = false;

  bool get getProductInProgress => _getCreatetInProgress;

  Future<bool> getCreateProduct(String image, String ProductCode, String  ProductName, String Qty, String TotalPrice, String UnitPrice) async {
    _getCreatetInProgress = true;
    update();
    final response = await NetworkCaller.postRequest(url: 'CreateProduct',body: {
      "Img":image,
      "ProductCode":ProductCode,
      "ProductName":ProductName,
      "Qty":Qty,
      "TotalPrice":TotalPrice,
      "UnitPrice":UnitPrice
    });
    _getCreatetInProgress = false;
    if (response.isSuccess) {
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}