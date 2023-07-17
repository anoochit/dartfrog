import 'dart:io';

import 'package:dartfrog/src/generated/prisma/prisma_client.dart';

///
class TodoService {
  /// init prisma client
  TodoService() {
    instance = PrismaClient(
      datasources: Datasources(
        db: Platform.environment['DATABASE_URL'],
      ),
    );
  }

  ///
  late PrismaClient instance;

  /// find all
  Future<Iterable<Todos>> findAll() async {
    return instance.todos.findMany();
  }

  /// find by id
  Future<Todos> findById({required int id}) async {
    final todo = await instance.todos.findUniqueOrThrow(
      where: TodosWhereUniqueInput(id: id),
    );
    return todo;
  }

  /// create
  Future<Todos> create({required TodosCreateInput todoCreateInput}) async {
    final todo = await instance.todos.create(
      data: todoCreateInput,
    );

    return todo;
  }

  /// update
  Future<Todos?> update({
    required String? title,
    required bool? complete,
    required int id,
  }) async {
    final todo = await instance.todos.update(
      data: TodosUpdateInput(
        title: StringFieldUpdateOperationsInput(
          set: (title == null) ? null : title,
        ),
        complete: BoolFieldUpdateOperationsInput(
          set: (complete == null) ? null : complete,
        ),
      ),
      where: TodosWhereUniqueInput(id: id),
    );

    return todo;
  }

  /// delete
  Future<Todos?> delete({required int id}) async {
    final todo = await instance.todos.delete(
      where: TodosWhereUniqueInput(id: id),
    );
    return todo;
  }
}
