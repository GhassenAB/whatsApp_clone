import 'package:whatsapp_clone/data/local_datasource/local_datasource.dart';
import 'package:whatsapp_clone/domain/entities/contact_entity.dart';
import 'package:whatsapp_clone/domain/repositories/get_device_number_repository.dart';

class GetDeviceNumberRepositoryImpl implements GetDeviceNumberRepository {
  final LocalDataSource localDataSource;

  GetDeviceNumberRepositoryImpl({this.localDataSource});
  @override
  Future<List<ContactEntity>> getDeviceNumbers() {
    return localDataSource.getDeviceNumbers();
  }
}
