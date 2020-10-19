import 'package:dart_api/dart_api.dart';

class WordsController extends ResourceController {
  final _words = [
    {"word": "phone"},
    {"word": "Windows"},
    {"word": "Mac"},
    {"word": "Desktop"},
    {"word": "Car"},
  ];

  @Operation.get()
  Future<Response> getAllWords() async {
    return Response.ok(_words);
  }

  @Operation.get('id')
  Future<Response> getWordByID(@Bind.path('id') int id) async {
    //int id = int.parse(request.path.variables['id']);
    return Response.ok(_words[id]);
  }

  @Operation.post()
  Future<Response> addWord() async {
    return Response.ok(null);
  }

  @Operation.put('id')
  Future<Response> updateWord(@Bind.path('id') int id) async {
    return Response.ok(null);
  }

  @Operation.delete('id')
  Future<Response> deleteWord(@Bind.path('id') int id) async {
    return Response.ok(null);
  }
}
