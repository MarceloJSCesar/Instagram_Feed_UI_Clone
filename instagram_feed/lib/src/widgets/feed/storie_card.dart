import 'package:flutter/material.dart';
import 'package:instagram_feed/src/config/app_textstyle.dart';

class StorieCard extends StatelessWidget with AppTextStyle {
  final String userImg;
  final String username;
  final bool isMyProfile;
  final bool isWidgetUsedForPost;
  StorieCard({
    Key key,
    @required this.userImg,
    @required this.username,
    @required this.isMyProfile,
    @required this.isWidgetUsedForPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: !isMyProfile
                  ? Border.all(color: Color(0xffef7e61), width: 2)
                  : Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              height: !isWidgetUsedForPost ? 70 : 30,
              width: !isWidgetUsedForPost ? 70 : 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(userImg),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 4),
            child: Text(
              !isWidgetUsedForPost ? username : '',
              style: isMyProfile ? storiemyname : storiename,
            ),
          ),
        ],
      ),
    );
  }
}
