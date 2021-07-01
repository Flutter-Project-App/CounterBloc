import 'package:flutter/material.dart';
import 'package:flutter_application/counter_observer.dart';
import 'application.dart';
import 'package:bloc/bloc.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(CounterApp());
}
