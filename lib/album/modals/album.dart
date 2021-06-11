import 'package:flutter/material.dart';

/**
 * Created by IntelliJ IDEA.<br/>
 * User: c_weerasinghe<br/>
 * Date: 6/11/21<br/>
 * Time: 2:53 PM<br/>
 * To change this template use File | Settings | File Templates.
 */
class Album {
  final int userId;
  final int id;
  final String title;

  Album({@required this.userId, @required this.id, @required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
