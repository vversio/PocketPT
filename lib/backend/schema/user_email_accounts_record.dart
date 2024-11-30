import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserEmailAccountsRecord extends FirestoreRecord {
  UserEmailAccountsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isNewUser" field.
  bool? _isNewUser;
  bool get isNewUser => _isNewUser ?? false;
  bool hasIsNewUser() => _isNewUser != null;

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

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isNewUser = snapshotData['isNewUser'] as bool?;
    _functionalGoal = snapshotData['Functional_Goal'] as String?;
    _muscleGroup = snapshotData['Muscle_Group'] as String?;
    _specificMuscle = snapshotData['Specific_Muscle'] as String?;
    _painLevel = snapshotData['Pain_Level'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_email_accounts');

  static Stream<UserEmailAccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserEmailAccountsRecord.fromSnapshot(s));

  static Future<UserEmailAccountsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserEmailAccountsRecord.fromSnapshot(s));

  static UserEmailAccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserEmailAccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserEmailAccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserEmailAccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserEmailAccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserEmailAccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserEmailAccountsRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isNewUser,
  String? functionalGoal,
  String? muscleGroup,
  String? specificMuscle,
  String? painLevel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'isNewUser': isNewUser,
      'Functional_Goal': functionalGoal,
      'Muscle_Group': muscleGroup,
      'Specific_Muscle': specificMuscle,
      'Pain_Level': painLevel,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserEmailAccountsRecordDocumentEquality
    implements Equality<UserEmailAccountsRecord> {
  const UserEmailAccountsRecordDocumentEquality();

  @override
  bool equals(UserEmailAccountsRecord? e1, UserEmailAccountsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isNewUser == e2?.isNewUser &&
        e1?.functionalGoal == e2?.functionalGoal &&
        e1?.muscleGroup == e2?.muscleGroup &&
        e1?.specificMuscle == e2?.specificMuscle &&
        e1?.painLevel == e2?.painLevel;
  }

  @override
  int hash(UserEmailAccountsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isNewUser,
        e?.functionalGoal,
        e?.muscleGroup,
        e?.specificMuscle,
        e?.painLevel
      ]);

  @override
  bool isValidKey(Object? o) => o is UserEmailAccountsRecord;
}
