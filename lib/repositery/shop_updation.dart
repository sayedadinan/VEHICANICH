import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vehicahich_admin/repositery/data_provider/shop_reference.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';

class ShopDetailsUpdation {
  approveShop(String documentidpassing) async {
    DocumentReference documentReference =
        ShopReference().shopCollectionReference().doc(documentidpassing);
    try {
      await documentReference
          .update({Shopkeys().isApproved: true, Shopkeys().isRejected: false});
    } catch (e) {
      return 'approve area error $e';
    }
  }

  rejectShop(String documentidpassing) async {
    DocumentReference documentReference =
        ShopReference().shopCollectionReference().doc(documentidpassing);
    try {
      await documentReference.update({Shopkeys().isRejected: true});
    } catch (e) {
      return 'reject area error $e';
    }
  }
}
