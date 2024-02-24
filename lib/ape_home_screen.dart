// Copyright Epic Games, Inc. All Rights Reserved.

import 'package:flutter/material.dart';

import 'ape_painter.dart';

class ApeHomeScreen extends StatefulWidget {
  const ApeHomeScreen({super.key, required this.title});
  final String title;

  @override
  State<ApeHomeScreen> createState() => _ApeHomeScreenState();
}

class _ApeHomeScreenState extends State<ApeHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double height = constraints.maxHeight / 2;
          double width = height * 2;
          return Container(
            height: height,
            width: width,
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor, width: 2)),
            child: CustomPaint(painter: ApePainter()),
          );
        },
      ),
    );
  }
}
