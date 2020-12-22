import 'package:fb_clone_ctg/config/app_color.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/shared/widgets/custom_app_bar.dart';
import 'package:fb_clone_ctg/shared/widgets/search_bar.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../module/setting/settingg.dart';
import '../shared/widgets/top_nav_bar.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  final List<SingleChildCloneableWidget> bloc;

  final Widget topNavBar;
  final bool canSearch;
  final bool hasTopNavBar;
  final int navBarIndex;

  PageContainer({
    this.child,
    this.topNavBar,
    this.canSearch = true,
    this.hasTopNavBar = true,
    this.bloc,
    this.navBarIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    // if (SpUtil.getString(SPrefCacheConstant.KEY_TOKEN).isEmpty)
    //   Navigator.pushReplacementNamed(context, RouteConstant.SIGN_IN);
    final _scaffoldKey = GlobalKey<ScaffoldState>();
//    if (actions == null) actions = List<Widget>();
//    actions.add(IconButton(
//      icon: Icon(Icons.search),
//      onPressed: () {
////        showSearch(context: context, delegate: SearchBar());
//      },
//    ));

    return SafeArea(
        bottom: false,
        child: Scaffold(
          key: _scaffoldKey,
          body: child,
          appBar: hasTopNavBar
              ? CustomAppBar(
                  height: 100,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SearchBar(),
                        TopNavBar(
                          currentIndex: navBarIndex,
                        )
                      ],
                    ),
                  ),
                )
              : null,
        ));
  }

  // Widget _getAppbarTitle(context) {
  //   if (this.specialTitle != null) {
  //     return this.specialTitle;
  //   }
  //   return this.title != null ? _buildTitle() : _buildSearchBox(context);
  // }
  //
  // Text _buildTitle() {
  //   return Text(
  //     this.title,
  //     textAlign: TextAlign.center,
  //     style: TextStyle(
  //       color: AppColor.blueMain,
  //       fontWeight: FontWeight.w600,
  //       fontSize: 17,
  //     ),
  //   );
  // }

  Widget _buildSearchBox(BuildContext context) {
    // return SearchBox(canSearch);
  }
}
