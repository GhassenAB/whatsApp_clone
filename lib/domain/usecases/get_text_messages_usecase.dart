import 'package:whatsapp_clone/domain/entities/text_message_entity.dart';
import 'package:whatsapp_clone/domain/repositories/firebase_repository.dart';

class GetTextMessagesUseCase {
  final FirebaseRepository repository;

  GetTextMessagesUseCase({this.repository});

  Stream<List<TextMessageEntity>> call() {
    return repository.getMessages();
  }
}
