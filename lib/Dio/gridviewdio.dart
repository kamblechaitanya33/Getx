import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxApi/getx.controller.dart';
import 'package:http/http.dart';

class Gridviewdio extends StatefulWidget {
  const Gridviewdio({super.key});

  @override
  State<Gridviewdio> createState() => _GridviewdioState();
}

class _GridviewdioState extends State<Gridviewdio> {
  @override

  Controller controller=Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (BuildContext context,int index){

        
      //   return GridTile(child: Image.network(controller.ofList));
      // }),
    );
  }
}