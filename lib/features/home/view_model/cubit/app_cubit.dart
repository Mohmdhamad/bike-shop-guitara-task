
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_states.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavTabChanged(0));

  int get currentIndex {
    if (state is BottomNavTabChanged) {
      return (state as BottomNavTabChanged).currentIndex;
    }
    return 0;
  }

  void changeTab(int index) {
    if (index >= 0 && index <= 4) {
      emit(BottomNavTabChanged(index));
    }
  }
}