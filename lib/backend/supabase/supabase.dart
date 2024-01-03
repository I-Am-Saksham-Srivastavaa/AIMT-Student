import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ltthltedgwozgxyqpbqz.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx0dGhsdGVkZ3dvemd4eXFwYnF6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc1NDc1NDMsImV4cCI6MjAxMzEyMzU0M30.MZZT-CzMA_pHo_l5r-4059vE0O9pgQk-CHnhueqnHIA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
