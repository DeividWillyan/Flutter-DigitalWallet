import 'package:flutter/material.dart';

navigator(BuildContext context, Widget widget) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) => widget));
}
