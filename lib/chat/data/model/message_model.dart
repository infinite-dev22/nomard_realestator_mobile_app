class MessageModel {
  final int senderId;
  final int receiverId;
  final String message;
  final bool delivered;
  final bool read;
  final String time;
  final String type;

  MessageModel(
    this.senderId,
    this.receiverId,
    this.message,
    this.delivered,
    this.read,
    this.time,
    this.type,
  );
}
