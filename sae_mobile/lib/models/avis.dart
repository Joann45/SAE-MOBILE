import 'supabase_connection.dart';

class Avis {
  int? id;
  int? idU;
  int? idR;
  double? note;
  String? critique;

  Avis({this.id, this.idU, this.idR, this.note, this.critique});

  // Méthode CRUD : Create
  static Future<int?> create(Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').insert(data);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data[0]['id'];
  }

  // Méthode CRUD : Read (getById)
  static Future<Map<String, dynamic>?> getById(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').select().eq('id', id).single();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data;
  }

  // Méthode CRUD : Read (getAll)
  static Future<List<dynamic>> getAll() async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').select();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data;
  }

  // Méthode CRUD : Update
  static Future<int> update(int id, Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').update(data).eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }

  // Méthode CRUD : Delete
  static Future<int> delete(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').delete().eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }
}
