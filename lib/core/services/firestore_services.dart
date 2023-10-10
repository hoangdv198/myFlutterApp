
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_flutter_app/main.dart';

class FirestoreServices {
  final db = FirebaseFirestore.instance;

  Future<void> setFlash(String streamId,bool value) async {
    try {
      await db.collection("streams").doc(streamId).update({
        "isFlash": value
      });
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> setVibrateShort(String streamId,bool value) async {
    try {
      await db.collection("streams").doc(streamId).update({
        "vibrateShort": value
      });
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> setVibrateLong(String streamId,bool value) async {
    try {
      await db.collection("streams").doc(streamId).update({
        "vibrateLong": value
      });
    } catch (e) {
      logger.e(e);
    }
  }
}