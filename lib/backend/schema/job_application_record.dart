import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobApplicationRecord extends FirestoreRecord {
  JobApplicationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_reference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "position_title" field.
  String? _positionTitle;
  String get positionTitle => _positionTitle ?? '';
  bool hasPositionTitle() => _positionTitle != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "salary_range" field.
  String? _salaryRange;
  String get salaryRange => _salaryRange ?? '';
  bool hasSalaryRange() => _salaryRange != null;

  // "job_posting_url" field.
  String? _jobPostingUrl;
  String get jobPostingUrl => _jobPostingUrl ?? '';
  bool hasJobPostingUrl() => _jobPostingUrl != null;

  // "current_status" field.
  String? _currentStatus;
  String get currentStatus => _currentStatus ?? '';
  bool hasCurrentStatus() => _currentStatus != null;

  // "application_date" field.
  DateTime? _applicationDate;
  DateTime? get applicationDate => _applicationDate;
  bool hasApplicationDate() => _applicationDate != null;

  // "contact_person" field.
  String? _contactPerson;
  String get contactPerson => _contactPerson ?? '';
  bool hasContactPerson() => _contactPerson != null;

  // "contact_email" field.
  String? _contactEmail;
  String get contactEmail => _contactEmail ?? '';
  bool hasContactEmail() => _contactEmail != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  void _initializeFields() {
    _userReference = snapshotData['user_reference'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _companyName = snapshotData['company_name'] as String?;
    _positionTitle = snapshotData['position_title'] as String?;
    _location = snapshotData['location'] as String?;
    _salaryRange = snapshotData['salary_range'] as String?;
    _jobPostingUrl = snapshotData['job_posting_url'] as String?;
    _currentStatus = snapshotData['current_status'] as String?;
    _applicationDate = snapshotData['application_date'] as DateTime?;
    _contactPerson = snapshotData['contact_person'] as String?;
    _contactEmail = snapshotData['contact_email'] as String?;
    _notes = snapshotData['notes'] as String?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('job_application');

  static Stream<JobApplicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobApplicationRecord.fromSnapshot(s));

  static Future<JobApplicationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobApplicationRecord.fromSnapshot(s));

  static JobApplicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobApplicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobApplicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobApplicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobApplicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobApplicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobApplicationRecordData({
  DocumentReference? userReference,
  DateTime? createdAt,
  String? companyName,
  String? positionTitle,
  String? location,
  String? salaryRange,
  String? jobPostingUrl,
  String? currentStatus,
  DateTime? applicationDate,
  String? contactPerson,
  String? contactEmail,
  String? notes,
  bool? isDeleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_reference': userReference,
      'created_at': createdAt,
      'company_name': companyName,
      'position_title': positionTitle,
      'location': location,
      'salary_range': salaryRange,
      'job_posting_url': jobPostingUrl,
      'current_status': currentStatus,
      'application_date': applicationDate,
      'contact_person': contactPerson,
      'contact_email': contactEmail,
      'notes': notes,
      'isDeleted': isDeleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobApplicationRecordDocumentEquality
    implements Equality<JobApplicationRecord> {
  const JobApplicationRecordDocumentEquality();

  @override
  bool equals(JobApplicationRecord? e1, JobApplicationRecord? e2) {
    return e1?.userReference == e2?.userReference &&
        e1?.createdAt == e2?.createdAt &&
        e1?.companyName == e2?.companyName &&
        e1?.positionTitle == e2?.positionTitle &&
        e1?.location == e2?.location &&
        e1?.salaryRange == e2?.salaryRange &&
        e1?.jobPostingUrl == e2?.jobPostingUrl &&
        e1?.currentStatus == e2?.currentStatus &&
        e1?.applicationDate == e2?.applicationDate &&
        e1?.contactPerson == e2?.contactPerson &&
        e1?.contactEmail == e2?.contactEmail &&
        e1?.notes == e2?.notes &&
        e1?.isDeleted == e2?.isDeleted;
  }

  @override
  int hash(JobApplicationRecord? e) => const ListEquality().hash([
        e?.userReference,
        e?.createdAt,
        e?.companyName,
        e?.positionTitle,
        e?.location,
        e?.salaryRange,
        e?.jobPostingUrl,
        e?.currentStatus,
        e?.applicationDate,
        e?.contactPerson,
        e?.contactEmail,
        e?.notes,
        e?.isDeleted
      ]);

  @override
  bool isValidKey(Object? o) => o is JobApplicationRecord;
}
