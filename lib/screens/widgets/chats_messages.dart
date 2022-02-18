import 'package:flutter/material.dart';
import 'package:uis_project/app_theme.dart';
import 'package:uis_project/modules/chat.dart';
import 'package:uis_project/screens/widgets/chat_card.dart';

Widget allChatMessages(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  return ConstrainedBox(
    constraints: BoxConstraints(minHeight: height),
    child: Container(
      padding: const EdgeInsets.only(bottom: 25, top: 10),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, -5.0), // shadow direction: bottom right
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      child: Column(
        children: [
          _title(),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: chatsData.length,
              itemBuilder: (context, index) {
                return ChatCard(chat: chatsData[index], press: () {});
              }),
        ],
      ),
    ),
  );
}

Widget _title() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recent Chat",
          style: appTheme().textTheme.headline3,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(elevation: 0.0, primary: Colors.grey),
          onPressed: () {},
          icon: const Icon(
            Icons.archive,
            color: Colors.black,
          ),
          label: Text(
            "Archive Chat",
            style:
                appTheme().textTheme.headline2!.copyWith(color: Colors.black),
          ),
        ),
      ],
    ),
  );
}
