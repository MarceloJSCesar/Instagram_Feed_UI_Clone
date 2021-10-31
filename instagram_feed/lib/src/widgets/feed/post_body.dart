import 'package:flutter/material.dart';
import 'package:instagram_feed/src/config/app_assets_name.dart';
import 'package:instagram_feed/src/widgets/feed/post_card.dart';

class PostBody extends StatelessWidget {
  const PostBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PostCard(
          likesnum: '38',
          title:
              'Passatempo a decorrer na nossa página do Facebook. Vai la e participa também..,',
          subtitle: ' more',
          postImg: AppAssetsName.cvmovelpostImg,
          isPostSponsored: true,
          userImg: AppAssetsName.cvmovelImg,
          username: 'cvmovelofficial',
        ),
        PostCard(
          likesnum: '3,397',
          title:
              'Legend vc legend                          Powerlifting vs power lifter... ',
          subtitle: 'more',
          postImg: AppAssetsName.larryposttImg,
          isPostSponsored: false,
          userImg: AppAssetsName.larryImg,
          username: 'larrywheels',
        ),
        PostCard(
          likesnum: '394',
          title:
              'Do you think you often compare your journey with other? Stop doing so... Everyone has...',
          subtitle: ' more',
          postImg: AppAssetsName.sleeplesspostImg,
          isPostSponsored: false,
          userImg: AppAssetsName.sleeplessImg,
          username: 'sleeplessyogi',
        ),
        PostCard(
          likesnum: '232',
          title:
              'November 6th                                                        @cvma_caboverde gala performing live...',
          subtitle: ' more',
          postImg: AppAssetsName.cvmapostImg,
          isPostSponsored: true,
          userImg: AppAssetsName.cvmaImg,
          username: 'full_house_entertainment_',
        ),
        PostCard(
          likesnum: '5,563',
          title: 'And for a cool \$3.26 milion, it can be all yours...',
          subtitle: ' more',
          postImg: AppAssetsName.cnnpostImg,
          isPostSponsored: true,
          userImg: AppAssetsName.cnnImg,
          username: 'cnn',
        ),
      ],
    );
  }
}
