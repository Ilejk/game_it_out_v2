part of 'bottom_bar_bloc.dart';

class BottomBarState extends Equatable {
  final int selectedIndex;
  const BottomBarState({this.selectedIndex = 0});
  BottomBarState copyWith({int? selectedIndex}) {
    return BottomBarState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  @override
  List<Object> get props => [selectedIndex];
}
