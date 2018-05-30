import 'package:flutter/material.dart';

class TabImageData{
  Image imageNormal;
  Image imageSelected;

  TabImageData(this.imageNormal, this.imageSelected);

  TabImageData.init(String imageNormal, String imageSelected){
    this.imageNormal = new Image.asset(imageNormal, width: 24.0, height: 24.0,);
    this.imageSelected = new Image.asset(imageSelected, width: 24.0, height: 24.0,);
  }
}