import 'package:flutter/material.dart';

class PreloaderCircleIndicator extends StatefulWidget {
  const PreloaderCircleIndicator({Key? key}) : super(key: key);

  @override
  State<PreloaderCircleIndicator> createState() => _PreloaderCircleIndicatorState();
}

class _PreloaderCircleIndicatorState extends State<PreloaderCircleIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
      animationBehavior: AnimationBehavior.preserve,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.5, curve: Curves.fastOutSlowIn),
      reverseCurve: Curves.fastOutSlowIn,
    )..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _controller.forward();
        } else if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
      });
  }

  @override
  void dispose() {
    _controller.stop();
    super.dispose();
  }

  Widget _buildIndicators(BuildContext context, Widget? child) {
    return CircularProgressIndicator(value: _animation.value,
    color: Theme.of(context).colorScheme.primary,);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: AnimatedBuilder(
        animation: _animation,
        builder: _buildIndicators,
      ),
    );
  }
}
