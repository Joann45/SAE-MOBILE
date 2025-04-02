import 'supabase_connection.dart';

class Avis {
  int? id;
  int? idU;
  int? idR;
  double? note;
  String? critique;

  Avis({this.id, this.idU, this.idR, this.note, this.critique});

  int? get getId => id;
  set setId(int? value) => id = value;
  int? get getIdU => idU;
  set setIdU(int? value) => idU = value;
  int? get getIdR => idR;
  set setIdR(int? value) => idR = value;
  double? get getNote => note;
  set setNote(double? value) => note = value;
  String? get getCritique => critique;
  set setCritique(String? value) => critique = value;

  static Future<int?> create(Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').insert(data);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data[0]['id'];
  }

  static Future<Map<String, dynamic>?> getById(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').select().eq('id', id).single();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response;
  }

  static Future<List<dynamic>> getAll() async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').select();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response;
  }

  static Future<int> update(int id, Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').update(data).eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }

  static Future<int> delete(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('avis').delete().eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }
}
