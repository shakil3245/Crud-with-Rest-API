import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../data/models/product.dart';
class productcard extends StatelessWidget {
  final Products product;
  VoidCallback Onupdate;
  VoidCallback Ondelete;
   productcard({
    super.key  ,required this.Onupdate,required this.Ondelete, required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 160,
      color: Colors.grey.withOpacity(0.3),
      child:Column(children: [
        Image.network(product.img?? ""),
        SizedBox(height: 8,),
        Text(product.productName??"Unkown",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text("${product.unitPrice}"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed:Onupdate, icon: Icon(Icons.update,color: Colors.green,)),
            IconButton(onPressed:Ondelete, icon: Icon(Icons.delete,color: Colors.red,)),
          ],)
      ],),
    );
  }
}
