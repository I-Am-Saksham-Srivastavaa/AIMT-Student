import '../database.dart';

class StudentTable extends SupabaseTable<StudentRow> {
  @override
  String get tableName => 'student';

  @override
  StudentRow createRow(Map<String, dynamic> data) => StudentRow(data);
}

class StudentRow extends SupabaseDataRow {
  StudentRow(super.data);

  @override
  SupabaseTable get table => StudentTable();

  int get rollNo => getField<int>('Roll No')!;
  set rollNo(int value) => setField<int>('Roll No', value);

  String? get displayName => getField<String>('Display Name');
  set displayName(String? value) => setField<String>('Display Name', value);

  String? get fatherName => getField<String>('Father Name');
  set fatherName(String? value) => setField<String>('Father Name', value);

  String? get type => getField<String>('Type');
  set type(String? value) => setField<String>('Type', value);

  String? get course => getField<String>('Course');
  set course(String? value) => setField<String>('Course', value);

  String? get branch => getField<String>('Branch');
  set branch(String? value) => setField<String>('Branch', value);

  String? get currentSemester => getField<String>('Current Semester');
  set currentSemester(String? value) =>
      setField<String>('Current Semester', value);

  int? get year => getField<int>('Year');
  set year(int? value) => setField<int>('Year', value);

  String? get section => getField<String>('Section');
  set section(String? value) => setField<String>('Section', value);

  String? get batch => getField<String>('Batch');
  set batch(String? value) => setField<String>('Batch', value);

  DateTime? get dOB => getField<DateTime>('D.O.B.');
  set dOB(DateTime? value) => setField<DateTime>('D.O.B.', value);

  String? get gender => getField<String>('Gender');
  set gender(String? value) => setField<String>('Gender', value);

  String? get category => getField<String>('Category');
  set category(String? value) => setField<String>('Category', value);

  String? get nationality => getField<String>('Nationality');
  set nationality(String? value) => setField<String>('Nationality', value);

  int? get contactNo => getField<int>('Contact No.');
  set contactNo(int? value) => setField<int>('Contact No.', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  String? get mailingAddress => getField<String>('Mailing Address');
  set mailingAddress(String? value) =>
      setField<String>('Mailing Address', value);

  String? get permanentAddress => getField<String>('Permanent Address');
  set permanentAddress(String? value) =>
      setField<String>('Permanent Address', value);

  String? get bio => getField<String>('Bio');
  set bio(String? value) => setField<String>('Bio', value);

  String? get title => getField<String>('Title');
  set title(String? value) => setField<String>('Title', value);

  String? get department => getField<String>('Department');
  set department(String? value) => setField<String>('Department', value);

  String? get emergencyContactName => getField<String>('EmergencyContactName');
  set emergencyContactName(String? value) =>
      setField<String>('EmergencyContactName', value);

  int? get emergencyContactNo => getField<int>('EmergencyContactNo');
  set emergencyContactNo(int? value) =>
      setField<int>('EmergencyContactNo', value);

  String? get bloodGroup => getField<String>('BloodGroup');
  set bloodGroup(String? value) => setField<String>('BloodGroup', value);

  DateTime? get admissionDate => getField<DateTime>('AdmissionDate');
  set admissionDate(DateTime? value) =>
      setField<DateTime>('AdmissionDate', value);

  String? get admissionStatus => getField<String>('AdmissionStatus');
  set admissionStatus(String? value) =>
      setField<String>('AdmissionStatus', value);

  String get id => getField<String>('ID')!;
  set id(String value) => setField<String>('ID', value);

  String? get photoURL => getField<String>('PhotoURL');
  set photoURL(String? value) => setField<String>('PhotoURL', value);

  List<String> get attendance => getListField<String>('attendance');
  set attendance(List<String>? value) =>
      setListField<String>('attendance', value);
}
