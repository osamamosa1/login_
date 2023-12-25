import 'package:clean_arch/app.dart';
import 'package:clean_arch/core/utils/constants.dart';
import 'package:clean_arch/features/login/presentation/cubit/login_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(MultiBlocProvider(
      providers: [
      BlocProvider(
      create: (context) => LoginCubit(),
  ),
  ],
  child:EasyLocalization(
      supportedLocales:supportedLanguages,
      path: 'assets/localizations',
      fallbackLocale: supportedLanguages[0],
      startLocale:supportedLanguages[0] ,
      saveLocale: true,
      child: LoginApp()
  )
  ));

}


