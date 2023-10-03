import 'package:crud/data/models/product.dart';
import 'package:crud/ui/stateController/readProductController.dart';
import 'package:crud/ui/widgets/productcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'createProduct.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("No"),
      onPressed: () {
        Get.back();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Delete!"),
      content: Text("Once Delete you can't go Back?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  final ReadProductController _readProductController =
      Get.put(ReadProductController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _readProductController.getproductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Crud",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: GetBuilder<ReadProductController>(builder: (Product) {
        if (Product.getProductInProgress) {
          const Center(
            child: CircularProgressIndicator(),
          );
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.75),
          itemCount: Product.ProductModel.Product?.length ?? 0,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: productcard(
                Onupdate: () {},
                Ondelete: () {
                  showAlertDialog(context);
                }, product: Product.ProductModel.Product![index],
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Get.to(CreateProduct());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
