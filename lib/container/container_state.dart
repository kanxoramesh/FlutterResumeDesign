part of 'container_cubit.dart';

@immutable
abstract class ContainerState {
  ContainerState({this.index});
  final int index;
}

class ContainerInitial extends ContainerState {
  ContainerInitial():super(index: 0);
}
class ContainerHome extends ContainerState {
  ContainerHome():super(index: 0);

}
class ContainerContact extends ContainerState {
  ContainerContact():super(index: 2);
}
class ContainerProject extends ContainerState {
  ContainerProject():super(index: 1);

}
