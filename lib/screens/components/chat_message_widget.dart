import 'package:creative_writing/all_utils.dart';
import 'package:creative_writing/models/model.dart';

class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget(
      {super.key, required this.text, required this.chatMessageType});

  final String text;
  final ChatMessageType chatMessageType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(16),
      decoration: kMessageBoxDecoration.copyWith(
        color: chatMessageType == ChatMessageType.bot
            ? AppTheme.myrtleGreen
            : AppTheme.trackColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          chatMessageType == ChatMessageType.bot
              ? const CircleAvatar(
                  child: Icon(Icons.person),
                )
              : const CircleAvatar(
                  child: Icon(Icons.person),
                ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontSize:
                            chatMessageType == ChatMessageType.bot ? 15 : 22),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
