import 'package:flutter/material.dart';

ListTile studiesListTile(
  String title,
  String subtitle,
  String leadingImagePath,
  String trailing,
) {
  return ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Text(trailing),
    leading: CircleAvatar(
      // backgroundColor: Theme.of(context).colorScheme.tertiary,
      child: Image.asset(leadingImagePath),
    ),
  );
}
