import 'package:bloc/bloc.dart';


class DarkModeCubit extends Cubit<bool> {
  DarkModeCubit() : super(false);

  void onChangeTheme() {
    emit(!state);
  }

}
