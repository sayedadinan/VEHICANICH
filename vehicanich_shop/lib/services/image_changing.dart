import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Imagechanging {
  licenceimagechanging(String image, Uint8List imagebyte) async {
    try {
      firebase_storage.Reference reference = firebase_storage
          .FirebaseStorage.instance
          .ref()
          .child('licence_image')
          .child(image);
      final meta = firebase_storage.SettableMetadata(contentType: "image/jpeg");
      await reference.putData(imagebyte, meta);
      String url = await reference.getDownloadURL();
      return url;
    } catch (e) {
      return 'there is a error when changing licence photo';
    }
  }

  mmimagechanging(String image, Uint8List imagebyte) async {
    try {
      firebase_storage.Reference reference = firebase_storage
          .FirebaseStorage.instance
          .ref()
          .child('mm_image')
          .child(image);
      final meta = firebase_storage.SettableMetadata(contentType: "image/jpeg");
      await reference.putData(imagebyte, meta);
      String url = await reference.getDownloadURL();
      return url;
    } catch (e) {
      return 'there is a error when changing mm photo';
    }
  }

  bannerimagechanging(String image, Uint8List imagebyte) async {
    try {
      firebase_storage.Reference reference = firebase_storage
          .FirebaseStorage.instance
          .ref()
          .child('banner_image')
          .child(image);
      final meta = firebase_storage.SettableMetadata(contentType: "image/jpeg");
      await reference.putData(imagebyte, meta);
      String url = await reference.getDownloadURL();
      return url;
    } catch (e) {
      return 'there is a error when changing banner photo';
    }
  }
}
