import 'package:get/get.dart';
import 'package:task2/themes/colors/lightcolors.dart';

class DateSelectionController extends GetxController {
  bool switchChange = false;

  onChanged(value) {
    switchChange = value;
    update();
  }

  String dropdownvalue = 'every week';

  // List of items in our dropdown menu
  var items = [
    'every week',
    'daily',
    'monthly',
  ];
  String dropdownnumber = '1';

  // List of items in our dropdown menu
  var itemnumbers = ['1', '2', '3', '4'];

  dropdownchange(value) {
    dropdownvalue = value!;
    update();
  }

  dropdownnumberchange(value) {
    dropdownnumber = value!;
    update();
  }

  List<Map<String, dynamic>> cac = [
    {
      "day": "fri",
      "date": "25th june",
      "text": "Yesterday",
    },
    {
      "day": "sat",
      "date": "26th june",
      "text": "Today",
    },
    {
      "day": "sun",
      "date": "27th june",
      "text": "Tomorrow",
    },
    {
      "day": "mon",
      "date": "28th june",
      "text": "Black Day",
    },
  ];

  List<Map<String, dynamic>> chips = [
    {
      "time": "7am-9am",
      "Color": LightColors.primary,
    },
    {
      "time": "10am-12pm",
      "Color": LightColors.backGroundColor,
    },
    {
      "time": "1pm-3pm",
      "Color": LightColors.backGroundColor,
    },
    {
      "time": "4pm-6pm",
      "Color": LightColors.backGroundColor,
    },
    {
      "time": "7pm-9pm",
      "Color": LightColors.backGroundColor,
    },
  ];
}
