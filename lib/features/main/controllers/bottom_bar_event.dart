part of 'bottom_bar_bloc.dart';

class BottomBarEvent extends Equatable {
  const BottomBarEvent(this.selectedIndex);
  final int selectedIndex;
  @override
  List<Object> get props => [selectedIndex];
}
