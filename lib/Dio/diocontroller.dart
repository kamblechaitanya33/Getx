import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx/GetxApi/foodmodel.dart';

class DioController extends GetxController{


  RxList<FoodList> foodList =<FoodList>[].obs;
  
  
  final dio=Dio();

  fetchApiWIthDio() async{
      String url= "https://appy.trycatchtech.com/v3/fit_zone/food_list";
      var resp=await dio.get(url );
          if(resp.statusCode ==200){
            List DataList=jsonDecode(resp.data);
            foodList.assignAll(FoodList.getFoodData(DataList));
            print("Successful");
          }else{
            print("Error");

          }
  }
}