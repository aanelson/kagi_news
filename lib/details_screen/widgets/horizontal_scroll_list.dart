import 'package:flutter/material.dart';
import 'package:kagi_news/details_screen/cubit/details_screen_state.dart';

class HorizontalAnimatingScrollView<T> extends StatefulWidget {
  const HorizontalAnimatingScrollView({
    super.key,
    required this.list,
    required this.title,
    required this.itemBuilder,
    this.height = 200.0,
  });
  final String title;
  final List<T> list;
  final double height;
  final Widget Function(BuildContext context, T item)? itemBuilder;
  static HorizontalAnimatingScrollView<SplitDetails> splitDetails({
    required List<SplitDetails> list,
    required String title,
  }) {
    return HorizontalAnimatingScrollView<SplitDetails>(
      list: list,
      title: title,
      itemBuilder: (context, item) {
        return Card(
          elevation: 4,
          child: ClipRect(
            child: ListTile(
              title: Text(
                item.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: ClipRect(
                child: Text(
                  item.summary,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  State<HorizontalAnimatingScrollView> createState() =>
      _HorizontalAnimatingScrollViewState();
}

class _HorizontalAnimatingScrollViewState
    extends State<HorizontalAnimatingScrollView> {
  final PageController _controller = PageController(viewportFraction: 0.8);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.list.isEmpty) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 220, // Card height
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: widget.list.length,
              controller: _controller,
              itemBuilder: (context, index) {
                return ListenableBuilder(
                  listenable: _controller,
                  builder: (context, child) {
                    double factor = 1;
                    if (_controller.position.hasContentDimensions) {
                      factor = 1 - (_controller.page! - index).abs();
                    }

                    return Center(
                      child: SizedBox(
                        height: 140 + (factor * 30),
                        child: Card(
                          elevation: 4,
                          child: ClipRect(
                            child: ListTile(
                              title: Text(
                                widget.list[index].title,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              subtitle: ClipRect(
                                child: Text(
                                  widget.list[index].summary,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
