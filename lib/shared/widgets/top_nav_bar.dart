import 'package:flutter/material.dart';

import '../../constant/route_constant.dart';

class TopNavBar extends StatelessWidget {
  final int currentIndex;

  const TopNavBar({Key key, @required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      child: Row(
        children: listItemNavBar(currentIndex),
      ),
    );
  }

  List<Widget> listItemNavBar(int currentTabIndex) {
    List<Widget> listItem = [];
    var listIconDatas = dataForNavBar().keys.toList();
    var listRoutes = dataForNavBar().values.toList();

    for (int i = 0; i < dataForNavBar().length; i++) {
      listItem.add(Expanded(
        flex: 1,
        child: TopNavBarItem(
          iconData: listIconDatas[i],
          route: listRoutes[i],
          isCurrentTab: i==currentTabIndex,
        ),
      ));
    }
    // dataForNavBar().forEach((key, value) {listItem.add(Expanded(
    //   flex: 1,
    //   child: TopNavBarItem(iconData: key,route: value,),
    // ))})
    return listItem;
  }
}

Map<IconData, String> dataForNavBar() {
  return {
    Icons.home: RouteConstant.HOME,
    Icons.group: RouteConstant.ADD_FRIEND,
    Icons.ondemand_video: RouteConstant.VIDEO,
    Icons.notifications_none: RouteConstant.NOTIFICATIONS,
    Icons.menu: RouteConstant.SETTING,
  };
}

class TopNavBarItem extends StatelessWidget {
  final IconData iconData;
  final String route;
  final bool isCurrentTab;

  const TopNavBarItem({Key key, this.iconData, this.route, this.isCurrentTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      icon: Icon(iconData),
      onPressed: () => Navigator.pushNamed(context, route),
      color: isCurrentTab ? Color(0xff1677ef) : Colors.black,
    );
  }
}

class NavBarIndex {
  static const HOME = 0;
  static const FRIEND = 1;
  static const VIDEO = 2;
  static const NOTIFICATION = 3;
  static const SETTING = 4;
}
