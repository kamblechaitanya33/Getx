import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ChangeColor/getcolor.controller.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {

GetcolorController  controller = Get.put(GetcolorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: controller.getCOlor ,

      body: Column(
        children: [

          CircleAvatar(
            radius: 30,
            backgroundColor: controller.getCOlor,
          ),


          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
              
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for(var i in controller.ofColors)...[
              
                    InkWell(
                      onTap: (){
                     controller.onTap(i);
                        setState(() {
                          
                        });
                      },

                      child: Container(
                        height: 50,
                        width: 50,
                        color: i,
                      ),
                    )
                  ]
                ],
              ),
            ),
          )
          
        ],
      ),
    );
  }
}