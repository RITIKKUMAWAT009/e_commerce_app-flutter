// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// import '../../utils/constants/sizes.dart';

// class RoundedImage extends StatelessWidget {
//   const RoundedImage({
//     super.key,
//     this.width=350,
//     this.height=400,
//     required this.imageUrl,
//     this.applyImageRadius = false,
//     this.border,
//     this.backgroundColor = Colors.transparent,
//     this.fit = BoxFit.contain,
//     this.padding = const EdgeInsets.all(TSize.md),
//     this.isNetworkImage = false,
//     this.onPressed,
//     this.borderRadius = TSize.md,
//   });

//   final double? width, height;
//   final String imageUrl;
//   final bool applyImageRadius;
//   final BoxBorder? border;
//   final Color backgroundColor;
//   final BoxFit fit;
//   final EdgeInsetsGeometry padding;
//   final bool isNetworkImage;
//   final VoidCallback? onPressed;
//   final double borderRadius;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         margin:const EdgeInsets.only(right: 5),
//         width: width,
//         height: height,
//         padding: padding,
//         decoration: BoxDecoration(border: border,
//           color: backgroundColor,
//             borderRadius: applyImageRadius
//                 ? BorderRadius.circular(borderRadius)
//                 : BorderRadius.zero),
//         child: ClipRRect(
//             borderRadius: applyImageRadius
//                 ? BorderRadius.circular(TSize.md)
//                 : BorderRadius.zero,
//             child: Image(
//               image: isNetworkImage
//                   ? NetworkImage( imageUrl,) 
//                   : AssetImage(imageUrl) as ImageProvider,
//               fit: fit,
//             ),),
//       ),
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/common/widgets/effects/shimmer_effect.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width = 350,
    this.height = 400,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor = Colors.transparent,
    this.fit = BoxFit.contain,
    this.padding = const EdgeInsets.all(TSize.md),
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSize.md,
    this.placeholder,
    this.errorImage,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  final Widget? placeholder;
  final Widget? errorImage;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: isNetworkImage
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: fit,
                  placeholder: (context, url) => placeholder ??
                      Center(
                        child: ShimmerEffect(height: 350, width: 400,radius:10,),
                      ),
                  errorWidget: (context, url, error) => errorImage ??
                      Center(
                        child: Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                      ),
                )
              : Image.asset(
                  imageUrl,
                  fit: fit,
                ),
        ),
      ),
    );
  }
}
