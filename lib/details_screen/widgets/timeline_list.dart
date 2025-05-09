import 'package:flutter/material.dart';
import 'package:kagi_news/details_screen/cubit/details_screen_state.dart';
import 'package:timelines_plus/timelines_plus.dart';

class TimelineList extends StatelessWidget {
  const TimelineList({super.key, required this.listDetails});
  final List<SplitDetails> listDetails;

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        return SliverList.builder(
          itemBuilder: ((context, index) {
            final item = listDetails[index];
            return TimelineTile(
              nodePosition: 0.4,
              oppositeContents: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(item.title),
              ),
              contents: Card(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(item.summary),
                ),
              ),
              node: TimelineNode(
                indicator: DotIndicator(size: 25),
                startConnector: SolidLineConnector(),
                endConnector: SolidLineConnector(),
              ),
            );
          }),
          itemCount: listDetails.length,
        );
      },
    );
  }
}
