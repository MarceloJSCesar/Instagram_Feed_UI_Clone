import 'package:flutter/material.dart';
import 'package:instagram_feed/src/config/app_assets_name.dart';

class InstagramTitle extends StatelessWidget {
  InstagramTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 94,
      width: 115,
      fit: BoxFit.fill,
      image: AssetImage(AppAssetsName.instagramtitletImg),
    );
  }
}
