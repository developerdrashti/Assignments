import 'package:flutter/material.dart';

import 'package:travelogue/homescreen/pages/hotel/hotel.dart';
import 'package:travelogue/homescreen/pages/place/garden/garden.dart';
import 'package:travelogue/homescreen/pages/place/place.dart';
import 'package:travelogue/mahabodhi.dart';
import 'package:travelogue/pages/place/garden/garden.dart';
import 'package:travelogue/pages/place/river.dart';
import 'package:travelogue/pages/place/romanticplace.dart';
import 'package:travelogue/pages/place/temple/akshardham.dart';
import 'package:travelogue/pages/place/temple/chhatarpur.dart';
import 'package:travelogue/pages/place/temple/mahabodhi.dart';
import 'package:travelogue/pages/place/temple/qutub_minar.dart';
import 'package:travelogue/pages/place/temple/saibaba.dart';
import 'package:travelogue/pages/place/temple/shridigambar.dart';
import 'package:travelogue/pages/place/temple/yogmaya.dart';
import 'package:travelogue/qutub_minar.dart';
import 'package:travelogue/homescreen/pages/place/river.dart';
import 'package:travelogue/homescreen/pages/place/romanticplace.dart';
import 'package:travelogue/saibaba.dart';
import 'package:travelogue/homescreen/pages/place/shoppingmall.dart';
import 'package:travelogue/shridigambar.dart';
import 'package:travelogue/homescreen/pages/place/temple.dart';
import 'package:travelogue/yogmaya.dart';

class Properties {
  List recommendedImages = [
    "assets/image/10.jpg",
    "assets/image/11.jpg",
    "assets/image/12.jpg",
    "assets/image/09.jpg",
    "assets/image/07.jpg",
  ];
// place part
  List PlaceImages = [
    "assets/image/temple.jpg",
    "assets/image/garden.png",
    "assets/image/river.jpg",
    "assets/image/rom.png",
    "assets/image/shopping.jpg",
  ];
  List placeText = [
    "temple",
    "garden",
    "river",
    "romentic place",
    "Shopping mall"
  ];
  List NavigatorPlace = [
    webview4(),
    webview7(),
    webview6(),
    webview5(),
    webview8(),
  ];
//-----------------------------------------------------------
  List TempleImages = [
    'assets/image/akshardham.png',
    'assets/image/Chhatarpur-Mandir.png',
    'assets/image/qutub_minar.png',
    'assets/image/Yogmaya.png',
    'assets/image/kali.png',
    'assets/image/Mahabodhi.png',
    'assets/image/Sai-Baba.jpg',
    'assets/image/Shri-Digambar.png',
  ];
  List TempleText = [
    "Akshardham",
    "chhatarpur-mandir",
    "qutub_minar",
    "Yogmaya",
    "kali bari",
    "Mahabodhi",
    "Sai-Baba",
    "Shri-Digambar",
  ];

//-----------------------------------------------------------
  List popularPlace = [
    webview4(),
    webview5(),
    webview6(),
    webview7(),
    webview8(),
  ];
  List TemplePage = [
    akshardham(),
    chhatarpur(),
    qutub_minar(),
    yogmaya(),
    mahabodhi(),
    saibaba(),
    shridigambar(),
  ];

  List recommendedImgText = [
    "bjsaf",
    "kjufyagf",
    "huidmf",
    "iujgbyu",
    "huyfbtsyf",
    "kjufyagf",
    "huidmf",
    "iujgbyu",
  ];
}
