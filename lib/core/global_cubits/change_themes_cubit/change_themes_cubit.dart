import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_app/core/database/cache/cache_keys.dart';
import 'package:patient_app/core/database/cache/cashe_helper.dart';
import 'package:patient_app/core/global_cubits/change_themes_cubit/change_themes_state.dart';
import 'package:patient_app/core/services/get_it.dart';

class ChangeThemesCubit extends Cubit<ChangeThemesState> {
  ChangeThemesCubit() : super(ChangeThemesInitial());

  bool isDarkMode = getIt<CacheHelper>().getBool(key: CacheKeys.theme) ?? false;
  void changeAppTheme() {
    isDarkMode = !isDarkMode;
    getIt<CacheHelper>().saveData(key: CacheKeys.theme, value: isDarkMode);
    emit(ChangeThemesDone());
  }
}
