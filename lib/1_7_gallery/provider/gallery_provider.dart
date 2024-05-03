import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:local_auth/local_auth.dart';

class GalyerProvider extends ChangeNotifier {
  final auth = LocalAuthentication();

  Future<bool> fingerprint() async {
    bool isspoted = await auth.isDeviceSupported();
    bool active = await auth.canCheckBiometrics;
    if (isspoted && active) {
      bool respponc = await auth.authenticate(
          localizedReason: "add your fingerprint");
        if(respponc){
          log("fingerprint successfully worked!");
          return true;

        }
        else{
          return false;
        }

    }else{
      log("fingerprint successfully worked!");
      return false;
    }
    return false;
  }
}