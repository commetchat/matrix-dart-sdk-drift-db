// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ClientDataTable extends ClientData
    with TableInfo<$ClientDataTable, ClientDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _homeserverUrlMeta =
      const VerificationMeta('homeserverUrl');
  @override
  late final GeneratedColumn<String> homeserverUrl = GeneratedColumn<String>(
      'homeserver_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tokenMeta = const VerificationMeta('token');
  @override
  late final GeneratedColumn<String> token = GeneratedColumn<String>(
      'token', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tokenExpiresAtMeta =
      const VerificationMeta('tokenExpiresAt');
  @override
  late final GeneratedColumn<DateTime> tokenExpiresAt =
      GeneratedColumn<DateTime>('token_expires_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _refreshTokenMeta =
      const VerificationMeta('refreshToken');
  @override
  late final GeneratedColumn<String> refreshToken = GeneratedColumn<String>(
      'refresh_token', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _deviceNameMeta =
      const VerificationMeta('deviceName');
  @override
  late final GeneratedColumn<String> deviceName = GeneratedColumn<String>(
      'device_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _prevBatchMeta =
      const VerificationMeta('prevBatch');
  @override
  late final GeneratedColumn<String> prevBatch = GeneratedColumn<String>(
      'prev_batch', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _olmAccountMeta =
      const VerificationMeta('olmAccount');
  @override
  late final GeneratedColumn<String> olmAccount = GeneratedColumn<String>(
      'olm_account', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _syncFilterIdMeta =
      const VerificationMeta('syncFilterId');
  @override
  late final GeneratedColumn<String> syncFilterId = GeneratedColumn<String>(
      'sync_filter_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        homeserverUrl,
        token,
        tokenExpiresAt,
        refreshToken,
        userId,
        deviceId,
        deviceName,
        prevBatch,
        olmAccount,
        syncFilterId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'client_data';
  @override
  VerificationContext validateIntegrity(Insertable<ClientDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('homeserver_url')) {
      context.handle(
          _homeserverUrlMeta,
          homeserverUrl.isAcceptableOrUnknown(
              data['homeserver_url']!, _homeserverUrlMeta));
    } else if (isInserting) {
      context.missing(_homeserverUrlMeta);
    }
    if (data.containsKey('token')) {
      context.handle(
          _tokenMeta, token.isAcceptableOrUnknown(data['token']!, _tokenMeta));
    } else if (isInserting) {
      context.missing(_tokenMeta);
    }
    if (data.containsKey('token_expires_at')) {
      context.handle(
          _tokenExpiresAtMeta,
          tokenExpiresAt.isAcceptableOrUnknown(
              data['token_expires_at']!, _tokenExpiresAtMeta));
    }
    if (data.containsKey('refresh_token')) {
      context.handle(
          _refreshTokenMeta,
          refreshToken.isAcceptableOrUnknown(
              data['refresh_token']!, _refreshTokenMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    }
    if (data.containsKey('device_name')) {
      context.handle(
          _deviceNameMeta,
          deviceName.isAcceptableOrUnknown(
              data['device_name']!, _deviceNameMeta));
    }
    if (data.containsKey('prev_batch')) {
      context.handle(_prevBatchMeta,
          prevBatch.isAcceptableOrUnknown(data['prev_batch']!, _prevBatchMeta));
    }
    if (data.containsKey('olm_account')) {
      context.handle(
          _olmAccountMeta,
          olmAccount.isAcceptableOrUnknown(
              data['olm_account']!, _olmAccountMeta));
    }
    if (data.containsKey('sync_filter_id')) {
      context.handle(
          _syncFilterIdMeta,
          syncFilterId.isAcceptableOrUnknown(
              data['sync_filter_id']!, _syncFilterIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClientDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientDataData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      homeserverUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}homeserver_url'])!,
      token: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}token'])!,
      tokenExpiresAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}token_expires_at']),
      refreshToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refresh_token']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id']),
      deviceName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_name']),
      prevBatch: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}prev_batch']),
      olmAccount: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}olm_account']),
      syncFilterId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sync_filter_id']),
    );
  }

  @override
  $ClientDataTable createAlias(String alias) {
    return $ClientDataTable(attachedDatabase, alias);
  }
}

class ClientDataData extends DataClass implements Insertable<ClientDataData> {
  final int id;
  final String name;
  final String homeserverUrl;
  final String token;
  final DateTime? tokenExpiresAt;
  final String? refreshToken;
  final String userId;
  final String? deviceId;
  final String? deviceName;
  final String? prevBatch;
  final String? olmAccount;
  final String? syncFilterId;
  const ClientDataData(
      {required this.id,
      required this.name,
      required this.homeserverUrl,
      required this.token,
      this.tokenExpiresAt,
      this.refreshToken,
      required this.userId,
      this.deviceId,
      this.deviceName,
      this.prevBatch,
      this.olmAccount,
      this.syncFilterId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['homeserver_url'] = Variable<String>(homeserverUrl);
    map['token'] = Variable<String>(token);
    if (!nullToAbsent || tokenExpiresAt != null) {
      map['token_expires_at'] = Variable<DateTime>(tokenExpiresAt);
    }
    if (!nullToAbsent || refreshToken != null) {
      map['refresh_token'] = Variable<String>(refreshToken);
    }
    map['user_id'] = Variable<String>(userId);
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    if (!nullToAbsent || deviceName != null) {
      map['device_name'] = Variable<String>(deviceName);
    }
    if (!nullToAbsent || prevBatch != null) {
      map['prev_batch'] = Variable<String>(prevBatch);
    }
    if (!nullToAbsent || olmAccount != null) {
      map['olm_account'] = Variable<String>(olmAccount);
    }
    if (!nullToAbsent || syncFilterId != null) {
      map['sync_filter_id'] = Variable<String>(syncFilterId);
    }
    return map;
  }

  ClientDataCompanion toCompanion(bool nullToAbsent) {
    return ClientDataCompanion(
      id: Value(id),
      name: Value(name),
      homeserverUrl: Value(homeserverUrl),
      token: Value(token),
      tokenExpiresAt: tokenExpiresAt == null && nullToAbsent
          ? const Value.absent()
          : Value(tokenExpiresAt),
      refreshToken: refreshToken == null && nullToAbsent
          ? const Value.absent()
          : Value(refreshToken),
      userId: Value(userId),
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
      deviceName: deviceName == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceName),
      prevBatch: prevBatch == null && nullToAbsent
          ? const Value.absent()
          : Value(prevBatch),
      olmAccount: olmAccount == null && nullToAbsent
          ? const Value.absent()
          : Value(olmAccount),
      syncFilterId: syncFilterId == null && nullToAbsent
          ? const Value.absent()
          : Value(syncFilterId),
    );
  }

  factory ClientDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientDataData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      homeserverUrl: serializer.fromJson<String>(json['homeserverUrl']),
      token: serializer.fromJson<String>(json['token']),
      tokenExpiresAt: serializer.fromJson<DateTime?>(json['tokenExpiresAt']),
      refreshToken: serializer.fromJson<String?>(json['refreshToken']),
      userId: serializer.fromJson<String>(json['userId']),
      deviceId: serializer.fromJson<String?>(json['deviceId']),
      deviceName: serializer.fromJson<String?>(json['deviceName']),
      prevBatch: serializer.fromJson<String?>(json['prevBatch']),
      olmAccount: serializer.fromJson<String?>(json['olmAccount']),
      syncFilterId: serializer.fromJson<String?>(json['syncFilterId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'homeserverUrl': serializer.toJson<String>(homeserverUrl),
      'token': serializer.toJson<String>(token),
      'tokenExpiresAt': serializer.toJson<DateTime?>(tokenExpiresAt),
      'refreshToken': serializer.toJson<String?>(refreshToken),
      'userId': serializer.toJson<String>(userId),
      'deviceId': serializer.toJson<String?>(deviceId),
      'deviceName': serializer.toJson<String?>(deviceName),
      'prevBatch': serializer.toJson<String?>(prevBatch),
      'olmAccount': serializer.toJson<String?>(olmAccount),
      'syncFilterId': serializer.toJson<String?>(syncFilterId),
    };
  }

  ClientDataData copyWith(
          {int? id,
          String? name,
          String? homeserverUrl,
          String? token,
          Value<DateTime?> tokenExpiresAt = const Value.absent(),
          Value<String?> refreshToken = const Value.absent(),
          String? userId,
          Value<String?> deviceId = const Value.absent(),
          Value<String?> deviceName = const Value.absent(),
          Value<String?> prevBatch = const Value.absent(),
          Value<String?> olmAccount = const Value.absent(),
          Value<String?> syncFilterId = const Value.absent()}) =>
      ClientDataData(
        id: id ?? this.id,
        name: name ?? this.name,
        homeserverUrl: homeserverUrl ?? this.homeserverUrl,
        token: token ?? this.token,
        tokenExpiresAt:
            tokenExpiresAt.present ? tokenExpiresAt.value : this.tokenExpiresAt,
        refreshToken:
            refreshToken.present ? refreshToken.value : this.refreshToken,
        userId: userId ?? this.userId,
        deviceId: deviceId.present ? deviceId.value : this.deviceId,
        deviceName: deviceName.present ? deviceName.value : this.deviceName,
        prevBatch: prevBatch.present ? prevBatch.value : this.prevBatch,
        olmAccount: olmAccount.present ? olmAccount.value : this.olmAccount,
        syncFilterId:
            syncFilterId.present ? syncFilterId.value : this.syncFilterId,
      );
  @override
  String toString() {
    return (StringBuffer('ClientDataData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('homeserverUrl: $homeserverUrl, ')
          ..write('token: $token, ')
          ..write('tokenExpiresAt: $tokenExpiresAt, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('userId: $userId, ')
          ..write('deviceId: $deviceId, ')
          ..write('deviceName: $deviceName, ')
          ..write('prevBatch: $prevBatch, ')
          ..write('olmAccount: $olmAccount, ')
          ..write('syncFilterId: $syncFilterId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      homeserverUrl,
      token,
      tokenExpiresAt,
      refreshToken,
      userId,
      deviceId,
      deviceName,
      prevBatch,
      olmAccount,
      syncFilterId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientDataData &&
          other.id == this.id &&
          other.name == this.name &&
          other.homeserverUrl == this.homeserverUrl &&
          other.token == this.token &&
          other.tokenExpiresAt == this.tokenExpiresAt &&
          other.refreshToken == this.refreshToken &&
          other.userId == this.userId &&
          other.deviceId == this.deviceId &&
          other.deviceName == this.deviceName &&
          other.prevBatch == this.prevBatch &&
          other.olmAccount == this.olmAccount &&
          other.syncFilterId == this.syncFilterId);
}

class ClientDataCompanion extends UpdateCompanion<ClientDataData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> homeserverUrl;
  final Value<String> token;
  final Value<DateTime?> tokenExpiresAt;
  final Value<String?> refreshToken;
  final Value<String> userId;
  final Value<String?> deviceId;
  final Value<String?> deviceName;
  final Value<String?> prevBatch;
  final Value<String?> olmAccount;
  final Value<String?> syncFilterId;
  const ClientDataCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.homeserverUrl = const Value.absent(),
    this.token = const Value.absent(),
    this.tokenExpiresAt = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.userId = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.deviceName = const Value.absent(),
    this.prevBatch = const Value.absent(),
    this.olmAccount = const Value.absent(),
    this.syncFilterId = const Value.absent(),
  });
  ClientDataCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String homeserverUrl,
    required String token,
    this.tokenExpiresAt = const Value.absent(),
    this.refreshToken = const Value.absent(),
    required String userId,
    this.deviceId = const Value.absent(),
    this.deviceName = const Value.absent(),
    this.prevBatch = const Value.absent(),
    this.olmAccount = const Value.absent(),
    this.syncFilterId = const Value.absent(),
  })  : name = Value(name),
        homeserverUrl = Value(homeserverUrl),
        token = Value(token),
        userId = Value(userId);
  static Insertable<ClientDataData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? homeserverUrl,
    Expression<String>? token,
    Expression<DateTime>? tokenExpiresAt,
    Expression<String>? refreshToken,
    Expression<String>? userId,
    Expression<String>? deviceId,
    Expression<String>? deviceName,
    Expression<String>? prevBatch,
    Expression<String>? olmAccount,
    Expression<String>? syncFilterId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (homeserverUrl != null) 'homeserver_url': homeserverUrl,
      if (token != null) 'token': token,
      if (tokenExpiresAt != null) 'token_expires_at': tokenExpiresAt,
      if (refreshToken != null) 'refresh_token': refreshToken,
      if (userId != null) 'user_id': userId,
      if (deviceId != null) 'device_id': deviceId,
      if (deviceName != null) 'device_name': deviceName,
      if (prevBatch != null) 'prev_batch': prevBatch,
      if (olmAccount != null) 'olm_account': olmAccount,
      if (syncFilterId != null) 'sync_filter_id': syncFilterId,
    });
  }

  ClientDataCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? homeserverUrl,
      Value<String>? token,
      Value<DateTime?>? tokenExpiresAt,
      Value<String?>? refreshToken,
      Value<String>? userId,
      Value<String?>? deviceId,
      Value<String?>? deviceName,
      Value<String?>? prevBatch,
      Value<String?>? olmAccount,
      Value<String?>? syncFilterId}) {
    return ClientDataCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      homeserverUrl: homeserverUrl ?? this.homeserverUrl,
      token: token ?? this.token,
      tokenExpiresAt: tokenExpiresAt ?? this.tokenExpiresAt,
      refreshToken: refreshToken ?? this.refreshToken,
      userId: userId ?? this.userId,
      deviceId: deviceId ?? this.deviceId,
      deviceName: deviceName ?? this.deviceName,
      prevBatch: prevBatch ?? this.prevBatch,
      olmAccount: olmAccount ?? this.olmAccount,
      syncFilterId: syncFilterId ?? this.syncFilterId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (homeserverUrl.present) {
      map['homeserver_url'] = Variable<String>(homeserverUrl.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (tokenExpiresAt.present) {
      map['token_expires_at'] = Variable<DateTime>(tokenExpiresAt.value);
    }
    if (refreshToken.present) {
      map['refresh_token'] = Variable<String>(refreshToken.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (deviceName.present) {
      map['device_name'] = Variable<String>(deviceName.value);
    }
    if (prevBatch.present) {
      map['prev_batch'] = Variable<String>(prevBatch.value);
    }
    if (olmAccount.present) {
      map['olm_account'] = Variable<String>(olmAccount.value);
    }
    if (syncFilterId.present) {
      map['sync_filter_id'] = Variable<String>(syncFilterId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientDataCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('homeserverUrl: $homeserverUrl, ')
          ..write('token: $token, ')
          ..write('tokenExpiresAt: $tokenExpiresAt, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('userId: $userId, ')
          ..write('deviceId: $deviceId, ')
          ..write('deviceName: $deviceName, ')
          ..write('prevBatch: $prevBatch, ')
          ..write('olmAccount: $olmAccount, ')
          ..write('syncFilterId: $syncFilterId')
          ..write(')'))
        .toString();
  }
}

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

class $AccountDataTable extends AccountData
    with TableInfo<$AccountDataTable, AccountDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [type, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'account_data';
  @override
  VerificationContext validateIntegrity(Insertable<AccountDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
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
  Set<GeneratedColumn> get $primaryKey => {type};
  @override
  AccountDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountDataData(
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $AccountDataTable createAlias(String alias) {
    return $AccountDataTable(attachedDatabase, alias);
  }
}

class AccountDataData extends DataClass implements Insertable<AccountDataData> {
  final String type;
  final String content;
  const AccountDataData({required this.type, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['type'] = Variable<String>(type);
    map['content'] = Variable<String>(content);
    return map;
  }

  AccountDataCompanion toCompanion(bool nullToAbsent) {
    return AccountDataCompanion(
      type: Value(type),
      content: Value(content),
    );
  }

  factory AccountDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AccountDataData(
      type: serializer.fromJson<String>(json['type']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'type': serializer.toJson<String>(type),
      'content': serializer.toJson<String>(content),
    };
  }

  AccountDataData copyWith({String? type, String? content}) => AccountDataData(
        type: type ?? this.type,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('AccountDataData(')
          ..write('type: $type, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(type, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountDataData &&
          other.type == this.type &&
          other.content == this.content);
}

class AccountDataCompanion extends UpdateCompanion<AccountDataData> {
  final Value<String> type;
  final Value<String> content;
  final Value<int> rowid;
  const AccountDataCompanion({
    this.type = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AccountDataCompanion.insert({
    required String type,
    required String content,
    this.rowid = const Value.absent(),
  })  : type = Value(type),
        content = Value(content);
  static Insertable<AccountDataData> custom({
    Expression<String>? type,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (type != null) 'type': type,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AccountDataCompanion copyWith(
      {Value<String>? type, Value<String>? content, Value<int>? rowid}) {
    return AccountDataCompanion(
      type: type ?? this.type,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountDataCompanion(')
          ..write('type: $type, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RoomDataTable extends RoomData
    with TableInfo<$RoomDataTable, RoomDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoomDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [roomId, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'room_data';
  @override
  VerificationContext validateIntegrity(Insertable<RoomDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {roomId};
  @override
  RoomDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoomDataData(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $RoomDataTable createAlias(String alias) {
    return $RoomDataTable(attachedDatabase, alias);
  }
}

class RoomDataData extends DataClass implements Insertable<RoomDataData> {
  final String roomId;
  final String content;
  const RoomDataData({required this.roomId, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['content'] = Variable<String>(content);
    return map;
  }

  RoomDataCompanion toCompanion(bool nullToAbsent) {
    return RoomDataCompanion(
      roomId: Value(roomId),
      content: Value(content),
    );
  }

  factory RoomDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoomDataData(
      roomId: serializer.fromJson<String>(json['roomId']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'content': serializer.toJson<String>(content),
    };
  }

  RoomDataData copyWith({String? roomId, String? content}) => RoomDataData(
        roomId: roomId ?? this.roomId,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('RoomDataData(')
          ..write('roomId: $roomId, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoomDataData &&
          other.roomId == this.roomId &&
          other.content == this.content);
}

class RoomDataCompanion extends UpdateCompanion<RoomDataData> {
  final Value<String> roomId;
  final Value<String> content;
  final Value<int> rowid;
  const RoomDataCompanion({
    this.roomId = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RoomDataCompanion.insert({
    required String roomId,
    required String content,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        content = Value(content);
  static Insertable<RoomDataData> custom({
    Expression<String>? roomId,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RoomDataCompanion copyWith(
      {Value<String>? roomId, Value<String>? content, Value<int>? rowid}) {
    return RoomDataCompanion(
      roomId: roomId ?? this.roomId,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoomDataCompanion(')
          ..write('roomId: $roomId, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PreloadRoomStateTable extends PreloadRoomState
    with TableInfo<$PreloadRoomStateTable, PreloadRoomStateData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PreloadRoomStateTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [roomId, type, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'preload_room_state';
  @override
  VerificationContext validateIntegrity(
      Insertable<PreloadRoomStateData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
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
  Set<GeneratedColumn> get $primaryKey => {roomId, type};
  @override
  PreloadRoomStateData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PreloadRoomStateData(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $PreloadRoomStateTable createAlias(String alias) {
    return $PreloadRoomStateTable(attachedDatabase, alias);
  }
}

class PreloadRoomStateData extends DataClass
    implements Insertable<PreloadRoomStateData> {
  final String roomId;
  final String type;
  final String content;
  const PreloadRoomStateData(
      {required this.roomId, required this.type, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['type'] = Variable<String>(type);
    map['content'] = Variable<String>(content);
    return map;
  }

  PreloadRoomStateCompanion toCompanion(bool nullToAbsent) {
    return PreloadRoomStateCompanion(
      roomId: Value(roomId),
      type: Value(type),
      content: Value(content),
    );
  }

  factory PreloadRoomStateData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PreloadRoomStateData(
      roomId: serializer.fromJson<String>(json['roomId']),
      type: serializer.fromJson<String>(json['type']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'type': serializer.toJson<String>(type),
      'content': serializer.toJson<String>(content),
    };
  }

  PreloadRoomStateData copyWith(
          {String? roomId, String? type, String? content}) =>
      PreloadRoomStateData(
        roomId: roomId ?? this.roomId,
        type: type ?? this.type,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('PreloadRoomStateData(')
          ..write('roomId: $roomId, ')
          ..write('type: $type, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, type, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PreloadRoomStateData &&
          other.roomId == this.roomId &&
          other.type == this.type &&
          other.content == this.content);
}

class PreloadRoomStateCompanion extends UpdateCompanion<PreloadRoomStateData> {
  final Value<String> roomId;
  final Value<String> type;
  final Value<String> content;
  final Value<int> rowid;
  const PreloadRoomStateCompanion({
    this.roomId = const Value.absent(),
    this.type = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PreloadRoomStateCompanion.insert({
    required String roomId,
    required String type,
    required String content,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        type = Value(type),
        content = Value(content);
  static Insertable<PreloadRoomStateData> custom({
    Expression<String>? roomId,
    Expression<String>? type,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (type != null) 'type': type,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PreloadRoomStateCompanion copyWith(
      {Value<String>? roomId,
      Value<String>? type,
      Value<String>? content,
      Value<int>? rowid}) {
    return PreloadRoomStateCompanion(
      roomId: roomId ?? this.roomId,
      type: type ?? this.type,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PreloadRoomStateCompanion(')
          ..write('roomId: $roomId, ')
          ..write('type: $type, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NonPreloadRoomStateTable extends NonPreloadRoomState
    with TableInfo<$NonPreloadRoomStateTable, NonPreloadRoomStateData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NonPreloadRoomStateTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [roomId, type, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'non_preload_room_state';
  @override
  VerificationContext validateIntegrity(
      Insertable<NonPreloadRoomStateData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
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
  Set<GeneratedColumn> get $primaryKey => {roomId, type};
  @override
  NonPreloadRoomStateData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NonPreloadRoomStateData(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $NonPreloadRoomStateTable createAlias(String alias) {
    return $NonPreloadRoomStateTable(attachedDatabase, alias);
  }
}

class NonPreloadRoomStateData extends DataClass
    implements Insertable<NonPreloadRoomStateData> {
  final String roomId;
  final String type;
  final String content;
  const NonPreloadRoomStateData(
      {required this.roomId, required this.type, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['type'] = Variable<String>(type);
    map['content'] = Variable<String>(content);
    return map;
  }

  NonPreloadRoomStateCompanion toCompanion(bool nullToAbsent) {
    return NonPreloadRoomStateCompanion(
      roomId: Value(roomId),
      type: Value(type),
      content: Value(content),
    );
  }

  factory NonPreloadRoomStateData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NonPreloadRoomStateData(
      roomId: serializer.fromJson<String>(json['roomId']),
      type: serializer.fromJson<String>(json['type']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'type': serializer.toJson<String>(type),
      'content': serializer.toJson<String>(content),
    };
  }

  NonPreloadRoomStateData copyWith(
          {String? roomId, String? type, String? content}) =>
      NonPreloadRoomStateData(
        roomId: roomId ?? this.roomId,
        type: type ?? this.type,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('NonPreloadRoomStateData(')
          ..write('roomId: $roomId, ')
          ..write('type: $type, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, type, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NonPreloadRoomStateData &&
          other.roomId == this.roomId &&
          other.type == this.type &&
          other.content == this.content);
}

class NonPreloadRoomStateCompanion
    extends UpdateCompanion<NonPreloadRoomStateData> {
  final Value<String> roomId;
  final Value<String> type;
  final Value<String> content;
  final Value<int> rowid;
  const NonPreloadRoomStateCompanion({
    this.roomId = const Value.absent(),
    this.type = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NonPreloadRoomStateCompanion.insert({
    required String roomId,
    required String type,
    required String content,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        type = Value(type),
        content = Value(content);
  static Insertable<NonPreloadRoomStateData> custom({
    Expression<String>? roomId,
    Expression<String>? type,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (type != null) 'type': type,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NonPreloadRoomStateCompanion copyWith(
      {Value<String>? roomId,
      Value<String>? type,
      Value<String>? content,
      Value<int>? rowid}) {
    return NonPreloadRoomStateCompanion(
      roomId: roomId ?? this.roomId,
      type: type ?? this.type,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NonPreloadRoomStateCompanion(')
          ..write('roomId: $roomId, ')
          ..write('type: $type, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RoomAccountDataTable extends RoomAccountData
    with TableInfo<$RoomAccountDataTable, RoomAccountDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoomAccountDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [roomId, type, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'room_account_data';
  @override
  VerificationContext validateIntegrity(
      Insertable<RoomAccountDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
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
  Set<GeneratedColumn> get $primaryKey => {roomId, type};
  @override
  RoomAccountDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoomAccountDataData(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $RoomAccountDataTable createAlias(String alias) {
    return $RoomAccountDataTable(attachedDatabase, alias);
  }
}

class RoomAccountDataData extends DataClass
    implements Insertable<RoomAccountDataData> {
  final String roomId;
  final String type;
  final String content;
  const RoomAccountDataData(
      {required this.roomId, required this.type, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['type'] = Variable<String>(type);
    map['content'] = Variable<String>(content);
    return map;
  }

  RoomAccountDataCompanion toCompanion(bool nullToAbsent) {
    return RoomAccountDataCompanion(
      roomId: Value(roomId),
      type: Value(type),
      content: Value(content),
    );
  }

  factory RoomAccountDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoomAccountDataData(
      roomId: serializer.fromJson<String>(json['roomId']),
      type: serializer.fromJson<String>(json['type']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'type': serializer.toJson<String>(type),
      'content': serializer.toJson<String>(content),
    };
  }

  RoomAccountDataData copyWith(
          {String? roomId, String? type, String? content}) =>
      RoomAccountDataData(
        roomId: roomId ?? this.roomId,
        type: type ?? this.type,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('RoomAccountDataData(')
          ..write('roomId: $roomId, ')
          ..write('type: $type, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, type, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoomAccountDataData &&
          other.roomId == this.roomId &&
          other.type == this.type &&
          other.content == this.content);
}

class RoomAccountDataCompanion extends UpdateCompanion<RoomAccountDataData> {
  final Value<String> roomId;
  final Value<String> type;
  final Value<String> content;
  final Value<int> rowid;
  const RoomAccountDataCompanion({
    this.roomId = const Value.absent(),
    this.type = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RoomAccountDataCompanion.insert({
    required String roomId,
    required String type,
    required String content,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        type = Value(type),
        content = Value(content);
  static Insertable<RoomAccountDataData> custom({
    Expression<String>? roomId,
    Expression<String>? type,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (type != null) 'type': type,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RoomAccountDataCompanion copyWith(
      {Value<String>? roomId,
      Value<String>? type,
      Value<String>? content,
      Value<int>? rowid}) {
    return RoomAccountDataCompanion(
      roomId: roomId ?? this.roomId,
      type: type ?? this.type,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoomAccountDataCompanion(')
          ..write('roomId: $roomId, ')
          ..write('type: $type, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EventDataTable extends EventData
    with TableInfo<$EventDataTable, EventDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _eventIdMeta =
      const VerificationMeta('eventId');
  @override
  late final GeneratedColumn<String> eventId = GeneratedColumn<String>(
      'event_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [roomId, eventId, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'event_data';
  @override
  VerificationContext validateIntegrity(Insertable<EventDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('event_id')) {
      context.handle(_eventIdMeta,
          eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));
    } else if (isInserting) {
      context.missing(_eventIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {roomId, eventId};
  @override
  EventDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EventDataData(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      eventId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}event_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $EventDataTable createAlias(String alias) {
    return $EventDataTable(attachedDatabase, alias);
  }
}

class EventDataData extends DataClass implements Insertable<EventDataData> {
  final String roomId;
  final String eventId;
  final String content;
  const EventDataData(
      {required this.roomId, required this.eventId, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['event_id'] = Variable<String>(eventId);
    map['content'] = Variable<String>(content);
    return map;
  }

  EventDataCompanion toCompanion(bool nullToAbsent) {
    return EventDataCompanion(
      roomId: Value(roomId),
      eventId: Value(eventId),
      content: Value(content),
    );
  }

  factory EventDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EventDataData(
      roomId: serializer.fromJson<String>(json['roomId']),
      eventId: serializer.fromJson<String>(json['eventId']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'eventId': serializer.toJson<String>(eventId),
      'content': serializer.toJson<String>(content),
    };
  }

  EventDataData copyWith({String? roomId, String? eventId, String? content}) =>
      EventDataData(
        roomId: roomId ?? this.roomId,
        eventId: eventId ?? this.eventId,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('EventDataData(')
          ..write('roomId: $roomId, ')
          ..write('eventId: $eventId, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, eventId, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EventDataData &&
          other.roomId == this.roomId &&
          other.eventId == this.eventId &&
          other.content == this.content);
}

class EventDataCompanion extends UpdateCompanion<EventDataData> {
  final Value<String> roomId;
  final Value<String> eventId;
  final Value<String> content;
  final Value<int> rowid;
  const EventDataCompanion({
    this.roomId = const Value.absent(),
    this.eventId = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EventDataCompanion.insert({
    required String roomId,
    required String eventId,
    required String content,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        eventId = Value(eventId),
        content = Value(content);
  static Insertable<EventDataData> custom({
    Expression<String>? roomId,
    Expression<String>? eventId,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (eventId != null) 'event_id': eventId,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EventDataCompanion copyWith(
      {Value<String>? roomId,
      Value<String>? eventId,
      Value<String>? content,
      Value<int>? rowid}) {
    return EventDataCompanion(
      roomId: roomId ?? this.roomId,
      eventId: eventId ?? this.eventId,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (eventId.present) {
      map['event_id'] = Variable<String>(eventId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventDataCompanion(')
          ..write('roomId: $roomId, ')
          ..write('eventId: $eventId, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TimelineFragmentDataTable extends TimelineFragmentData
    with TableInfo<$TimelineFragmentDataTable, TimelineFragmentDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TimelineFragmentDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sendingMeta =
      const VerificationMeta('sending');
  @override
  late final GeneratedColumn<bool> sending = GeneratedColumn<bool>(
      'sending', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("sending" IN (0, 1))'));
  static const VerificationMeta _fragmentsListMeta =
      const VerificationMeta('fragmentsList');
  @override
  late final GeneratedColumn<String> fragmentsList = GeneratedColumn<String>(
      'fragments_list', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [roomId, sending, fragmentsList];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'timeline_fragment_data';
  @override
  VerificationContext validateIntegrity(
      Insertable<TimelineFragmentDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('sending')) {
      context.handle(_sendingMeta,
          sending.isAcceptableOrUnknown(data['sending']!, _sendingMeta));
    } else if (isInserting) {
      context.missing(_sendingMeta);
    }
    if (data.containsKey('fragments_list')) {
      context.handle(
          _fragmentsListMeta,
          fragmentsList.isAcceptableOrUnknown(
              data['fragments_list']!, _fragmentsListMeta));
    } else if (isInserting) {
      context.missing(_fragmentsListMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {roomId, sending};
  @override
  TimelineFragmentDataData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TimelineFragmentDataData(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      sending: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sending'])!,
      fragmentsList: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fragments_list'])!,
    );
  }

  @override
  $TimelineFragmentDataTable createAlias(String alias) {
    return $TimelineFragmentDataTable(attachedDatabase, alias);
  }
}

class TimelineFragmentDataData extends DataClass
    implements Insertable<TimelineFragmentDataData> {
  final String roomId;
  final bool sending;
  final String fragmentsList;
  const TimelineFragmentDataData(
      {required this.roomId,
      required this.sending,
      required this.fragmentsList});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['sending'] = Variable<bool>(sending);
    map['fragments_list'] = Variable<String>(fragmentsList);
    return map;
  }

  TimelineFragmentDataCompanion toCompanion(bool nullToAbsent) {
    return TimelineFragmentDataCompanion(
      roomId: Value(roomId),
      sending: Value(sending),
      fragmentsList: Value(fragmentsList),
    );
  }

  factory TimelineFragmentDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TimelineFragmentDataData(
      roomId: serializer.fromJson<String>(json['roomId']),
      sending: serializer.fromJson<bool>(json['sending']),
      fragmentsList: serializer.fromJson<String>(json['fragmentsList']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'sending': serializer.toJson<bool>(sending),
      'fragmentsList': serializer.toJson<String>(fragmentsList),
    };
  }

  TimelineFragmentDataData copyWith(
          {String? roomId, bool? sending, String? fragmentsList}) =>
      TimelineFragmentDataData(
        roomId: roomId ?? this.roomId,
        sending: sending ?? this.sending,
        fragmentsList: fragmentsList ?? this.fragmentsList,
      );
  @override
  String toString() {
    return (StringBuffer('TimelineFragmentDataData(')
          ..write('roomId: $roomId, ')
          ..write('sending: $sending, ')
          ..write('fragmentsList: $fragmentsList')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, sending, fragmentsList);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TimelineFragmentDataData &&
          other.roomId == this.roomId &&
          other.sending == this.sending &&
          other.fragmentsList == this.fragmentsList);
}

class TimelineFragmentDataCompanion
    extends UpdateCompanion<TimelineFragmentDataData> {
  final Value<String> roomId;
  final Value<bool> sending;
  final Value<String> fragmentsList;
  final Value<int> rowid;
  const TimelineFragmentDataCompanion({
    this.roomId = const Value.absent(),
    this.sending = const Value.absent(),
    this.fragmentsList = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TimelineFragmentDataCompanion.insert({
    required String roomId,
    required bool sending,
    required String fragmentsList,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        sending = Value(sending),
        fragmentsList = Value(fragmentsList);
  static Insertable<TimelineFragmentDataData> custom({
    Expression<String>? roomId,
    Expression<bool>? sending,
    Expression<String>? fragmentsList,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (sending != null) 'sending': sending,
      if (fragmentsList != null) 'fragments_list': fragmentsList,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TimelineFragmentDataCompanion copyWith(
      {Value<String>? roomId,
      Value<bool>? sending,
      Value<String>? fragmentsList,
      Value<int>? rowid}) {
    return TimelineFragmentDataCompanion(
      roomId: roomId ?? this.roomId,
      sending: sending ?? this.sending,
      fragmentsList: fragmentsList ?? this.fragmentsList,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (sending.present) {
      map['sending'] = Variable<bool>(sending.value);
    }
    if (fragmentsList.present) {
      map['fragments_list'] = Variable<String>(fragmentsList.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TimelineFragmentDataCompanion(')
          ..write('roomId: $roomId, ')
          ..write('sending: $sending, ')
          ..write('fragmentsList: $fragmentsList, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RoomMembersTable extends RoomMembers
    with TableInfo<$RoomMembersTable, RoomMember> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoomMembersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [roomId, userId, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'room_members';
  @override
  VerificationContext validateIntegrity(Insertable<RoomMember> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {roomId, userId};
  @override
  RoomMember map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoomMember(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $RoomMembersTable createAlias(String alias) {
    return $RoomMembersTable(attachedDatabase, alias);
  }
}

class RoomMember extends DataClass implements Insertable<RoomMember> {
  final String roomId;
  final String userId;
  final String content;
  const RoomMember(
      {required this.roomId, required this.userId, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['user_id'] = Variable<String>(userId);
    map['content'] = Variable<String>(content);
    return map;
  }

  RoomMembersCompanion toCompanion(bool nullToAbsent) {
    return RoomMembersCompanion(
      roomId: Value(roomId),
      userId: Value(userId),
      content: Value(content),
    );
  }

  factory RoomMember.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoomMember(
      roomId: serializer.fromJson<String>(json['roomId']),
      userId: serializer.fromJson<String>(json['userId']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'userId': serializer.toJson<String>(userId),
      'content': serializer.toJson<String>(content),
    };
  }

  RoomMember copyWith({String? roomId, String? userId, String? content}) =>
      RoomMember(
        roomId: roomId ?? this.roomId,
        userId: userId ?? this.userId,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('RoomMember(')
          ..write('roomId: $roomId, ')
          ..write('userId: $userId, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, userId, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoomMember &&
          other.roomId == this.roomId &&
          other.userId == this.userId &&
          other.content == this.content);
}

class RoomMembersCompanion extends UpdateCompanion<RoomMember> {
  final Value<String> roomId;
  final Value<String> userId;
  final Value<String> content;
  final Value<int> rowid;
  const RoomMembersCompanion({
    this.roomId = const Value.absent(),
    this.userId = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RoomMembersCompanion.insert({
    required String roomId,
    required String userId,
    required String content,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        userId = Value(userId),
        content = Value(content);
  static Insertable<RoomMember> custom({
    Expression<String>? roomId,
    Expression<String>? userId,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (userId != null) 'user_id': userId,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RoomMembersCompanion copyWith(
      {Value<String>? roomId,
      Value<String>? userId,
      Value<String>? content,
      Value<int>? rowid}) {
    return RoomMembersCompanion(
      roomId: roomId ?? this.roomId,
      userId: userId ?? this.userId,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoomMembersCompanion(')
          ..write('roomId: $roomId, ')
          ..write('userId: $userId, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MatrixSdkDriftDBImplementation extends GeneratedDatabase {
  _$MatrixSdkDriftDBImplementation(QueryExecutor e) : super(e);
  _$MatrixSdkDriftDBImplementationManager get managers =>
      _$MatrixSdkDriftDBImplementationManager(this);
  late final $ClientDataTable clientData = $ClientDataTable(this);
  late final $ToDeviceQueueTable toDeviceQueue = $ToDeviceQueueTable(this);
  late final $AccountDataTable accountData = $AccountDataTable(this);
  late final $RoomDataTable roomData = $RoomDataTable(this);
  late final $PreloadRoomStateTable preloadRoomState =
      $PreloadRoomStateTable(this);
  late final $NonPreloadRoomStateTable nonPreloadRoomState =
      $NonPreloadRoomStateTable(this);
  late final $RoomAccountDataTable roomAccountData =
      $RoomAccountDataTable(this);
  late final $EventDataTable eventData = $EventDataTable(this);
  late final $TimelineFragmentDataTable timelineFragmentData =
      $TimelineFragmentDataTable(this);
  late final $RoomMembersTable roomMembers = $RoomMembersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        clientData,
        toDeviceQueue,
        accountData,
        roomData,
        preloadRoomState,
        nonPreloadRoomState,
        roomAccountData,
        eventData,
        timelineFragmentData,
        roomMembers
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$ClientDataTableInsertCompanionBuilder = ClientDataCompanion Function({
  Value<int> id,
  required String name,
  required String homeserverUrl,
  required String token,
  Value<DateTime?> tokenExpiresAt,
  Value<String?> refreshToken,
  required String userId,
  Value<String?> deviceId,
  Value<String?> deviceName,
  Value<String?> prevBatch,
  Value<String?> olmAccount,
  Value<String?> syncFilterId,
});
typedef $$ClientDataTableUpdateCompanionBuilder = ClientDataCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> homeserverUrl,
  Value<String> token,
  Value<DateTime?> tokenExpiresAt,
  Value<String?> refreshToken,
  Value<String> userId,
  Value<String?> deviceId,
  Value<String?> deviceName,
  Value<String?> prevBatch,
  Value<String?> olmAccount,
  Value<String?> syncFilterId,
});

class $$ClientDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $ClientDataTable,
    ClientDataData,
    $$ClientDataTableFilterComposer,
    $$ClientDataTableOrderingComposer,
    $$ClientDataTableProcessedTableManager,
    $$ClientDataTableInsertCompanionBuilder,
    $$ClientDataTableUpdateCompanionBuilder> {
  $$ClientDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $ClientDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ClientDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ClientDataTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$ClientDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> homeserverUrl = const Value.absent(),
            Value<String> token = const Value.absent(),
            Value<DateTime?> tokenExpiresAt = const Value.absent(),
            Value<String?> refreshToken = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String?> deviceId = const Value.absent(),
            Value<String?> deviceName = const Value.absent(),
            Value<String?> prevBatch = const Value.absent(),
            Value<String?> olmAccount = const Value.absent(),
            Value<String?> syncFilterId = const Value.absent(),
          }) =>
              ClientDataCompanion(
            id: id,
            name: name,
            homeserverUrl: homeserverUrl,
            token: token,
            tokenExpiresAt: tokenExpiresAt,
            refreshToken: refreshToken,
            userId: userId,
            deviceId: deviceId,
            deviceName: deviceName,
            prevBatch: prevBatch,
            olmAccount: olmAccount,
            syncFilterId: syncFilterId,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String homeserverUrl,
            required String token,
            Value<DateTime?> tokenExpiresAt = const Value.absent(),
            Value<String?> refreshToken = const Value.absent(),
            required String userId,
            Value<String?> deviceId = const Value.absent(),
            Value<String?> deviceName = const Value.absent(),
            Value<String?> prevBatch = const Value.absent(),
            Value<String?> olmAccount = const Value.absent(),
            Value<String?> syncFilterId = const Value.absent(),
          }) =>
              ClientDataCompanion.insert(
            id: id,
            name: name,
            homeserverUrl: homeserverUrl,
            token: token,
            tokenExpiresAt: tokenExpiresAt,
            refreshToken: refreshToken,
            userId: userId,
            deviceId: deviceId,
            deviceName: deviceName,
            prevBatch: prevBatch,
            olmAccount: olmAccount,
            syncFilterId: syncFilterId,
          ),
        ));
}

class $$ClientDataTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $ClientDataTable,
    ClientDataData,
    $$ClientDataTableFilterComposer,
    $$ClientDataTableOrderingComposer,
    $$ClientDataTableProcessedTableManager,
    $$ClientDataTableInsertCompanionBuilder,
    $$ClientDataTableUpdateCompanionBuilder> {
  $$ClientDataTableProcessedTableManager(super.$state);
}

class $$ClientDataTableFilterComposer
    extends FilterComposer<_$MatrixSdkDriftDBImplementation, $ClientDataTable> {
  $$ClientDataTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get homeserverUrl => $state.composableBuilder(
      column: $state.table.homeserverUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get token => $state.composableBuilder(
      column: $state.table.token,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get tokenExpiresAt => $state.composableBuilder(
      column: $state.table.tokenExpiresAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get refreshToken => $state.composableBuilder(
      column: $state.table.refreshToken,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get deviceId => $state.composableBuilder(
      column: $state.table.deviceId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get deviceName => $state.composableBuilder(
      column: $state.table.deviceName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get prevBatch => $state.composableBuilder(
      column: $state.table.prevBatch,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get olmAccount => $state.composableBuilder(
      column: $state.table.olmAccount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get syncFilterId => $state.composableBuilder(
      column: $state.table.syncFilterId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ClientDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $ClientDataTable> {
  $$ClientDataTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get homeserverUrl => $state.composableBuilder(
      column: $state.table.homeserverUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get token => $state.composableBuilder(
      column: $state.table.token,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get tokenExpiresAt => $state.composableBuilder(
      column: $state.table.tokenExpiresAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get refreshToken => $state.composableBuilder(
      column: $state.table.refreshToken,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get deviceId => $state.composableBuilder(
      column: $state.table.deviceId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get deviceName => $state.composableBuilder(
      column: $state.table.deviceName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get prevBatch => $state.composableBuilder(
      column: $state.table.prevBatch,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get olmAccount => $state.composableBuilder(
      column: $state.table.olmAccount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get syncFilterId => $state.composableBuilder(
      column: $state.table.syncFilterId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
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

typedef $$AccountDataTableInsertCompanionBuilder = AccountDataCompanion
    Function({
  required String type,
  required String content,
  Value<int> rowid,
});
typedef $$AccountDataTableUpdateCompanionBuilder = AccountDataCompanion
    Function({
  Value<String> type,
  Value<String> content,
  Value<int> rowid,
});

class $$AccountDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $AccountDataTable,
    AccountDataData,
    $$AccountDataTableFilterComposer,
    $$AccountDataTableOrderingComposer,
    $$AccountDataTableProcessedTableManager,
    $$AccountDataTableInsertCompanionBuilder,
    $$AccountDataTableUpdateCompanionBuilder> {
  $$AccountDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $AccountDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AccountDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AccountDataTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$AccountDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> type = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AccountDataCompanion(
            type: type,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String type,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              AccountDataCompanion.insert(
            type: type,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$AccountDataTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $AccountDataTable,
    AccountDataData,
    $$AccountDataTableFilterComposer,
    $$AccountDataTableOrderingComposer,
    $$AccountDataTableProcessedTableManager,
    $$AccountDataTableInsertCompanionBuilder,
    $$AccountDataTableUpdateCompanionBuilder> {
  $$AccountDataTableProcessedTableManager(super.$state);
}

class $$AccountDataTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $AccountDataTable> {
  $$AccountDataTableFilterComposer(super.$state);
  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AccountDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $AccountDataTable> {
  $$AccountDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$RoomDataTableInsertCompanionBuilder = RoomDataCompanion Function({
  required String roomId,
  required String content,
  Value<int> rowid,
});
typedef $$RoomDataTableUpdateCompanionBuilder = RoomDataCompanion Function({
  Value<String> roomId,
  Value<String> content,
  Value<int> rowid,
});

class $$RoomDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $RoomDataTable,
    RoomDataData,
    $$RoomDataTableFilterComposer,
    $$RoomDataTableOrderingComposer,
    $$RoomDataTableProcessedTableManager,
    $$RoomDataTableInsertCompanionBuilder,
    $$RoomDataTableUpdateCompanionBuilder> {
  $$RoomDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $RoomDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$RoomDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$RoomDataTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$RoomDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RoomDataCompanion(
            roomId: roomId,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              RoomDataCompanion.insert(
            roomId: roomId,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$RoomDataTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $RoomDataTable,
    RoomDataData,
    $$RoomDataTableFilterComposer,
    $$RoomDataTableOrderingComposer,
    $$RoomDataTableProcessedTableManager,
    $$RoomDataTableInsertCompanionBuilder,
    $$RoomDataTableUpdateCompanionBuilder> {
  $$RoomDataTableProcessedTableManager(super.$state);
}

class $$RoomDataTableFilterComposer
    extends FilterComposer<_$MatrixSdkDriftDBImplementation, $RoomDataTable> {
  $$RoomDataTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$RoomDataTableOrderingComposer
    extends OrderingComposer<_$MatrixSdkDriftDBImplementation, $RoomDataTable> {
  $$RoomDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$PreloadRoomStateTableInsertCompanionBuilder
    = PreloadRoomStateCompanion Function({
  required String roomId,
  required String type,
  required String content,
  Value<int> rowid,
});
typedef $$PreloadRoomStateTableUpdateCompanionBuilder
    = PreloadRoomStateCompanion Function({
  Value<String> roomId,
  Value<String> type,
  Value<String> content,
  Value<int> rowid,
});

class $$PreloadRoomStateTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $PreloadRoomStateTable,
    PreloadRoomStateData,
    $$PreloadRoomStateTableFilterComposer,
    $$PreloadRoomStateTableOrderingComposer,
    $$PreloadRoomStateTableProcessedTableManager,
    $$PreloadRoomStateTableInsertCompanionBuilder,
    $$PreloadRoomStateTableUpdateCompanionBuilder> {
  $$PreloadRoomStateTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $PreloadRoomStateTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PreloadRoomStateTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PreloadRoomStateTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$PreloadRoomStateTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PreloadRoomStateCompanion(
            roomId: roomId,
            type: type,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required String type,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              PreloadRoomStateCompanion.insert(
            roomId: roomId,
            type: type,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$PreloadRoomStateTableProcessedTableManager
    extends ProcessedTableManager<
        _$MatrixSdkDriftDBImplementation,
        $PreloadRoomStateTable,
        PreloadRoomStateData,
        $$PreloadRoomStateTableFilterComposer,
        $$PreloadRoomStateTableOrderingComposer,
        $$PreloadRoomStateTableProcessedTableManager,
        $$PreloadRoomStateTableInsertCompanionBuilder,
        $$PreloadRoomStateTableUpdateCompanionBuilder> {
  $$PreloadRoomStateTableProcessedTableManager(super.$state);
}

class $$PreloadRoomStateTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $PreloadRoomStateTable> {
  $$PreloadRoomStateTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PreloadRoomStateTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $PreloadRoomStateTable> {
  $$PreloadRoomStateTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$NonPreloadRoomStateTableInsertCompanionBuilder
    = NonPreloadRoomStateCompanion Function({
  required String roomId,
  required String type,
  required String content,
  Value<int> rowid,
});
typedef $$NonPreloadRoomStateTableUpdateCompanionBuilder
    = NonPreloadRoomStateCompanion Function({
  Value<String> roomId,
  Value<String> type,
  Value<String> content,
  Value<int> rowid,
});

class $$NonPreloadRoomStateTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $NonPreloadRoomStateTable,
    NonPreloadRoomStateData,
    $$NonPreloadRoomStateTableFilterComposer,
    $$NonPreloadRoomStateTableOrderingComposer,
    $$NonPreloadRoomStateTableProcessedTableManager,
    $$NonPreloadRoomStateTableInsertCompanionBuilder,
    $$NonPreloadRoomStateTableUpdateCompanionBuilder> {
  $$NonPreloadRoomStateTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $NonPreloadRoomStateTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$NonPreloadRoomStateTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$NonPreloadRoomStateTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$NonPreloadRoomStateTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NonPreloadRoomStateCompanion(
            roomId: roomId,
            type: type,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required String type,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              NonPreloadRoomStateCompanion.insert(
            roomId: roomId,
            type: type,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$NonPreloadRoomStateTableProcessedTableManager
    extends ProcessedTableManager<
        _$MatrixSdkDriftDBImplementation,
        $NonPreloadRoomStateTable,
        NonPreloadRoomStateData,
        $$NonPreloadRoomStateTableFilterComposer,
        $$NonPreloadRoomStateTableOrderingComposer,
        $$NonPreloadRoomStateTableProcessedTableManager,
        $$NonPreloadRoomStateTableInsertCompanionBuilder,
        $$NonPreloadRoomStateTableUpdateCompanionBuilder> {
  $$NonPreloadRoomStateTableProcessedTableManager(super.$state);
}

class $$NonPreloadRoomStateTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $NonPreloadRoomStateTable> {
  $$NonPreloadRoomStateTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$NonPreloadRoomStateTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $NonPreloadRoomStateTable> {
  $$NonPreloadRoomStateTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$RoomAccountDataTableInsertCompanionBuilder = RoomAccountDataCompanion
    Function({
  required String roomId,
  required String type,
  required String content,
  Value<int> rowid,
});
typedef $$RoomAccountDataTableUpdateCompanionBuilder = RoomAccountDataCompanion
    Function({
  Value<String> roomId,
  Value<String> type,
  Value<String> content,
  Value<int> rowid,
});

class $$RoomAccountDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $RoomAccountDataTable,
    RoomAccountDataData,
    $$RoomAccountDataTableFilterComposer,
    $$RoomAccountDataTableOrderingComposer,
    $$RoomAccountDataTableProcessedTableManager,
    $$RoomAccountDataTableInsertCompanionBuilder,
    $$RoomAccountDataTableUpdateCompanionBuilder> {
  $$RoomAccountDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $RoomAccountDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$RoomAccountDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$RoomAccountDataTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$RoomAccountDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RoomAccountDataCompanion(
            roomId: roomId,
            type: type,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required String type,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              RoomAccountDataCompanion.insert(
            roomId: roomId,
            type: type,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$RoomAccountDataTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $RoomAccountDataTable,
    RoomAccountDataData,
    $$RoomAccountDataTableFilterComposer,
    $$RoomAccountDataTableOrderingComposer,
    $$RoomAccountDataTableProcessedTableManager,
    $$RoomAccountDataTableInsertCompanionBuilder,
    $$RoomAccountDataTableUpdateCompanionBuilder> {
  $$RoomAccountDataTableProcessedTableManager(super.$state);
}

class $$RoomAccountDataTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $RoomAccountDataTable> {
  $$RoomAccountDataTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$RoomAccountDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $RoomAccountDataTable> {
  $$RoomAccountDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$EventDataTableInsertCompanionBuilder = EventDataCompanion Function({
  required String roomId,
  required String eventId,
  required String content,
  Value<int> rowid,
});
typedef $$EventDataTableUpdateCompanionBuilder = EventDataCompanion Function({
  Value<String> roomId,
  Value<String> eventId,
  Value<String> content,
  Value<int> rowid,
});

class $$EventDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $EventDataTable,
    EventDataData,
    $$EventDataTableFilterComposer,
    $$EventDataTableOrderingComposer,
    $$EventDataTableProcessedTableManager,
    $$EventDataTableInsertCompanionBuilder,
    $$EventDataTableUpdateCompanionBuilder> {
  $$EventDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $EventDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$EventDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$EventDataTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$EventDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<String> eventId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EventDataCompanion(
            roomId: roomId,
            eventId: eventId,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required String eventId,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              EventDataCompanion.insert(
            roomId: roomId,
            eventId: eventId,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$EventDataTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $EventDataTable,
    EventDataData,
    $$EventDataTableFilterComposer,
    $$EventDataTableOrderingComposer,
    $$EventDataTableProcessedTableManager,
    $$EventDataTableInsertCompanionBuilder,
    $$EventDataTableUpdateCompanionBuilder> {
  $$EventDataTableProcessedTableManager(super.$state);
}

class $$EventDataTableFilterComposer
    extends FilterComposer<_$MatrixSdkDriftDBImplementation, $EventDataTable> {
  $$EventDataTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get eventId => $state.composableBuilder(
      column: $state.table.eventId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$EventDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $EventDataTable> {
  $$EventDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get eventId => $state.composableBuilder(
      column: $state.table.eventId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$TimelineFragmentDataTableInsertCompanionBuilder
    = TimelineFragmentDataCompanion Function({
  required String roomId,
  required bool sending,
  required String fragmentsList,
  Value<int> rowid,
});
typedef $$TimelineFragmentDataTableUpdateCompanionBuilder
    = TimelineFragmentDataCompanion Function({
  Value<String> roomId,
  Value<bool> sending,
  Value<String> fragmentsList,
  Value<int> rowid,
});

class $$TimelineFragmentDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $TimelineFragmentDataTable,
    TimelineFragmentDataData,
    $$TimelineFragmentDataTableFilterComposer,
    $$TimelineFragmentDataTableOrderingComposer,
    $$TimelineFragmentDataTableProcessedTableManager,
    $$TimelineFragmentDataTableInsertCompanionBuilder,
    $$TimelineFragmentDataTableUpdateCompanionBuilder> {
  $$TimelineFragmentDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $TimelineFragmentDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$TimelineFragmentDataTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$TimelineFragmentDataTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$TimelineFragmentDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<bool> sending = const Value.absent(),
            Value<String> fragmentsList = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TimelineFragmentDataCompanion(
            roomId: roomId,
            sending: sending,
            fragmentsList: fragmentsList,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required bool sending,
            required String fragmentsList,
            Value<int> rowid = const Value.absent(),
          }) =>
              TimelineFragmentDataCompanion.insert(
            roomId: roomId,
            sending: sending,
            fragmentsList: fragmentsList,
            rowid: rowid,
          ),
        ));
}

class $$TimelineFragmentDataTableProcessedTableManager
    extends ProcessedTableManager<
        _$MatrixSdkDriftDBImplementation,
        $TimelineFragmentDataTable,
        TimelineFragmentDataData,
        $$TimelineFragmentDataTableFilterComposer,
        $$TimelineFragmentDataTableOrderingComposer,
        $$TimelineFragmentDataTableProcessedTableManager,
        $$TimelineFragmentDataTableInsertCompanionBuilder,
        $$TimelineFragmentDataTableUpdateCompanionBuilder> {
  $$TimelineFragmentDataTableProcessedTableManager(super.$state);
}

class $$TimelineFragmentDataTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $TimelineFragmentDataTable> {
  $$TimelineFragmentDataTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get sending => $state.composableBuilder(
      column: $state.table.sending,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get fragmentsList => $state.composableBuilder(
      column: $state.table.fragmentsList,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TimelineFragmentDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $TimelineFragmentDataTable> {
  $$TimelineFragmentDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get sending => $state.composableBuilder(
      column: $state.table.sending,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get fragmentsList => $state.composableBuilder(
      column: $state.table.fragmentsList,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$RoomMembersTableInsertCompanionBuilder = RoomMembersCompanion
    Function({
  required String roomId,
  required String userId,
  required String content,
  Value<int> rowid,
});
typedef $$RoomMembersTableUpdateCompanionBuilder = RoomMembersCompanion
    Function({
  Value<String> roomId,
  Value<String> userId,
  Value<String> content,
  Value<int> rowid,
});

class $$RoomMembersTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $RoomMembersTable,
    RoomMember,
    $$RoomMembersTableFilterComposer,
    $$RoomMembersTableOrderingComposer,
    $$RoomMembersTableProcessedTableManager,
    $$RoomMembersTableInsertCompanionBuilder,
    $$RoomMembersTableUpdateCompanionBuilder> {
  $$RoomMembersTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $RoomMembersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$RoomMembersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$RoomMembersTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$RoomMembersTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RoomMembersCompanion(
            roomId: roomId,
            userId: userId,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required String userId,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              RoomMembersCompanion.insert(
            roomId: roomId,
            userId: userId,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$RoomMembersTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $RoomMembersTable,
    RoomMember,
    $$RoomMembersTableFilterComposer,
    $$RoomMembersTableOrderingComposer,
    $$RoomMembersTableProcessedTableManager,
    $$RoomMembersTableInsertCompanionBuilder,
    $$RoomMembersTableUpdateCompanionBuilder> {
  $$RoomMembersTableProcessedTableManager(super.$state);
}

class $$RoomMembersTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $RoomMembersTable> {
  $$RoomMembersTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$RoomMembersTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $RoomMembersTable> {
  $$RoomMembersTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
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
  $$ClientDataTableTableManager get clientData =>
      $$ClientDataTableTableManager(_db, _db.clientData);
  $$ToDeviceQueueTableTableManager get toDeviceQueue =>
      $$ToDeviceQueueTableTableManager(_db, _db.toDeviceQueue);
  $$AccountDataTableTableManager get accountData =>
      $$AccountDataTableTableManager(_db, _db.accountData);
  $$RoomDataTableTableManager get roomData =>
      $$RoomDataTableTableManager(_db, _db.roomData);
  $$PreloadRoomStateTableTableManager get preloadRoomState =>
      $$PreloadRoomStateTableTableManager(_db, _db.preloadRoomState);
  $$NonPreloadRoomStateTableTableManager get nonPreloadRoomState =>
      $$NonPreloadRoomStateTableTableManager(_db, _db.nonPreloadRoomState);
  $$RoomAccountDataTableTableManager get roomAccountData =>
      $$RoomAccountDataTableTableManager(_db, _db.roomAccountData);
  $$EventDataTableTableManager get eventData =>
      $$EventDataTableTableManager(_db, _db.eventData);
  $$TimelineFragmentDataTableTableManager get timelineFragmentData =>
      $$TimelineFragmentDataTableTableManager(_db, _db.timelineFragmentData);
  $$RoomMembersTableTableManager get roomMembers =>
      $$RoomMembersTableTableManager(_db, _db.roomMembers);
}
