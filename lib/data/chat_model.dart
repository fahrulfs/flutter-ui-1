class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel(
      {required this.avatarUrl,
      required this.name,
      required this.datetime,
      required this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "images/a.png",
      name: "Laurent",
      datetime: "10:21",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      avatarUrl: "images/b.png",
      name: "Tracy",
      datetime: "19:22",
      message: "I love that idea, it's great!",
    ),
    ChatModel(
      avatarUrl: "images/c.png",
      name: "Claire",
      datetime: "14:34",
      message: "I wasn't aware of that. Let me check",
    ),
    ChatModel(
      avatarUrl: "images/d.png",
      name: "Joe",
      datetime: "11:05",
      message: "Flutter just release 1.0 officially. Should I go for it?",
    ),
    ChatModel(
      avatarUrl: "images/e.png",
      name: "Mark",
      datetime: "09:46",
      message: "It totally makes sense to get some extra day-off.",
    ),
    ChatModel(
      avatarUrl: "images/f.png",
      name: "Williams",
      datetime: "08:15",
      message: "It has been re-scheduled to next Saturday 7.30pm",
    ),
    ChatModel(
      avatarUrl: "images/b.png",
      name: "Laurent",
      datetime: "20:18",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      avatarUrl: "images/man.png",
      name: "Tracy",
      datetime: "19:22",
      message: "I love that idea, it's great!",
    ),
    ChatModel(
      avatarUrl: "images/c.png",
      name: "Claire",
      datetime: "14:34",
      message: "I wasn't aware of that. Let me check",
    ),
    ChatModel(
      avatarUrl: "images/a.png",
      name: "Laurent",
      datetime: "10:21",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      avatarUrl: "images/b.png",
      name: "Tracy",
      datetime: "19:22",
      message: "I love that idea, it's great!",
    ),
    ChatModel(
      avatarUrl: "images/c.png",
      name: "Claire",
      datetime: "14:34",
      message: "I wasn't aware of that. Let me check",
    ),
    ChatModel(
      avatarUrl: "images/d.png",
      name: "Joe",
      datetime: "11:05",
      message: "Flutter just release 1.0 officially. Should I go for it?",
    ),
    ChatModel(
      avatarUrl: "images/e.png",
      name: "Mark",
      datetime: "09:46",
      message: "It totally makes sense to get some extra day-off.",
    ),
    ChatModel(
      avatarUrl: "images/f.png",
      name: "Williams",
      datetime: "08:15",
      message: "It has been re-scheduled to next Saturday 7.30pm",
    ),
    ChatModel(
      avatarUrl: "images/b.png",
      name: "Laurent",
      datetime: "20:18",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      avatarUrl: "images/man.png",
      name: "Tracy",
      datetime: "19:22",
      message: "I love that idea, it's great!",
    ),
    ChatModel(
      avatarUrl: "images/c.png",
      name: "Claire",
      datetime: "14:34",
      message: "I wasn't aware of that. Let me check",
    ),
  ];
}
