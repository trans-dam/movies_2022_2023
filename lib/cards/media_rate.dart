import 'package:movies/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

@immutable
class MediaRate extends StatelessWidget {
  const MediaRate({Key? key, required this.voteAverage}) : super(key: key);
  final double voteAverage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kCircularPercentIndicatorRadius * 2,
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(kCircularPercentIndicatorRadius * 2),
        child: Row(
          children: [
            CircularPercentIndicator(
              radius: kCircularPercentIndicatorRadius,
              animation: true,
              lineWidth: 5,
              restartAnimation: true,
              backgroundColor: Colors.transparent,
              circularStrokeCap: CircularStrokeCap.round,
              // Bug: "animation: true" and "percent== 1" causes an infinite animation
              percent: voteAverage == 10.0 ? 0.99 : voteAverage / 10,
              center: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${(voteAverage * 10).truncate()}",
                    style: kVoteStyle,
                  ),
                  const Text(
                    '%',
                    style: kVoteStyleSmall,
                  )
                ],
              ),
              progressColor: kSecondColor,
              fillColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
