import 'package:get/get.dart';

class RoleController extends GetxController {
  RxBool isUserSelected = true.obs;
}

final RoleController roleController = Get.put(RoleController());
