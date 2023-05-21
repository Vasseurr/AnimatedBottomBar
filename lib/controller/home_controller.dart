// ignore_for_file: prefer_final_fields, unnecessary_null_comparison, unnecessary_overrides, unused_field

import 'package:get/get.dart';

class HomeController extends GetxController {
  var _mainFabIsClosed = true.obs;
  var _otherFabIsClosed = true.obs;
  var _tabIndex = 0.obs;

  set mainFabIsClosed(value) {
    _mainFabIsClosed.value = value;
  }

  get mainFabIsClosed => _mainFabIsClosed.value;

  set otherFabIsClosed(value) {
    _otherFabIsClosed.value = value;
  }

  get otherFabIsClosed => _otherFabIsClosed.value;

  set tabIndex(value) {
    _tabIndex.value = value;
  }

  get tabIndex => _tabIndex.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
