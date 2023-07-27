import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
class BookAppointmentController extends GetxController{
  String selectedDate = '';
  String dateCount = '';
  String range = '';
  String rangeCount = '';

  void backArrow(){
    Get.back();
  }
  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
      if (args.value is PickerDateRange) {
        range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
        // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        dateCount = args.value.length.toString();
      } else {
        rangeCount = args.value.length.toString();
      }
      update(['DatePicker']);
  }

  void bookAppointmentButton()
  {
    Get.back(

    );
  }
}