import 'package:chat_app/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String message;
  final String id;

  Message(this.message, this.id);

  factory Message.fromJson(QueryDocumentSnapshot doc) {
    var data = doc.data() as Map<String, dynamic>;
    return Message(data[kMessage], data['id']);
  }
}
