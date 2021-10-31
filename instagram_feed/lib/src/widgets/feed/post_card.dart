import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_feed/src/config/app_textstyle.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PostCard extends StatelessWidget with AppTextStyle {
  final String title;
  final String userImg;
  final String postImg;
  final String likesnum;
  final String username;
  final String subtitle;
  final bool isPostSponsored;
  PostCard({
    Key key,
    @required this.title,
    @required this.postImg,
    @required this.userImg,
    @required this.likesnum,
    @required this.subtitle,
    @required this.username,
    @required this.isPostSponsored,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffef7e61), width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(userImg),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                !isPostSponsored
                    ? Text(
                        username,
                        style: postname,
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            username,
                            style: postname,
                          ),
                          Text(
                            'Sponsored',
                            style: storiemyname,
                          )
                        ],
                      ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.keyboard_control,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Image(
          height: 470,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
          image: AssetImage(postImg),
        ),
        Container(
          //margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      FontAwesome5.comment,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      FlutterIcons.send_fea,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Image(
                height: 55,
                width: 70,
                fit: BoxFit.fill,
                image: AssetImage('assets/save.png'),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('$likesnum likes', style: postname),
              Text.rich(
                TextSpan(
                  text: '$username ',
                  style: postname,
                  children: <TextSpan>[
                    TextSpan(
                      text: title,
                      style: storiename,
                    ),
                    TextSpan(text: subtitle, style: storiemyname)
                  ],
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'See Translation',
                style: storiemyname,
              )
            ],
          ),
        ),
      ],
    );
  }
}
