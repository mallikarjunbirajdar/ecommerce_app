


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  static HomeController get instance => Get.find();


  final CarouselController =CarouselSliderController();

  RxInt currentIndex=0.obs;



  void onPageChanged(int index){

    currentIndex.value=index;
  }

  






}