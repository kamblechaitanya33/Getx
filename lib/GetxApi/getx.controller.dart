
import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:getx/GetxApi/foodmodel.dart';

import 'package:http/http.dart' as http;

class Controller extends GetxController{


RxList<FoodList> ofList=<FoodList>[].obs;

fetchapi() async{

String apiUri="https://appy.trycatchtech.com/v3/fit_zone/food_list";
  var resp=await http.get(Uri.parse(apiUri));

  if(resp.statusCode==200){
      List foodList=jsonDecode(resp.body);
      ofList.assignAll(FoodList.getFoodData(foodList));

          print(foodList);

  }else{

    print("Error");
  }
  
}

@override
  void onInit() {
    fetchapi();
    super.onInit();
  }

}