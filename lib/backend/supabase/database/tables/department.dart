import '../database.dart';

class DepartmentTable extends SupabaseTable<DepartmentRow> {
  @override
  String get tableName => 'department';

  @override
  DepartmentRow createRow(Map<String, dynamic> data) => DepartmentRow(data);
}

class DepartmentRow extends SupabaseDataRow {
  DepartmentRow(super.data);

  @override
  SupabaseTable get table => DepartmentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get departmentName => getField<String>('DepartmentName')!;
  set departmentName(String value) => setField<String>('DepartmentName', value);
}
