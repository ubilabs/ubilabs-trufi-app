import 'package:flutter/material.dart';
import 'package:trufi_core/base/models/map_provider/i_trufi_map_controller.dart';

class CompassButton extends StatefulWidget {
  const CompassButton({
    Key? key,
    required this.trufiMapController,
  }) : super(key: key);

  final ITrufiMapController trufiMapController;

  @override
  CompassButtonState createState() => CompassButtonState();
}

class CompassButtonState extends State<CompassButton>
    with SingleTickerProviderStateMixin {
  bool _visible = false;

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: FloatingActionButton(
        mini: true,
        onPressed: _handleOnPressed,
        heroTag: null,
        child: const Icon(
          Icons.explore,
        ),
      ),
    );
  }

  void _handleOnPressed() {
    widget.trufiMapController.rotate(0);
    setVisible(visible: false);
  }

  bool get isVisible => _visible;

  void setVisible({required bool visible}) {
    if (_visible != visible) {
      setState(() {
        _visible = visible;
        if (visible) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
      });
    }
  }
}
