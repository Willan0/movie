import 'package:flutter/cupertino.dart';

import '../constant/dimens.dart';
import '../constant/photos.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(bgImg,
      width: getWidth(context),
      height: getHeight(context),
      fit: BoxFit.cover,
    );
  }
}
