import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'package:get/get_rx/src/rx_types/rx_types.dart';import '../../../../help/Colors.dart';import '../../../../help/text_style.dart';class Button_Student1 extends StatefulWidget {  const Button_Student1({    Key? key,    required this.changecolor,    required this.onPressed,    required this.text,  }) : super(key: key);  final bool changecolor;  final void Function() onPressed;  final String text;  @override  State<Button_Student1> createState() => _Button_Student1State();}class _Button_Student1State extends State<Button_Student1> {  @override  Widget build(BuildContext context) {    return Padding(      padding: const EdgeInsets.all(8.0),      child: Container(          width: MediaQuery.of(context).size.width / 3,          height: 55,          child: ElevatedButton(            style: ElevatedButton.styleFrom(              backgroundColor: Colorsapp.SecondColor,              shape:              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),            ),            onPressed: () {              setState(() {});              widget.onPressed();            },            child: Text(              widget.text,              style: Text_Style.getstyle(                  fontsize: MediaQuery.of(context).size.longestSide / 35,                  ColorText: Colorsapp.White,                  fontWeight: FontWeight.w800),            ),          )),    );  }}