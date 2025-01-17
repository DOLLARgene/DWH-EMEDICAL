import 'dart:ui';

import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  static String routeName = "/notifications";
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: listView(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Text(
        "Notifications page",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget listView() {
    return ListView.separated(
        itemBuilder: (context, index) {
          return listViewItem(index);
        },
        separatorBuilder: (context, index) {
          return Divider(height: 1);
        },
        itemCount: 15);
  }

  Widget listViewItem(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  message(index),
                  timeAndDate(index),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade300),
      child: Icon(
        Icons.notifications_active,
        size: 15,
        color: Colors.grey.shade700,
      ),
    );
  }

  Widget message(int index) {
    double textSize = 14;
    return Container(
      child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
            text: 'message ',
            style: TextStyle(
                fontSize: textSize,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: ' notification description',
                  style: TextStyle(fontWeight: FontWeight.w600))
            ]),
      ),
    );
  }

  Widget timeAndDate(int index) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("23-15-54", style: TextStyle(fontSize: 10.0)),
          Text("13-25-54", style: TextStyle(fontSize: 10.0)),
        ],
      ),
    );
  }
}
