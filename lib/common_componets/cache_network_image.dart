import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../api/api_url.dart';


Widget cachedNetworkImageWidget(String url, {required double height,required double width,BoxFit? fit}) {
    return CachedNetworkImage(
      imageUrl: ApiUrl.imageBaseUrl + url,
      fit: fit ?? BoxFit.cover,
      height: height,
      width: width,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
}