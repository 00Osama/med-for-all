import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageState {}

class Arabic extends LanguageState {}

class English extends LanguageState {}

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(English());

  void switchToEnglish() {
    emit(English());
  }

  void switchToArabic() {
    emit(Arabic());
  }
}
