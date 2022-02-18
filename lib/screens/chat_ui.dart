import 'package:flutter/material.dart';
import 'package:uis_project/screens/widgets/chats_messages.dart';
import 'package:uis_project/screens/widgets/stories_card.dart';

class ChatUi extends StatelessWidget {
  const ChatUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heigth = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF10002b),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? heigth / 3
                      : heigth / 2,
              flexibleSpace: FlexibleSpaceBar(
                background: storiesCard(),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  allChatMessages(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
