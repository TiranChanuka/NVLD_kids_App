import 'package:flutter/material.dart';

class ShapeWidget extends StatelessWidget {
  final Color color;
  final bool isDragging;
  final Function onDragStarted;
  final Function onDragEnded;

  const ShapeWidget({super.key, 
    required this.color,
    required this.isDragging,
    required this.onDragStarted,
    required this.onDragEnded,
  });

  @override
  Widget build(BuildContext context) {
    return Draggable<Color>(
      data: color,
      onDragStarted: () => onDragStarted(),
      onDragEnd: (details) => onDragEnded(),
      feedback: Container(
        color: color,
        child: const Center(
          child: Text(
            'Shape',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      child: Container(
        color: color,
        child: const Center(
          child: Text(
            'Shape',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ShadedArea extends StatelessWidget {
  final Color targetColor;
  final Function onAccept;

  const ShadedArea({super.key, 
    required this.targetColor,
    required this.onAccept,
  });

  @override
  Widget build(BuildContext context) {
    return DragTarget<Color>(
      onWillAccept: (data) => data == targetColor,
      onAccept: (data) => onAccept(),
      builder: (context, candidateData, rejectedData) {
        return Container(
          color: Colors.grey,
          child: const Center(
            child: Text(
              'Drop here',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}

class ShapesMatchGameScreen extends StatefulWidget {
  const ShapesMatchGameScreen({super.key});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<ShapesMatchGameScreen> {
  List<Color> availableColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];
  List<Color> shadedAreaColors = [];
  Color? draggingColor;

  void startDragging(Color color) {
    setState(() {
      draggingColor = color;
      availableColors.remove(color);
    });
  }

  void endDragging() {
    setState(() {
      draggingColor = null;
    });
  }

  void acceptShape(Color color) {
    setState(() {
      shadedAreaColors.add(color);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shapes Matching Game'),
      ),
      body: Column(
        children: [
          GridView.count(
            crossAxisCount: 3,
            children: shadedAreaColors
                .map((color) => ShadedArea(
              targetColor: color,
              onAccept: () => acceptShape(color),
            ))
                .toList(),
          ),
          Row(
            children: availableColors
                .map((color) => ShapeWidget(
              color: color,
              isDragging: draggingColor == color,
              onDragStarted: () => startDragging(color),
              onDragEnded: () => endDragging(),
            ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
