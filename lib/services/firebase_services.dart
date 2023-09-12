import 'package:firebase_database/firebase_database.dart';

class FirebaseServices {
  static FirebaseDatabase? database;

  static void init() {
    database = FirebaseDatabase.instance;
  }

  static Future<void> addData(
      DatabaseReference ref, Map<String, dynamic> value) async {
    await ref.set(value);
    print('=================>$value');
  }

  static Future<Map?> getData(DatabaseReference ref) async {
    Map? allData;
    await ref.get().then((value) {
      allData = value.value == null ? null : value.value as Map;
    });
    return allData;
  }

  static Future<void> updateData(
      DatabaseReference ref, Map<String, dynamic> value) async {
    await ref.update(value);
  }
}
