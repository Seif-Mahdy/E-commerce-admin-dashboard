import 'package:cloud_firestore/cloud_firestore.dart';

abstract class StoreBase {
  Future<DocumentReference> addData(
    String collectionName,
    Map data,
  );
  Future<void> updateData(
    String collectionName,
    String documentID,
    Map newData,
  );
  Future<void> deleteData(
    String collectionName,
    String documentID,
  );
}

class Store extends StoreBase {
  final _store = Firestore.instance;
  @override
  Future<DocumentReference> addData(
    String collectionName,
    Map data,
  ) async {
    return await _store.collection(collectionName).add(data);
  }

  @override
  Future<void> deleteData(
    String collectionName,
    String documentID,
  ) async {
    return await _store
        .collection(collectionName)
        .document(documentID)
        .delete();
  }

  @override
  Future<void> updateData(
    String collectionName,
    String documnetID,
    Map newData,
  ) async {
    return await _store
        .collection(collectionName)
        .document(documnetID)
        .updateData(newData);
  }
}
