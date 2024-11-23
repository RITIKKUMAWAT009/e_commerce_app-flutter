import "package:flutter/material.dart";
import "package:shimmer/shimmer.dart";

 Widget buildShimmer(BuildContext context, bool isDarkMode) {
    return Shimmer.fromColors(
      baseColor: isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
      highlightColor: isDarkMode ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: 180,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 20,
              width: 100,
              color: Colors.grey,
            ),
            const SizedBox(height: 5),
            Container(
              height: 15,
              width: 50,
              color: Colors.grey,
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }