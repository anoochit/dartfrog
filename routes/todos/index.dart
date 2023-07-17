import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dartfrog/src/generated/prisma/prisma_client.dart';
import 'package:dartfrog/todos.dart';

Future<Response> onRequest(RequestContext context) async {
  /// find todos
  if (context.request.method == HttpMethod.get) {
    final todos = await TodoService().findAll();
    return Response.json(body: todos.toList());
  }

  if (context.request.method == HttpMethod.post) {
    try {
      final json = await context.request.json() as Map<String, dynamic>;
      final input = TodosCreateInput(
        title: json['title'].toString(),
        complete: json['complete'] as bool,
        created: DateTime.now(),
      );
      final todo = await TodoService().create(todoCreateInput: input);

      return Response.json(body: todo);
    } catch (e) {
      return Response(
        statusCode: HttpStatus.badRequest,
        body: e.toString(),
      );
    }
  }

  return Response(statusCode: HttpStatus.badRequest);
}
