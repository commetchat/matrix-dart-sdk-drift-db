// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ToDeviceQueueTable extends ToDeviceQueue
    with TableInfo<$ToDeviceQueueTable, ToDeviceQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ToDeviceQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _txnIdMeta = const VerificationMeta('txnId');
  @override
  late final GeneratedColumn<String> txnId = GeneratedColumn<String>(
      'txn_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, type, txnId, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'to_device_queue';
  @override
  VerificationContext validateIntegrity(Insertable<ToDeviceQueueData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('txn_id')) {
      context.handle(
          _txnIdMeta, txnId.isAcceptableOrUnknown(data['txn_id']!, _txnIdMeta));
    } else if (isInserting) {
      context.missing(_txnIdMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ToDeviceQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ToDeviceQueueData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      txnId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}txn_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $ToDeviceQueueTable createAlias(String alias) {
    return $ToDeviceQueueTable(attachedDatabase, alias);
  }
}

class ToDeviceQueueData extends DataClass
    implements Insertable<ToDeviceQueueData> {
  final int id;
  final String type;
  final String txnId;
  final String content;
  const ToDeviceQueueData(
      {required this.id,
      required this.type,
      required this.txnId,
      required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    map['txn_id'] = Variable<String>(txnId);
    map['content'] = Variable<String>(content);
    return map;
  }

  ToDeviceQueueCompanion toCompanion(bool nullToAbsent) {
    return ToDeviceQueueCompanion(
      id: Value(id),
      type: Value(type),
      txnId: Value(txnId),
      content: Value(content),
    );
  }

  factory ToDeviceQueueData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ToDeviceQueueData(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      txnId: serializer.fromJson<String>(json['txnId']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
      'txnId': serializer.toJson<String>(txnId),
      'content': serializer.toJson<String>(content),
    };
  }

  ToDeviceQueueData copyWith(
          {int? id, String? type, String? txnId, String? content}) =>
      ToDeviceQueueData(
        id: id ?? this.id,
        type: type ?? this.type,
        txnId: txnId ?? this.txnId,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('ToDeviceQueueData(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('txnId: $txnId, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, txnId, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ToDeviceQueueData &&
          other.id == this.id &&
          other.type == this.type &&
          other.txnId == this.txnId &&
          other.content == this.content);
}

class ToDeviceQueueCompanion extends UpdateCompanion<ToDeviceQueueData> {
  final Value<int> id;
  final Value<String> type;
  final Value<String> txnId;
  final Value<String> content;
  const ToDeviceQueueCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.txnId = const Value.absent(),
    this.content = const Value.absent(),
  });
  ToDeviceQueueCompanion.insert({
    this.id = const Value.absent(),
    required String type,
    required String txnId,
    required String content,
  })  : type = Value(type),
        txnId = Value(txnId),
        content = Value(content);
  static Insertable<ToDeviceQueueData> custom({
    Expression<int>? id,
    Expression<String>? type,
    Expression<String>? txnId,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (txnId != null) 'txn_id': txnId,
      if (content != null) 'content': content,
    });
  }

  ToDeviceQueueCompanion copyWith(
      {Value<int>? id,
      Value<String>? type,
      Value<String>? txnId,
      Value<String>? content}) {
    return ToDeviceQueueCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      txnId: txnId ?? this.txnId,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (txnId.present) {
      map['txn_id'] = Variable<String>(txnId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ToDeviceQueueCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('txnId: $txnId, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

abstract class _$MatrixSdkDriftDBImplementation extends GeneratedDatabase {
  _$MatrixSdkDriftDBImplementation(QueryExecutor e) : super(e);
  _$MatrixSdkDriftDBImplementationManager get managers =>
      _$MatrixSdkDriftDBImplementationManager(this);
  late final $ToDeviceQueueTable toDeviceQueue = $ToDeviceQueueTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [toDeviceQueue];
}

typedef $$ToDeviceQueueTableInsertCompanionBuilder = ToDeviceQueueCompanion
    Function({
  Value<int> id,
  required String type,
  required String txnId,
  required String content,
});
typedef $$ToDeviceQueueTableUpdateCompanionBuilder = ToDeviceQueueCompanion
    Function({
  Value<int> id,
  Value<String> type,
  Value<String> txnId,
  Value<String> content,
});

class $$ToDeviceQueueTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $ToDeviceQueueTable,
    ToDeviceQueueData,
    $$ToDeviceQueueTableFilterComposer,
    $$ToDeviceQueueTableOrderingComposer,
    $$ToDeviceQueueTableProcessedTableManager,
    $$ToDeviceQueueTableInsertCompanionBuilder,
    $$ToDeviceQueueTableUpdateCompanionBuilder> {
  $$ToDeviceQueueTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $ToDeviceQueueTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ToDeviceQueueTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ToDeviceQueueTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$ToDeviceQueueTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> txnId = const Value.absent(),
            Value<String> content = const Value.absent(),
          }) =>
              ToDeviceQueueCompanion(
            id: id,
            type: type,
            txnId: txnId,
            content: content,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String type,
            required String txnId,
            required String content,
          }) =>
              ToDeviceQueueCompanion.insert(
            id: id,
            type: type,
            txnId: txnId,
            content: content,
          ),
        ));
}

class $$ToDeviceQueueTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $ToDeviceQueueTable,
    ToDeviceQueueData,
    $$ToDeviceQueueTableFilterComposer,
    $$ToDeviceQueueTableOrderingComposer,
    $$ToDeviceQueueTableProcessedTableManager,
    $$ToDeviceQueueTableInsertCompanionBuilder,
    $$ToDeviceQueueTableUpdateCompanionBuilder> {
  $$ToDeviceQueueTableProcessedTableManager(super.$state);
}

class $$ToDeviceQueueTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $ToDeviceQueueTable> {
  $$ToDeviceQueueTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get txnId => $state.composableBuilder(
      column: $state.table.txnId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ToDeviceQueueTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $ToDeviceQueueTable> {
  $$ToDeviceQueueTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get txnId => $state.composableBuilder(
      column: $state.table.txnId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$MatrixSdkDriftDBImplementationManager {
  final _$MatrixSdkDriftDBImplementation _db;
  _$MatrixSdkDriftDBImplementationManager(this._db);
  $$ToDeviceQueueTableTableManager get toDeviceQueue =>
      $$ToDeviceQueueTableTableManager(_db, _db.toDeviceQueue);
}
