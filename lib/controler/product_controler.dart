import 'package:ecommerce_api_test/service/product_service.dart';
import 'package:get/get.dart';
import '../model/product_model.dart';

class ProductControler extends GetxController{

  var loader = false.obs;
  var productList = ProductModel().obs;
  final ApiServices apiServices = ApiServices();

  @override
  void onInit() {
    getDataCalling();
    // TODO: implement onInit
    super.onInit();
  }

  void getDataCalling()async{
    loader.value = true;
    var networkData = await apiServices.getProduct();
    if(networkData != null){
      productList.value = networkData;
      loader.value = false;
    }
  }
}