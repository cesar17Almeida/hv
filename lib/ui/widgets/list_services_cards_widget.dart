import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

SingleChildScrollView listServicesCards (int index) {
  switch (index){
    case 1: // ANDROID
      return const SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.android_rounded, size: 70,),
            Text('Desarrollo de aplicaciones Android'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('Flutter'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('Java'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('Kotlin'),
              ),
            ),
          ],
        ),
      );
    case 2: // iOS
      return const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.apple_rounded, size: 70,),
            Text('Desarrollo de aplicaciones iOS'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('Flutter'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('Swift'),
              ),
            ),
          ],),
      );
    case 3: // BACKEND PYTHON
      return const SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.code, size: 70,),
            Text('Desarrollo Backend'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('Django/Flask Framework'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('NodeJs'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('Java Spring'),
              ),
            ),
          ],
        ),
      );
    case 4:
      return const SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.cloud_done_rounded, size: 70,),
            Text('Cloud Computing and Databases'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('AWS (EC2, lambda, S3, ML)'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('Firebase'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('MongoDB'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text('MySQL, Postgresql, SQL Server'),
              ),
            ),
          ],
        ),
      );
  }
  return SingleChildScrollView(child: Column(children: [],));
}