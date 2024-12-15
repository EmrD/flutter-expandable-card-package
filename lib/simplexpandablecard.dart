import 'package:flutter/material.dart';

class SimpleExpandableCard extends StatefulWidget {
  final String title;
  final Widget child;
  final Color? cardColor;
  final Color? titleColor;
  final Color? iconColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  const SimpleExpandableCard({
    super.key,
    required this.title,
    required this.child,
    this.cardColor = Colors.white,
    this.titleColor = Colors.black,
    this.iconColor = Colors.blue,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.all(16.0),
  });

  @override
  _SimpleExpandableCardState createState() => _SimpleExpandableCardState();
}

class _SimpleExpandableCardState extends State<SimpleExpandableCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.borderRadius!),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.title,
              style: TextStyle(
                color: widget.titleColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: widget.iconColor,
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
          ),
          if (_isExpanded)
            Padding(
              padding: widget.padding!,
              child: widget.child,
            ),
        ],
      ),
    );
  }
}
