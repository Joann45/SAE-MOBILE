import 'supabase_connection.dart';

class Aime {
  int? id;
  int? idR;
  int? idU;

  Aime({this.id, this.idR, this.idU});

  // Méthode CRUD : Create
  static Future<int?> create(Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('aime').insert(data);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data[0]['id'];
  }

  // Méthode CRUD : Read (getById)
  static Future<Map<String, dynamic>?> getById(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('aime').select().eq('id', id).single();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data;
  }

  // Méthode CRUD : Read (getAll)
  static Future<List<dynamic>> getAll() async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('aime').select();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data;
  }

  // Méthode CRUD : Update
  static Future<int> update(int id, Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('aime').update(data).eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }

  // Méthode CRUD : Delete
  static Future<int> delete(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('aime').delete().eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }
}
