import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(super.data);

  @override
  SupabaseTable get table => UserTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get fullName => getField<String>('FullName');
  set fullName(String? value) => setField<String>('FullName', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  bool? get isFaculty => getField<bool>('isFaculty');
  set isFaculty(bool? value) => setField<bool>('isFaculty', value);

  bool? get isHOD => getField<bool>('isHOD');
  set isHOD(bool? value) => setField<bool>('isHOD', value);

  String? get profileURL => getField<String>('ProfileURL');
  set profileURL(String? value) => setField<String>('ProfileURL', value);

  int get rollNo => getField<int>('RollNo')!;
  set rollNo(int value) => setField<int>('RollNo', value);
}
