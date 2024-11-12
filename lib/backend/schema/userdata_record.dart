import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserdataRecord extends FirestoreRecord {
  UserdataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Functional_Goal" field.
  String? _functionalGoal;
  String get functionalGoal => _functionalGoal ?? '';
  bool hasFunctionalGoal() => _functionalGoal != null;

  // "Muscle_Group" field.
  String? _muscleGroup;
  String get muscleGroup => _muscleGroup ?? '';
  bool hasMuscleGroup() => _muscleGroup != null;

  // "Specific_Muscle" field.
  String? _specificMuscle;
  String get specificMuscle => _specificMuscle ?? '';
  bool hasSpecificMuscle() => _specificMuscle != null;

  // "Pain_Level" field.
  String? _painLevel;
  String get painLevel => _painLevel ?? '';
  bool hasPainLevel() => _painLevel != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _functionalGoal = snapshotData['Functional_Goal'] as String?;
    _muscleGroup = snapshotData['Muscle_Group'] as String?;
    _specificMuscle = snapshotData['Specific_Muscle'] as String?;
    _painLevel = snapshotData['Pain_Level'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userdata')
          : FirebaseFirestore.instance.collectionGroup('userdata');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userdata').doc(id);

  static Stream<UserdataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserdataRecord.fromSnapshot(s));

  static Future<UserdataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserdataRecord.fromSnapshot(s));

  static UserdataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserdataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserdataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserdataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserdataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserdataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserdataRecordData({
  String? functionalGoal,
  String? muscleGroup,
  String? specificMuscle,
  String? painLevel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Functional_Goal': functionalGoal,
      'Muscle_Group': muscleGroup,
      'Specific_Muscle': specificMuscle,
      'Pain_Level': painLevel,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserdataRecordDocumentEquality implements Equality<UserdataRecord> {
  const UserdataRecordDocumentEquality();

  @override
  bool equals(UserdataRecord? e1, UserdataRecord? e2) {
    return e1?.functionalGoal == e2?.functionalGoal &&
        e1?.muscleGroup == e2?.muscleGroup &&
        e1?.specificMuscle == e2?.specificMuscle &&
        e1?.painLevel == e2?.painLevel;
  }

  @override
  int hash(UserdataRecord? e) => const ListEquality().hash(
      [e?.functionalGoal, e?.muscleGroup, e?.specificMuscle, e?.painLevel]);

  @override
  bool isValidKey(Object? o) => o is UserdataRecord;
}
