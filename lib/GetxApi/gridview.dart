import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxApi/getx.controller.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Controller controller=Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(()=> GridView.builder(
        itemCount: controller.ofList.length,
        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (BuildContext context,int index){

        return GridTile(child: Image.network(controller.ofList[index].image!));
      }))
    );
  }
}