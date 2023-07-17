import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dartfrog/todos.dart';

Future<Response> onRequest(
  RequestContext context,
  String id,
) async {
  // update
  if (context.request.method == HttpMethod.put) {
    try {
      final json = await context.request.json() as Map<String, dynamic>;
      final todo = await TodoService().update(
        title: json['title'].toString(),
        complete: json['complete'] as bool,
        id: int.parse(id),
      );

      return Response.json(body: todo);
    } catch (e) {
      return Response(
        statusCode: HttpStatus.badRequest,
        body: e.toString(),
      );
    }
  }

  // show todo by id
  if (context.request.method == HttpMethod.get) {
    try {
      final todo = await TodoService().findById(id: int.parse(id));
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
