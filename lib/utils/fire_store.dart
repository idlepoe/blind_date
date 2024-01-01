import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:logger/logger.dart';

class FireStore {
  static Future<bool> logout() async {
    var logger = Logger();
    logger.d("logout");
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      logger.w(e);
      return false;
    }
    return true;
  }

  // static Future<void> postThread(String threadName, Thread thread) async {
  //   var logger = Logger();
  //   try {
  //     final colRef = FirebaseFirestore.instance.collection(threadName);
  //     await colRef.doc(thread.key).set(thread.toJson()).then((value) async {
  //       logger.i("postThread success");
  //     }, onError: (e) async {
  //       logger.e(e);
  //     });
  //   } catch (e) {
  //     logger.w(e);
  //   }
  // }
  //
  // static Future<void> postThreadComment(
  //     ThreadInfo threadInfo, ThreadComment threadComment) async {
  //   var logger = Logger();
  //   try {
  //     final docRef = FirebaseFirestore.instance
  //         .collection(threadInfo.thread_name)
  //         .doc(threadInfo.thread_key);
  //     await docRef.update({
  //       "comments": FieldValue.arrayUnion([threadComment.toJson()]),
  //       "updated_at": DateTime.now().toIso8601String(),
  //     }).then((value) async {
  //       logger.i("postThreadComment success1");
  //     }, onError: (e) async {
  //       logger.e(e);
  //     });
  //   } catch (e) {
  //     logger.e(e);
  //   }
  // }
  //
  // static Future<List<Thread>?> getThreadList(
  //     String threadName) async {
  //   var logger = Logger();
  //   List<Thread> result = [];
  //
  //   try {
  //     Query<Thread> queryRef = FirebaseFirestore.instance
  //         .collection(threadName)
  //         .orderBy("updated_at", descending: true)
  //         .withConverter<Thread>(
  //           fromFirestore: (snapshot, _) => Thread.fromJson(snapshot.data()!),
  //           toFirestore: (thread, _) => thread.toJson(),
  //         );
  //     final snapshot = await queryRef.get();
  //     for (var i = 0; i < snapshot.docs.length; i++) {
  //       Thread row = snapshot.docs[i].data();
  //       result.add(row);
  //     }
  //   } catch (e) {
  //     logger.e(e);
  //     return null;
  //   }
  //   logger.d("getThreadList:" + result.length.toString());
  //   return result;
  // }
  //
  // static Future<List<ThreadComment>?> getThreadDetail(
  //     ThreadInfo threadInfo) async {
  //   var logger = Logger();
  //
  //   List<ThreadComment>? result = [];
  //
  //   try {
  //     DocumentReference? queryRef = FirebaseFirestore.instance
  //         .collection(threadInfo.thread_name)
  //         .doc(threadInfo.thread_key);
  //     final snapshot = await queryRef.get();
  //
  //     List<dynamic> rows = snapshot.get("comments");
  //
  //     for (var i = 0; i < rows.length; i++) {
  //       ThreadComment row = ThreadComment.fromJson(rows[i]);
  //       result.add(row);
  //     }
  //   } catch (e) {
  //     logger.e(e);
  //     return null;
  //   }
  //   logger.d("getThreadDetail:" + result.toString());
  //   return result;
  // }
}
