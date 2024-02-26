import 'package:calcuator/Theme/Theme_state.dart';
import 'package:calcuator/Utilites/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../local/shared_prefrences.dart';


class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  static ThemeCubit get(context)=> BlocProvider.of(context);

  bool isDark=false;

  void changeTheme(){
    isDark = !isDark; // togell (!isDrake mean is true)
    MyCache.putBoolean(key: MyCacheKeys.isDark, value: isDark);
    emit(ChangeTheme());
  }
  void getTheme(){
    MyCache.getBoolean(key:MyCacheKeys.isDark);
  }

}
