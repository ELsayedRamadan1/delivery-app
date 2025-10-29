import 'package:dilvery/l10n/app_localizations.dart';import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dilvery/Screens/seeler_delivery/seller_or_delivery_shape.dart';
import 'package:dilvery/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}
class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }
  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);

    print('onClose -- ${bloc.runtimeType}');
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home:
        seller_or_delivery_shape(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales);
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: _title,
    //   home: seller_or_delivery_shape(),
      // splashscreen search delivery_homepage order mainofdelivery

  }
}