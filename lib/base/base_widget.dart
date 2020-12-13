import 'package:fb_clone_ctg/config/app_color.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageContainer extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget> actions;
  final List<SingleChildCloneableWidget> bloc;
  final List<SingleChildCloneableWidget> di;
  final Widget sidebar;
  final Widget topNavBar;
  final Widget specialTitle;
  final bool canSearch;

  PageContainer({
    this.title,
    this.actions,
    this.child,
    this.bloc,
    this.di,
    this.sidebar,
    this.topNavBar,
    this.specialTitle,
    this.canSearch = false,
  });

  @override
  Widget build(BuildContext context) {
    if (SpUtil.getString(SPrefCacheConstant.KEY_TOKEN).isEmpty)
      Navigator.pushReplacementNamed(context, RouteConstant.SIGN_IN);
    final _scaffoldKey = GlobalKey<ScaffoldState>();
//    if (actions == null) actions = List<Widget>();
//    actions.add(IconButton(
//      icon: Icon(Icons.search),
//      onPressed: () {
////        showSearch(context: context, delegate: SearchBar());
//      },
//    ));
    return Scaffold(
      body: MultiProvider(
        providers: [...di, ...bloc],
        child: SafeArea(
          bottom: false,
          child: Scaffold(
            key: _scaffoldKey,
            drawer: sidebar,
            body: child,
            appBar: PreferredSize(
              
            ),
          ),
        ),
      ),
    );
  }

  Widget _getAppbarTitle(context) {
    if (this.specialTitle != null) {
      return this.specialTitle;
    }
    return this.title != null ? _buildTitle() : _buildSearchBox(context);
  }

  Text _buildTitle() {
    return Text(
      this.title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColor.blueMain,
        fontWeight: FontWeight.w600,
        fontSize: 17,
      ),
    );
  }

  Widget _buildSearchBox(BuildContext context) {
    // return SearchBox(canSearch);
  }
}