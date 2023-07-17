// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum TodosScalarFieldEnum implements _i1.PrismaEnum {
  id,
  title,
  complete,
  created;

  @override
  String? get originalName => null;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

@_i1.jsonSerializable
class TodosWhereInput implements _i1.JsonSerializable {
  const TodosWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TodosWhereInputFromJson(json);

  final Iterable<TodosWhereInput>? AND;

  final Iterable<TodosWhereInput>? OR;

  final Iterable<TodosWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? title;

  final BoolFilter? complete;

  final DateTimeFilter? created;

  @override
  Map<String, dynamic> toJson() => _$TodosWhereInputToJson(this);
}

@_i1.jsonSerializable
class TodosOrderByWithRelationInput implements _i1.JsonSerializable {
  const TodosOrderByWithRelationInput({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$TodosOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? complete;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() => _$TodosOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class TodosWhereUniqueInput implements _i1.JsonSerializable {
  const TodosWhereUniqueInput({this.id});

  factory TodosWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TodosWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$TodosWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class TodosOrderByWithAggregationInput implements _i1.JsonSerializable {
  const TodosOrderByWithAggregationInput({
    this.id,
    this.title,
    this.complete,
    this.created,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory TodosOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TodosOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? complete;

  final SortOrder? created;

  @JsonKey(name: r'_count')
  final TodosCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final TodosAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final TodosMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final TodosMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final TodosSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$TodosOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class TodosScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const TodosScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$TodosScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<TodosScalarWhereWithAggregatesInput>? AND;

  final Iterable<TodosScalarWhereWithAggregatesInput>? OR;

  final Iterable<TodosScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? title;

  final BoolWithAggregatesFilter? complete;

  final DateTimeWithAggregatesFilter? created;

  @override
  Map<String, dynamic> toJson() =>
      _$TodosScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class TodosCreateInput implements _i1.JsonSerializable {
  const TodosCreateInput({
    this.title,
    this.complete,
    this.created,
  });

  factory TodosCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosCreateInputFromJson(json);

  final String? title;

  final bool? complete;

  final DateTime? created;

  @override
  Map<String, dynamic> toJson() => _$TodosCreateInputToJson(this);
}

@_i1.jsonSerializable
class TodosUncheckedCreateInput implements _i1.JsonSerializable {
  const TodosUncheckedCreateInput({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosUncheckedCreateInputFromJson(json);

  final int? id;

  final String? title;

  final bool? complete;

  final DateTime? created;

  @override
  Map<String, dynamic> toJson() => _$TodosUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class TodosUpdateInput implements _i1.JsonSerializable {
  const TodosUpdateInput({
    this.title,
    this.complete,
    this.created,
  });

  factory TodosUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? complete;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() => _$TodosUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TodosUncheckedUpdateInput implements _i1.JsonSerializable {
  const TodosUncheckedUpdateInput({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? complete;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() => _$TodosUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TodosCreateManyInput implements _i1.JsonSerializable {
  const TodosCreateManyInput({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TodosCreateManyInputFromJson(json);

  final int? id;

  final String? title;

  final bool? complete;

  final DateTime? created;

  @override
  Map<String, dynamic> toJson() => _$TodosCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class TodosUpdateManyMutationInput implements _i1.JsonSerializable {
  const TodosUpdateManyMutationInput({
    this.title,
    this.complete,
    this.created,
  });

  factory TodosUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$TodosUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? complete;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() => _$TodosUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class TodosUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const TodosUncheckedUpdateManyInput({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TodosUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? complete;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() => _$TodosUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class BoolFilter implements _i1.JsonSerializable {
  const BoolFilter({
    this.equals,
    this.not,
  });

  factory BoolFilter.fromJson(Map<String, dynamic> json) =>
      _$BoolFilterFromJson(json);

  final bool? equals;

  final NestedBoolFilter? not;

  @override
  Map<String, dynamic> toJson() => _$BoolFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class TodosCountOrderByAggregateInput implements _i1.JsonSerializable {
  const TodosCountOrderByAggregateInput({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? complete;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() =>
      _$TodosCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TodosAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const TodosAvgOrderByAggregateInput({this.id});

  factory TodosAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$TodosAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TodosMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const TodosMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? complete;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() => _$TodosMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TodosMinOrderByAggregateInput implements _i1.JsonSerializable {
  const TodosMinOrderByAggregateInput({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? complete;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() => _$TodosMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TodosSumOrderByAggregateInput implements _i1.JsonSerializable {
  const TodosSumOrderByAggregateInput({this.id});

  factory TodosSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TodosSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$TodosSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class BoolWithAggregatesFilter implements _i1.JsonSerializable {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory BoolWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$BoolWithAggregatesFilterFromJson(json);

  final bool? equals;

  final NestedBoolWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedBoolFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$BoolWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class BoolFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const BoolFieldUpdateOperationsInput({this.set});

  factory BoolFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$BoolFieldUpdateOperationsInputFromJson(json);

  final bool? set;

  @override
  Map<String, dynamic> toJson() => _$BoolFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBoolFilter implements _i1.JsonSerializable {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  factory NestedBoolFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBoolFilterFromJson(json);

  final bool? equals;

  final NestedBoolFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedBoolFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBoolWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedBoolWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBoolWithAggregatesFilterFromJson(json);

  final bool? equals;

  final NestedBoolWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedBoolFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedBoolWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class Todos implements _i1.JsonSerializable {
  const Todos({
    required this.id,
    required this.title,
    required this.complete,
    required this.created,
  });

  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);

  final int id;

  final String title;

  final bool complete;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() => _$TodosToJson(this);
}

class TodosFluent<T> extends _i1.PrismaFluent<T> {
  const TodosFluent(
    super.original,
    super.$query,
  );
}

extension TodosModelDelegateExtension on _i1.ModelDelegate<Todos> {
  TodosFluent<Todos?> findUnique({required TodosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueTodos',
    );
    final future = query(TodosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Todos.fromJson(json.cast<String, dynamic>()) : null);
    return TodosFluent<Todos?>(
      future,
      query,
    );
  }

  TodosFluent<Todos> findUniqueOrThrow({required TodosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueTodosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueTodosOrThrow',
    );
    final future = query(TodosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Todos.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Todos)'));
    return TodosFluent<Todos>(
      future,
      query,
    );
  }

  TodosFluent<Todos?> findFirst({
    TodosWhereInput? where,
    Iterable<TodosOrderByWithRelationInput>? orderBy,
    TodosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TodosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstTodos',
    );
    final future = query(TodosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Todos.fromJson(json.cast<String, dynamic>()) : null);
    return TodosFluent<Todos?>(
      future,
      query,
    );
  }

  TodosFluent<Todos> findFirstOrThrow({
    TodosWhereInput? where,
    Iterable<TodosOrderByWithRelationInput>? orderBy,
    TodosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TodosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstTodosOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstTodosOrThrow',
    );
    final future = query(TodosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Todos.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Todos)'));
    return TodosFluent<Todos>(
      future,
      query,
    );
  }

  Future<Iterable<Todos>> findMany({
    TodosWhereInput? where,
    Iterable<TodosOrderByWithRelationInput>? orderBy,
    TodosWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TodosScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyTodos',
    );
    final fields = TodosScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyTodos) => findManyTodos
        .map((Map findManyTodos) => Todos.fromJson(findManyTodos.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  TodosFluent<Todos> create({TodosCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneTodos',
    );
    final future = query(TodosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Todos.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Todos)'));
    return TodosFluent<Todos>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<TodosCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyTodos',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyTodos) =>
        AffectedRowsOutput.fromJson(createManyTodos.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TodosFluent<Todos?> update({
    required TodosUpdateInput data,
    required TodosWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneTodos',
    );
    final future = query(TodosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Todos.fromJson(json.cast<String, dynamic>()) : null);
    return TodosFluent<Todos?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required TodosUpdateManyMutationInput data,
    TodosWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyTodos',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyTodos) =>
        AffectedRowsOutput.fromJson(updateManyTodos.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TodosFluent<Todos> upsert({
    required TodosWhereUniqueInput where,
    required TodosCreateInput create,
    required TodosUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneTodos',
    );
    final future = query(TodosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Todos.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Todos)'));
    return TodosFluent<Todos>(
      future,
      query,
    );
  }

  TodosFluent<Todos?> delete({required TodosWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneTodos',
    );
    final future = query(TodosScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Todos.fromJson(json.cast<String, dynamic>()) : null);
    return TodosFluent<Todos?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({TodosWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyTodos',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyTodos) =>
        AffectedRowsOutput.fromJson(deleteManyTodos.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateTodos aggregate({
    TodosWhereInput? where,
    Iterable<TodosOrderByWithRelationInput>? orderBy,
    TodosWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateTodos',
    );
    return AggregateTodos(query);
  }

  Future<Iterable<TodosGroupByOutputType>> groupBy({
    TodosWhereInput? where,
    Iterable<TodosOrderByWithAggregationInput>? orderBy,
    required Iterable<TodosScalarFieldEnum> by,
    TodosScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByTodos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByTodos',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByTodos) =>
        groupByTodos.map((Map groupByTodos) =>
            TodosGroupByOutputType.fromJson(groupByTodos.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class TodosGroupByOutputType implements _i1.JsonSerializable {
  const TodosGroupByOutputType({
    this.id,
    this.title,
    this.complete,
    this.created,
  });

  factory TodosGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$TodosGroupByOutputTypeFromJson(json);

  final int? id;

  final String? title;

  final bool? complete;

  final DateTime? created;

  @override
  Map<String, dynamic> toJson() => _$TodosGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateTodos {
  const AggregateTodos(this.$query);

  final _i1.PrismaFluentQuery $query;

  TodosCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TodosCountAggregateOutputType(query);
  }

  TodosAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return TodosAvgAggregateOutputType(query);
  }

  TodosSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return TodosSumAggregateOutputType(query);
  }

  TodosMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return TodosMinAggregateOutputType(query);
  }

  TodosMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return TodosMaxAggregateOutputType(query);
  }
}

class TodosCountAggregateOutputType {
  const TodosCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> complete() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'complete',
          fields: fields,
        )
      ]),
      key: r'complete',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TodosAvgAggregateOutputType {
  const TodosAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class TodosSumAggregateOutputType {
  const TodosSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class TodosMinAggregateOutputType {
  const TodosMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<bool?> complete() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'complete',
          fields: fields,
        )
      ]),
      key: r'complete',
    );
    return query(const []).then((value) => (value as bool?));
  }

  Future<DateTime?> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class TodosMaxAggregateOutputType {
  const TodosMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<bool?> complete() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'complete',
          fields: fields,
        )
      ]),
      key: r'complete',
    );
    return query(const []).then((value) => (value as bool?));
  }

  Future<DateTime?> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgICAgICA9ICJkYXJ0IHJ1biBvcm0iCiAgYmluYXJ5VGFyZ2V0cyA9IFsibmF0aXZlIl0KfQoKZGF0YXNvdXJjZSBkYiB7CiAgcHJvdmlkZXIgPSAicG9zdGdyZXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgVG9kb3MgewogIGlkICAgICAgIEludCAgICAgIEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgdGl0bGUgICAgU3RyaW5nICAgQGRlZmF1bHQoIm5vdCB0aXRsZSIpCiAgY29tcGxldGUgQm9vbGVhbiAgQGRlZmF1bHQoZmFsc2UpCiAgY3JlYXRlZCAgRGF0ZVRpbWUgQGRlZmF1bHQobm93KCkpCn0K',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'C:\Users\anooc\AppData\Local\npm-cache\_npx\2778af9cee32ff87\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<Todos> get todos => _i1.ModelDelegate<Todos>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
