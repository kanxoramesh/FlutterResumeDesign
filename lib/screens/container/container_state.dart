part of 'container_cubit.dart';

class ContainerState {
  ContainerState({this.index, this.isCollapsed});

  final int index;
  final bool isCollapsed;

  ContainerState copyWith({
    int index,
    bool isCollapsed,
  }) {
    return ContainerState(
      index: index ?? this.index,
      isCollapsed: isCollapsed ?? this.isCollapsed,
    );
  }
}

class ContainerInitial extends ContainerState {
  ContainerInitial() : super(index: 0, isCollapsed: true);
}
