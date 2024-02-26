

import 'package:flutter/material.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {}
class ChangeTheme extends ThemeState {}
