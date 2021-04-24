import 'dart:io';

import 'package:flutter/foundation.dart';

/// [Platform] is NOT supported on Web, make a workaround.
bool get isNotIOS => kIsWeb || Platform.operatingSystem != 'ios';

/// [Platform] is NOT supported on Web, make a workaround.
bool get isNotAndroid => kIsWeb || Platform.operatingSystem != 'android';

Future<dynamic> checkInternet() async{
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
     return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}