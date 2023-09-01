import 'package:doctor/screens/book_appoinment/my_appointment/01_my_appointment.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'my_appointment/02_my_appointment.dart';

class BookAppointmentController extends GetxController {
  String selectedDate = '';
  String dateCount = '';
  String range = '';
  String rangeCount = '';
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    update(["container"]);
  }

  void backArrow() {
    Get.back();
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      range = '${DateFormat('MM/dd/yyyy').format(args.value.startDate)} -'
          // ignore: lines_longer_than_80_chars
          ' ${DateFormat('MM/dd/yyyy').format(args.value.endDate ?? args.value.startDate)}';
    } else if (args.value is DateTime) {
      selectedDate = args.value.toString();
    } else if (args.value is List<DateTime>) {
      dateCount = args.value.length.toString();
    } else {
      rangeCount = args.value.length.toString();
    }
    update(['DatePicker']);
  }

  void bookAppointmentButton() {
    Get.to(const MyAppointmentMessage());
  }
}
