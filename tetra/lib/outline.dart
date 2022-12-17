import 'package:camera/camera.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'text_detector_scanner.dart';

class Outline extends StatefulWidget {
  const Outline({Key? key}) : super(key: key);

  @override
  State<Outline> createState() => _OutlineState();
}

class _OutlineState extends State<Outline> {
  get _camera => null;
  
  VisionText get _textScanResults => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _camera == null
              ? Container(
            color: Colors.black,
          )
              : Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 150,
              child: CameraPreview(_camera)),
          _buildResults(_textScanResults),
        ],
      ),
    );
  }
  
    Widget _buildResults(VisionText scanResults) {
    CustomPainter painter;
    if (scanResults != null) {
      final Size imageSize = Size(
        _camera.value.previewSize.height - 100,
        _camera.value.previewSize.width,
      );
      painter = TextDetectorPainter(imageSize, scanResults);
      getWords(scanResults);

      return CustomPaint(
        painter: painter,
      );
    } else {
      return Container();
    }
  }
  }