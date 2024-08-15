import 'package:flutter/material.dart';
import 'package:caixinhas_idea/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:caixinhas_idea/simple_bloc_observer.dart';
import 'package:user_repository/user_respository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}