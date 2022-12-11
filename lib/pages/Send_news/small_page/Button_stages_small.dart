import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'package:get/get_rx/src/rx_types/rx_types.dart';import '../../../help/Colors.dart';import '../../../help/text_style.dart';class Button_stages_small extends StatelessWidget {  const Button_stages_small({    Key? key,    required this.changecolor,    required this.onPressed,    required this.text,  }) : super(key: key);  final bool changecolor;  final void Function() onPressed;  final String text;  @override  Widget build(BuildContext context) {    return Container(        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).devicePixelRatio + 5),        width: MediaQuery.of(context).size.width / 4,        height: MediaQuery.of(context).size.height / 14,        child: ElevatedButton(          style: ElevatedButton.styleFrom(            backgroundColor: changecolor == false                ? Colorsapp.SecondColor                : Colorsapp.TextColor,            shape:            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),          ),          onPressed: () {            onPressed();          },          child: Text(            text,            style: Text_Style.getstyle(                fontsize: MediaQuery.of(context).size.longestSide / 40,                ColorText: Colorsapp.White,                fontWeight: FontWeight.bold),          ),        ));  }}