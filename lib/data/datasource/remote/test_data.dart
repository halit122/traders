import 'package:traders/core/class/crud.dart';
import 'package:traders/linkapp.dart';

class TestData {
  Crud crud = Crud();

  TestData(this.crud);

  getData() async {
    var response = await crud.postdata(LinkApp.linksever, {});
    return response.fold((l) => l, (r) => r);
  }
}
