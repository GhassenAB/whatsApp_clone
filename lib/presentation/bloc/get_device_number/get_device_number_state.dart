part of 'get_device_number_cubit.dart';

abstract class GetDeviceNumberState extends Equatable {
  const GetDeviceNumberState();
}

class GetDeviceNumberInitial extends GetDeviceNumberState {
  @override
  List<Object> get props => [];
}

class GetDeviceNumbersLoading extends GetDeviceNumberState {
  @override
  List<Object> get props => [];
}

class GetDeviceNumbersLoaded extends GetDeviceNumberState {
  final List<ContactEntity> contacts;

  GetDeviceNumbersLoaded({this.contacts});

  @override
  List<Object> get props => [];
}

class GetDeviceNumbersFailure extends GetDeviceNumberState {
  @override
  List<Object> get props => [];
}
