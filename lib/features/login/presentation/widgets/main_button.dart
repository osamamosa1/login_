import 'package:clean_arch/core/extention/num_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';


class MainButton extends StatefulWidget {

  String? title;
  VoidCallback? onPressed;
  Color? color;
  Color? textColor;
  double? textSize;
  double? radius;
  FontWeight? fontWeight;


  MainButton
      ({Key? key,

    this.title,
    this.radius,
    this.onPressed,
    this.color,
    this.fontWeight,
    this.textColor,
    this.textSize
  }) : super(key: key);
  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      color: widget.color,
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(widget.radius??0))),
      height: 50.h,
      minWidth:double.infinity,
      onPressed: widget.onPressed,
      child: Text("${widget.title}",style: TextStyle(fontSize:widget.textSize ,color:widget.textColor,fontWeight:widget.fontWeight ),),

    );
  }
}
