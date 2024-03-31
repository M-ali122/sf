import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;

  const MessageBubble({super.key, required this.sender, required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: isMe ? const Radius.circular(24.0) : const Radius.circular(4),
                topRight: isMe ? const Radius.circular(4) : const Radius.circular(24.0),
                bottomLeft: const Radius.circular(24.0),
                bottomRight: const Radius.circular(24.0),
              ),
              color: isMe ? const Color.fromRGBO(71, 87, 54, 1) : const Color.fromRGBO(245, 245, 245, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end, // Align time to the right

                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${text} 12:30 ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: isMe ? Colors.white : Colors.black,
                    ),
                  ), // Add some space between text and time
                  Text(
                    '12:51',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: isMe ? Colors.white70 : Colors.black87, // Adjust color as needed
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}