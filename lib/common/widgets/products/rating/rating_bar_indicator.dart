import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../utils/constants/colors.dart';

class RRatingBarIndicator extends StatelessWidget {
  const RRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemCount: 5,
      unratedColor: TColors.grey,
      itemSize: 20,
      rating: rating,
      itemBuilder: (_, __) => Icon(
        Icons.star,
        color: TColors.primary,
      ),
    );
  }
}
