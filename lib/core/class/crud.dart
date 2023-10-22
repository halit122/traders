import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:traders/core/class/stateRequest.dart';

import '../function/checkintrent.dart';

class Crud {
  Future<Either<StatrRequest, Map>> postdata(
      String uri, Map<dynamic, dynamic> data) async {
    try {
      if (await ckeckinternt()) {
        var respost = await http.post(Uri.parse(uri), body: data);
        if (respost.statusCode == 200 || respost.statusCode == 201) {
          Map<dynamic, dynamic> resbody = jsonDecode(respost.body);
          return Right(resbody);
        } else {
          return const Left(StatrRequest.severfailure);
        }
      }else {
        return const Left(StatrRequest.offlinefailuer) ; 
      }
    } catch (e) {
      return const Left(StatrRequest.severfailure);
    }
  }
}
