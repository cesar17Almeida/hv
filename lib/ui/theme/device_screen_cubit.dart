import 'package:bloc/bloc.dart';

enum DeviceScreenState {
  desktop,
  mobile,
  tablet
}

class DeviceScreenCubit extends Cubit<DeviceScreenState> {
  DeviceScreenCubit() : super (DeviceScreenState.desktop);

  void onMobileScreen() {
    emit(DeviceScreenState.mobile);
  }

  void onDesktopScreen() {
    emit(DeviceScreenState.desktop);
  }

  void onTabletScreen() {
    emit(DeviceScreenState.tablet);
  }
}