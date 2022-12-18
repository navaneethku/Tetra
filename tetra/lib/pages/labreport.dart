import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class GraphScreen extends StatefulWidget {
  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  final List<Feature> features = [
    Feature(
      title: "RBC",
      color: Colors.blue,
      data: [0.3, 0.31, 0.33, 0.29, 0.34, 0.28],
    ),
    Feature(
      title: "WBC",
      color: Colors.black,
      data: [1, 0.8, 0.9, 0.75, 0.95, 0.1],
    ),
    Feature(
      title: "Platelets",
      color: Colors.orange,
      data: [0.4, 0.5, 0.35, 0.45, 0.6, 0.5],
    ),
    Feature(
      title: "Haemoglobin",
      color: Colors.red,
      data: [0.25, 0.4, 0.3, 0.2, 0.15, 0.4],
    ),
    Feature(
      title: "Lymphs",
      color: Colors.green,
      data: [0.8, 0.7, 8, 0.9, 0.8, 0.4, 0.65],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: Text(
              "Lab Result Graphing",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          LineGraph(
            features: features,
            size: Size(420, 450),
            labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6'],
            labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
            showDescription: true,
            graphColor: Colors.black87,
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
