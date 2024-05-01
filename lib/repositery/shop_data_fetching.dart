import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vehicahich_admin/repositery/data_provider/shop_reference.dart';

class ShopRepository {
  Future<List<Map<String, dynamic>>> getShopDetails() async {
    try {
      final QuerySnapshot querySnapshot =
          await ShopReference().shopCollectionReference().get();
      final List<Map<String, dynamic>> shopDetailsList = querySnapshot.docs
          .map((DocumentSnapshot doc) => doc.data() as Map<String, dynamic>)
          .toList();
      print('Successfully fetched data: $shopDetailsList');
      return shopDetailsList;
    } catch (e) {
      print('Error fetching data: $e');
      rethrow;
    }
  }

  documentidpassing(QuerySnapshot querySnapshot) {
    final updationreference = querySnapshot.docs.first;
    final documentId = updationreference.id;
    return documentId;
  }
}
