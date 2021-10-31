import 'package:flutter/material.dart';
import 'views/feed/feed_view.dart';

class InstagramFeed extends StatelessWidget {
  InstagramFeed({Key key}) : super(key: key);

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedView(),
    );
  }
}
