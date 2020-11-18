import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:whatsapp_clone/domain/entities/contact_entity.dart';
import 'package:whatsapp_clone/domain/usecases/get_device_numbers_usecase.dart';

part 'get_device_number_state.dart';

class GetDeviceNumberCubit extends Cubit<GetDeviceNumberState> {
  final GetDeviceNumberUseCase getDeviceNumberUseCase;
  GetDeviceNumberCubit({this.getDeviceNumberUseCase})
      : super(GetDeviceNumberInitial());

  Future<void> getDeviceNumbers() async {
    try {
      final contactNumbers = await getDeviceNumberUseCase.call();
      emit(GetDeviceNumbersLoaded(contacts: contactNumbers));
    } catch (_) {
      emit(GetDeviceNumbersFailure());
    }
  }
}
