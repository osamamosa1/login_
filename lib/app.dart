import 'package:clean_arch/config/routes/app_routes.dart';
import 'package:clean_arch/features/login/presentation/cubit/login_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/themes.dart';
class LoginApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
