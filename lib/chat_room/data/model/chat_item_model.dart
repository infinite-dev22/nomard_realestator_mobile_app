class ChatItemModel {
  final String image;
  final String name;
  final String messagePreview;
  final String time;
  final int? messageCount;

  ChatItemModel(
    this.image,
    this.name,
    this.messagePreview,
    this.time,
    this.messageCount,
  );
}
