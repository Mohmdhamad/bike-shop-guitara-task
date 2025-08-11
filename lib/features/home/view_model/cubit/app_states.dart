abstract class BottomNavState {
  const BottomNavState();
}

class BottomNavTabChanged extends BottomNavState {
  final int currentIndex;

  const BottomNavTabChanged(this.currentIndex);
}
