import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  String messageText;
  String messageSender;
  bool isCurrentUser;

  MessageBubble({
    required this.messageSender,
    required this.messageText,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment:
              isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              messageSender,
              style: const TextStyle(
                  fontSize: 14, color: CupertinoColors.inactiveGray),
            ),
            const SizedBox(height: 5),
            Material(
              borderRadius: isCurrentUser
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))
                  : const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
              elevation: 7,
              color:
                  isCurrentUser ? Colors.lightBlueAccent : Colors.grey.shade600,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Text(messageText,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ));
  }
}
