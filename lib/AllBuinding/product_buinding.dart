import 'package:ecommerce_api_test/controler/product_controler.dart';
import 'package:get/get.dart';

class ProductBuinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProductControler());
  }

}