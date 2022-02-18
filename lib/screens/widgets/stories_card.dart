import 'package:flutter/material.dart';
import 'package:uis_project/app_theme.dart';
import 'package:uis_project/modules/story.dart';

Widget storiesCard() {
  return ListView(
    padding: const EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Welcome Modather",
                style: appTheme().textTheme.headline1!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
              ),
              Text(
                "Flutter Chat",
                style: appTheme().textTheme.headline1!.copyWith(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10.0, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Story", style: appTheme().textTheme.headline1),
            Text(
              "See All",
              style: appTheme().textTheme.headline1!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _addNewStoryButton(),
            ...[
              for (Story story in storiesList)
                _currentStoriesList(
                  assetName: story.imagePath,
                  connectionName: story.connectionName,
                ),
            ]
          ],
        ),
      )
    ],
  );
}

Widget _addNewStoryButton() {
  return Column(
    children: [
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(left: 10),
          height: 65,
          width: 65,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      Text(
        "  Add",
        style: appTheme().textTheme.headline1!.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w200,
            ),
      ),
      Text("  Story", style: appTheme().textTheme.headline1),
    ],
  );
}

Widget _currentStoriesList({
  required String assetName,
  required String connectionName,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(left: 10, bottom: 17),
          height: 65,
          width: 65,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 28.5,
            foregroundImage: AssetImage(assetName),
          ),
        ),
      ),
      Text(connectionName, style: appTheme().textTheme.headline1),
    ],
  );
}
