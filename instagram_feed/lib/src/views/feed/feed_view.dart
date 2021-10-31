import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_feed/src/config/app_assets_name.dart';
import 'package:instagram_feed/src/config/app_textstyle.dart';
import 'package:instagram_feed/src/widgets/feed/appbar_leading_icon.dart';
import 'package:instagram_feed/src/widgets/feed/instagram_title.dart';
import 'package:instagram_feed/src/widgets/feed/post_body.dart';
import 'package:instagram_feed/src/widgets/feed/post_card.dart';
import 'package:instagram_feed/src/widgets/feed/storie_card.dart';

class FeedView extends StatefulWidget {
  const FeedView({Key key}) : super(key: key);

  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> with AppTextStyle {
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: .0,
            floating: true,
            pinned: true,
            title: InstagramTitle(),
            backgroundColor: Colors.black,
            actions: <Widget>[
              AppbarLeadingIcon(isAddIcon: true),
              AppbarLeadingIcon(isAddIcon: false),
            ],
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        StorieCard(
                          isWidgetUsedForPost: false,
                          userImg: AppAssetsName.meImg,
                          username: 'Your Story',
                          isMyProfile: true,
                        ),
                        StorieCard(
                          isWidgetUsedForPost: false,
                          userImg: AppAssetsName.nunoImg,
                          username: 'nunoand1',
                          isMyProfile: false,
                        ),
                        StorieCard(
                          isWidgetUsedForPost: false,
                          userImg: AppAssetsName.mbapeImg,
                          username: 'k.mbappe',
                          isMyProfile: false,
                        ),
                        StorieCard(
                          isWidgetUsedForPost: false,
                          userImg: AppAssetsName.ederImg,
                          username: 'ederxavier',
                          isMyProfile: false,
                        ),
                        StorieCard(
                          isWidgetUsedForPost: false,
                          userImg: AppAssetsName.biancaImg,
                          username: 'biancazerbini',
                          isMyProfile: false,
                        ),
                        StorieCard(
                          isWidgetUsedForPost: false,
                          userImg: AppAssetsName.windyImg,
                          username: 'windyfernandes',
                          isMyProfile: false,
                        ),
                        StorieCard(
                          isWidgetUsedForPost: false,
                          userImg: AppAssetsName.benjiImg,
                          username: 'benjicomedia',
                          isMyProfile: false,
                        ),
                        StorieCard(
                          isWidgetUsedForPost: false,
                          userImg: AppAssetsName.ricardoImg,
                          username: 'richievieira',
                          isMyProfile: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: PostBody(),
          ),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: 0,
        activeColor: Colors.white,
        inactiveColor: Colors.white70,
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                width: 27,
                height: 27,
                image: AssetImage(AppAssetsName.meImg),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
