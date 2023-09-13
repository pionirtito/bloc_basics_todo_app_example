import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'todo_bloc_observer.dart';

void main() async {
  // Set the bloc observer globally
  Bloc.observer = TodoBlocObserver();
  // Run the app
  runApp(const App());
}
