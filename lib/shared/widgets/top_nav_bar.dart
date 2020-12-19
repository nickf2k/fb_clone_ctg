import 'package:flutter/material.dart';

import '../../constant/route_constant.dart';

class TopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            child:
                TopNavBarItem(iconData: Icons.home, route: RouteConstant.HOME),
            flex: 1,
          ),
          Expanded(
            child:
                TopNavBarItem(iconData: Icons.group, route: RouteConstant.HOME),
            flex: 1,
          ),
          Expanded(
            child: TopNavBarItem(
                iconData: Icons.ondemand_video, route: RouteConstant.HOME),
            flex: 1,
          ),
          Expanded(
            child: TopNavBarItem(
                iconData: Icons.notifications_none,
                route: RouteConstant.NOTIFICATIONS),
            flex: 1,
          ),
          Expanded(
            child:
                TopNavBarItem(iconData: Icons.menu, route: RouteConstant.HOME),
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class TopNavBarItem extends StatelessWidget {
  final IconData iconData;
  final String route;

  const TopNavBarItem({Key key, this.iconData, this.route}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      icon: Icon(iconData),
      onPressed: () => Navigator.pushNamed(context, route),
    );
  }
}
