import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConnection {
  static final String supabaseUrl = "https://uqphmrdxocqjbcbucdju.supabase.co";
  static final String supabaseKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVxcGhtcmR4b2NxamJjYnVjZGp1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNzM4OTA2OSwiZXhwIjoyMDUyOTY1MDY5fQ.16zkEtD-M7vcRr43DZUJR6vYk7lTfUgA71nAscBczZ4";
  static SupabaseClient? _client;

  static initialize() async {
    await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
    _client = SupabaseClient(supabaseUrl, supabaseKey);
  }

  static SupabaseClient getClient() {
    _client ??= Supabase.instance.client;
    return _client!;
  }
}
