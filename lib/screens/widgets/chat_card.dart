import 'package:flutter/material.dart';
import 'package:uis_project/modules/chat.dart';

Widget ChatCard({
  required Chat chat,
  required VoidCallback press,
}) {
  return InkWell(
    onTap: press,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10 * 0.75),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(chat.image),
              ),
              if (chat.isActive)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      chat.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.64,
            child: Text(chat.time),
          ),
        ],
      ),
    ),
  );
}
