import 'package:ecommerce_api_test/controler/product_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends GetView<ProductControler> {
  ProductPage({Key? key}) : super(key: key);

  // final productControler = Get.put(ProductControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Obx(() {
        if (controller.loader.value) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.indigo,
            ),
          );
        } else {
          return GridView.builder(
            itemCount: controller.productList.value!.data?.length,
            itemBuilder: (context, index) {
              var data = controller.productList.value!.data?[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network("${data!.image.toString()}"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '${data.name}',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${data.unitPrice}',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('${data.unit}'),
                        Text('${data.id}')
                      ],
                    ),
                  ),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 4 / 6.5),
          );
        }
      }),
    );
    ;
  }
}
