import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/data/repo/notification_repo.dart';
import 'package:fb_clone_ctg/module/notification/notification_bloc.dart';
import 'package:fb_clone_ctg/module/notification/notification_event.dart';
import 'package:fb_clone_ctg/module/notification/notification_item.dart';
import 'package:fb_clone_ctg/shared/entities/notification_result.dart';
import 'package:fb_clone_ctg/shared/widgets/loading_indicator.dart';
import 'package:fb_clone_ctg/shared/widgets/search_icon.dart';
import 'package:fb_clone_ctg/shared/widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  NotificationBloc _bloc;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _bloc = NotificationBloc();
    _bloc.eventController.sink.add(InitEvent());
    DateTime now = new DateTime.now();

    return PageContainer(
      bloc: [],
      navBarIndex: NavBarIndex.NOTIFICATION,
      child: MultiProvider(
        providers: [Provider.value(value: NotificationBloc())],
        child: Container(
          // height: 100,
          child: StreamBuilder<NotificationResult>(
            stream: _bloc.notificationStream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return LoadingIndicatorWidget();
              NotificationResult notiRes = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  if (index == 0) return getNotificationLabel();
                  if (index == 1)
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Text(
                        "Mới",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    );
                  return NotiItem(
                    notification: notiRes.data[index - 2],
                  );
                },
                itemCount: notiRes.data.length + 2,
                semanticChildCount: 0,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget getNotificationLabel() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Thông báo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.black,
            ),
          ),
          SearchIcon(
            onPressed: null,
            size: 25,
          ),
        ],
      ),
    );
  }
}
