import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class GetcolorController extends GetxController{
  List ofColors =[

    Colors.red,
    Colors.green,
    Colors.blue
  ];

  var  getCOlor= Colors.red ;


  onTap(var i ){
    getCOlor= i;
    update();
  }

}