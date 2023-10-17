import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageRecord extends FirestoreRecord {
  MessageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "html" field.
  String? _html;
  String get html => _html ?? '';
  bool hasHtml() => _html != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _subject = snapshotData['subject'] as String?;
    _text = snapshotData['text'] as String?;
    _html = snapshotData['html'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('message')
          : FirebaseFirestore.instance.collectionGroup('message');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('message').doc();

  static Stream<MessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessageRecord.fromSnapshot(s));

  static Future<MessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessageRecord.fromSnapshot(s));

  static MessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessageRecordData({
  String? subject,
  String? text,
  String? html,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subject': subject,
      'text': text,
      'html': html,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessageRecordDocumentEquality implements Equality<MessageRecord> {
  const MessageRecordDocumentEquality();

  @override
  bool equals(MessageRecord? e1, MessageRecord? e2) {
    return e1?.subject == e2?.subject &&
        e1?.text == e2?.text &&
        e1?.html == e2?.html;
  }

  @override
  int hash(MessageRecord? e) =>
      const ListEquality().hash([e?.subject, e?.text, e?.html]);

  @override
  bool isValidKey(Object? o) => o is MessageRecord;
}
