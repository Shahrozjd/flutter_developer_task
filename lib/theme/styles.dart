import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


var kTextStyleLarge = const TextStyle(fontSize: 30, color: Colors.white);
var kTextStyleExLarge = const TextStyle(fontSize: 40, color: Colors.white);
var kTextStyle = const TextStyle(color: Colors.white,fontSize: 16);
var kTextStyleDefault = const TextStyle(color: Colors.white);
var kTextStyleMedium = const TextStyle(color: Colors.white,fontSize: 22);

var kTextStyleLargeBold = const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold);
var kTextStyleBold = const TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold);
var kTextStyleMediumBold = const TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold);

var kTextStyleLargeThin = const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400);
var kTextStyleThin = const TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400);
var kTextStyleMediumThin = const TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400);

var kTextStyleLargeBlack = const TextStyle(color: Colors.black,fontSize: 30);
var kTextStyleBlack = const TextStyle(color: Colors.black,fontSize: 16);
var kTextStyleMediumBlack = const TextStyle(color: Colors.black,fontSize: 22);

var kTextStyleLargeBlackBold = const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold);
var kTextStyleBlackBold = const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold);
var kTextStyleMediumBlackBold = const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold);


var kTextStyleLargeBlackThin = const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w400);
var kTextStyleBlackThin = const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400);
var kTextStyleMediumBlackThin = const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400);

var kTextStyleLargeAccent = const TextStyle(color: Colors.black,fontSize: 30);
var kTextStyleAccent = const TextStyle(color: Colors.black,fontSize: 16);
var kTextStyleMediumAccent = const TextStyle(color: Colors.black,fontSize: 22);

var kTextStyleLargeAccentBold = const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold);
var kTextStyleAccentBold = const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold);
var kTextStyleMediumAccentBold = const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold);


var kTextStyleLargeAccentThin = const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w400);
var kTextStyleAccentThin = const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400);
var kTextStyleMediumAccentThin = const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400);

// following theme data
var cTextStyleLarge = const TextStyle(fontSize: 30,);
var cTextStyleExLarge = const TextStyle(fontSize: 40,);
var cTextStyle = const TextStyle(fontSize: 16);
var cTextStyleMedium = const TextStyle(fontSize: 22);
var wageTextStyle = const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff1a2b50));


var cTextStyleLargeBold = const TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
var cTextStyleBold = const TextStyle(fontSize: 16,fontWeight: FontWeight.bold);
var cTextStyleMediumBold = const TextStyle(fontSize: 22,fontWeight: FontWeight.bold);

var cTextStyleLargeThin = const TextStyle(fontSize: 30,fontWeight: FontWeight.w400);
var cTextStyleThin = const TextStyle(fontSize: 16,fontWeight: FontWeight.w400);
var cTextStyleMediumThin = const TextStyle(fontSize: 22,fontWeight: FontWeight.w400);



class Styles{

  static double height(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static BoxDecoration boxDecoration(BuildContext context, bool isBorder){
    return BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: isBorder?Border.all(color: Theme.of(context).dividerColor, width: 1):Border.all(width: 0),
        );
  }
  static BoxDecoration boxDecorationShadow(BuildContext context, bool isBorder){
    return BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: isBorder?Border.all(color: Theme.of(context).dividerColor, width: 1):Border.all(width: 0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ]);
  }


}

