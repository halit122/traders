import 'package:get/get.dart';

validitTextformfaild({String? value, int? min, int? max, String? tyep}) {
  if (tyep == "email") {
    if (!GetUtils.isEmail(value!)) {
      return "email";
    }
  }
   if (tyep == "username") {
    if (!GetUtils.isUsername(value!)) {
      return "uasrname";
    }
  }
   if (tyep == "phone") {
    if (!GetUtils.isPhoneNumber(value!)) {
      return "isPhoneNumber";
    }
  }
 
   if (value!.isEmpty) {
     return "isEmpty" ;
   }
    if (value.length < min!) {
     return "min" ;
   }
   if (value.length > max!) {
     return "max"; 
   }
  }


