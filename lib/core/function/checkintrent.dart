import 'dart:io';

Future<bool> ckeckinternt() async {
    bool  reslt  ;
  try {
    var res = await InternetAddress.lookup("google.com");
    reslt  = res.isNotEmpty && res[0].rawAddress.isNotEmpty;
    if (reslt) {
      print("-------true--------");
      return true;
    } else {
      print("*****false******");
    }
  } on SocketException catch (_) {
    return false;
  }
  return reslt;
}
