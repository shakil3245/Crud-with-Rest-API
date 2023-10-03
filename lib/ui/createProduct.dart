import 'package:crud/ui/stateController/createProductController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CreateProduct extends StatelessWidget {
   CreateProduct({Key? key}) : super(key: key);
  TextEditingController _productNameETController = TextEditingController();
  TextEditingController _productCodeETController = TextEditingController();
  TextEditingController _productImageURLETController = TextEditingController();
  TextEditingController _productQuantityETController = TextEditingController();
  TextEditingController _productUnitPriceETController = TextEditingController();
  TextEditingController _productTotalPriceETController = TextEditingController();

   CreateProductController _createProductController = Get.put(CreateProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Product"),
        leading: IconButton(
          onPressed: (){Get.back();},
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(children: [
          TextFormField(
            controller:_productNameETController,
            decoration: InputDecoration(
            hintText: "Product Name",
            border: OutlineInputBorder(

            )
          ),),
          SizedBox(height: 10,),
          TextFormField(
            controller: _productCodeETController,
            decoration: InputDecoration(
            hintText: "Product Code",
            border: OutlineInputBorder(

            )
          ),),
          SizedBox(height: 10,),
          TextFormField(
            controller: _productImageURLETController,
            decoration: InputDecoration(
            hintText: "Product Image URL",
            border: OutlineInputBorder(

            )
          ),),
          SizedBox(height: 10,),
          TextFormField(
            controller: _productQuantityETController,
            decoration: InputDecoration(
            hintText: "Product Quantity",
            border: OutlineInputBorder(

            )
          ),),
          SizedBox(height: 10,),

          TextFormField(
            controller: _productUnitPriceETController,
            decoration: InputDecoration(
            hintText: "Unit Price",
            border: OutlineInputBorder(

            )
          ),),
          SizedBox(height: 10,),
          TextFormField(
            controller: _productTotalPriceETController,
            decoration: InputDecoration(
            hintText: "Total Price",
            border: OutlineInputBorder(

            )
          ),),
          SizedBox(height: 10,),
          SizedBox(
            height: 60,
              width: double.infinity,
              child: GetBuilder<CreateProductController>(
                builder: (createProduct) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                      onPressed: (){
                        _createProductController.getCreateProduct(_productImageURLETController.text,_productCodeETController.text,_productNameETController.text,_productQuantityETController.text,_productUnitPriceETController.text,_productTotalPriceETController.text);
                      }, child:Text("Create",style: TextStyle(color: Colors.white,fontSize: 20),));
                }
              )),


        ],),
      ),
    );
  }
}
