import 'package:flutter/material.dart';
import 'package:instagram_feed/src/config/app_assets_name.dart';

class AppbarLeadingIcon extends StatelessWidget {
  final bool isAddIcon;
  AppbarLeadingIcon({
    Key key,
    @required this.isAddIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isAddIcon ? 2 : 100,
      width: isAddIcon ? 28 : 74,
      margin: isAddIcon
          ? const EdgeInsets.symmetric(horizontal: 10, vertical: 15)
          : const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: isAddIcon
            ? Border.all(color: Colors.white, width: 2.0)
            : Border.all(color: Colors.transparent, width: .0),
        borderRadius:
            isAddIcon ? BorderRadius.circular(10.0) : BorderRadius.circular(.0),
      ),
      child: isAddIcon
          ? Icon(
              Icons.add,
              size: 23,
            )
          : Image(
              fit: BoxFit.fill,
              image: AssetImage(AppAssetsName.appbarmessengerImg),
            ),
    );
  }
}
