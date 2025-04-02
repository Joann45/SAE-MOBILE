import 'package:supabase/supabase.dart';

class SupabaseConnection {
  static final String supabaseUrl =
      'https://aws-0-eu-west-3.pooler.supabase.com';
  static final String supabaseKey =
      'al94oV8tpbY69eI1'; // Note: stocker en sécurité
  static final SupabaseClient client = SupabaseClient(supabaseUrl, supabaseKey);

  static SupabaseClient getClient() {
    return client;
  }
}
