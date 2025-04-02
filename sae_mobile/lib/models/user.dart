import 'supabase_connection.dart';

class User {
  int? id;
  String? nom;
  String? prenom;
  String? mail;
  String? mdp;
  String? telephone;

  User({this.id, this.nom, this.prenom, this.mail, this.mdp, this.telephone});

  // Méthode CRUD : Create
  static Future<int?> create(Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('utilisateur').insert(data);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data[0]['id'];
  }

  // Méthode CRUD : Read (getById)
  static Future<Map<String, dynamic>?> getById(int id) async {
    final client = SupabaseConnection.getClient();
    final response =
        await client.from('utilisateur').select().eq('id', id).single();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data;
  }

  // Méthode CRUD : Read (getAll)
  static Future<List<dynamic>> getAll() async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('utilisateur').select();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data;
  }

  // Méthode CRUD : Update
  static Future<int> update(int id, Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('utilisateur').update(data).eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }

  // Méthode CRUD : Delete
  static Future<int> delete(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('utilisateur').delete().eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }
}
