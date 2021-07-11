import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final IndexedWidgetBuilder itemBuilder;

  ImageCarousel(this.itemBuilder);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late final PageController _controller;
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _controller = PageController(
      viewportFraction: 1.0,
      initialPage: _currentPage,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => PageView.builder(
        onPageChanged: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        controller: _controller,
        itemBuilder: (_, index) => AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            var result = _controller.position.haveDimensions
                ? _controller.page!
                : _currentPage * 1.0;
            var value = result - index;
            value = (1 - value.abs()).clamp(0.0, 1.0);

            return Center(
              child: SizedBox(
                height: Curves.easeOut.transform(value) * constraints.maxHeight,
                width: Curves.easeOut.transform(value) * constraints.maxWidth,
                child: child,
              ),
            );
          },
          child: widget.itemBuilder(context, index),
        ),
      ),
    );
  }
}
