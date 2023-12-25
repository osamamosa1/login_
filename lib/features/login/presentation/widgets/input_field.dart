import 'package:clean_arch/core/extention/num_extensions.dart';
import 'package:clean_arch/core/utils/app_colors.dart';
import 'package:clean_arch/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class InputField extends StatefulWidget {
  String? label;
  String? hint;
  Color? prefix;
  Color? suffixColor;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool secure;
  @required Function validated;
  @required Function onchange;
  VoidCallback? onTap;
  TextEditingController? controller;
  int? maxLines;
  TextInputType? keyboardType;
  String? initialValue;
  bool autoFocus;
  double radius;

  InputField(
      {Key? key,
        this.label,
        this.suffixColor,
        this.suffixIcon,
        this.prefixIcon,
        this.hint,
        this.secure = false,
        this.controller,
        required this.validated,
        this.keyboardType,
        this.maxLines=1,
        this.initialValue,
        required this.onchange,

        this.autoFocus=false,
        this.radius=10,
        this.onTap

      }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool hidePassword = true;
  var eyeIcon = Icons.remove_red_eye;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:60.h,
      child: TextFormField(

        style: TextStyle(fontSize: 14.sp),
        onTap: widget.onTap,
        textAlignVertical: TextAlignVertical.bottom,
        autofocus:widget.autoFocus ,
        onChanged:(p)=>widget.onchange(p) ,
        // autofocus: false,
        initialValue: widget.initialValue,
        maxLines: widget.maxLines,
        inputFormatters: <TextInputFormatter>[
          if (widget.keyboardType == TextInputType.phone)
            FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: widget.keyboardType,
        validator: (p) => widget.validated(p),
        controller: widget.controller,

        decoration: InputDecoration(
          hintStyle: AppTextStyles().lightTitle().textColorBold(AppColors.hintColor),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: .5,
              color:Colors.grey.withOpacity(0.3),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(width:.5),
            borderRadius: BorderRadius.circular(widget.radius),
          ),
          labelText: widget.label,
          // alignLabelWithHint: true,
          labelStyle: const TextStyle(),

          hintText: widget.hint,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.secure
              ? IconButton(
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
                eyeIcon = hidePassword
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined;
              });
            },
            icon: Icon(eyeIcon,color: widget.suffixColor,),
          )
              : widget.suffixIcon,
        ),
        obscureText: widget.secure && hidePassword,
      ),
    );
  }
}


