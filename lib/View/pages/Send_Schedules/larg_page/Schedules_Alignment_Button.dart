import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import '../../../../help/Colors.dart';import '../../../../help/text_style.dart';import 'Schedules_Button1.dart';class Schedules_Alignment_Button extends StatelessWidget {  const Schedules_Alignment_Button({    Key? key,    required this.MainAxisAlignment1,    required this.text1,    required this.text2,    required this.changecolor,    required this.onPressed,  }) : super(key: key);  final MainAxisAlignment MainAxisAlignment1;  final String text1;  final String text2;  final bool changecolor;  final void Function() onPressed;  @override  Widget build(BuildContext context) {    return Row(      mainAxisAlignment: MainAxisAlignment1,      children: [        Container(            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/70,),            width: MediaQuery.of(context).size.width/9,            height: 80,            child: Schedules_Button1(changecolor: changecolor, onPressed: onPressed, text1: text1, text2: text2)),      ],    );  }}