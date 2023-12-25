import 'package:clean_arch/core/extention/num_extensions.dart';
import 'package:clean_arch/core/utils/app_colors.dart';
import 'package:clean_arch/core/utils/app_textstyle.dart';
import 'package:clean_arch/core/utils/images_manager.dart';
import 'package:clean_arch/features/login/presentation/cubit/login_cubit.dart';
import 'package:clean_arch/features/login/presentation/widgets/input_field.dart';
import 'package:clean_arch/features/login/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoaded = true;
        } else if (state is LoginSuccess) {
        } else if (state is LoginFailure) {}
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [topPart(), formInputs(), loginButton(context)],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  topPart() {
    return Column(
      children: [
        SizedBox(
          height: 100.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              ImageManager.logo,
              height: 100.h,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'اهلا بك فى برنامج فاتوره',
              style: AppTextStyles()
                  .titleText()
                  .textColorNormal(AppColors.blackColor),
            ),
          ],
        ),
      ],
    );
  }

  formInputs() {
    return Column(
      children: [
        InputField(
            controller: usernameController,
            hint: 'اسم المستخدم',
            radius: 0,
            validated: () {},
            onchange: () {}),
        SizedBox(
          height: 20.h,
        ),
        InputField(
            hint: 'كلمة المرور',
            radius: 0,
            controller: passwordController,
            validated: () {},
            onchange: () {}),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }

  loginButton(context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: MainButton(
        onPressed: () {
          BlocProvider.of<LoginCubit>(context).loginUser(username: usernameController.text, password: passwordController.text);
        },
        color: AppColors.primaryColor,
        textColor: AppColors.whiteColor,
        title: 'تسجيل الدخول',
        textSize: 15,
      ),
    );
  }
}
