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
  static const VerificationMeta _wellKnownMeta =
      const VerificationMeta('wellKnown');
  @override
  late final GeneratedColumn<String> wellKnown = GeneratedColumn<String>(
      'well_known', aliasedName, true,
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
        syncFilterId,
        wellKnown
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
    if (data.containsKey('well_known')) {
      context.handle(_wellKnownMeta,
          wellKnown.isAcceptableOrUnknown(data['well_known']!, _wellKnownMeta));
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
      wellKnown: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}well_known']),
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
  final String? wellKnown;
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
      this.syncFilterId,
      this.wellKnown});
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
    if (!nullToAbsent || wellKnown != null) {
      map['well_known'] = Variable<String>(wellKnown);
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
      wellKnown: wellKnown == null && nullToAbsent
          ? const Value.absent()
          : Value(wellKnown),
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
      wellKnown: serializer.fromJson<String?>(json['wellKnown']),
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
      'wellKnown': serializer.toJson<String?>(wellKnown),
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
          Value<String?> syncFilterId = const Value.absent(),
          Value<String?> wellKnown = const Value.absent()}) =>
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
        wellKnown: wellKnown.present ? wellKnown.value : this.wellKnown,
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
          ..write('syncFilterId: $syncFilterId, ')
          ..write('wellKnown: $wellKnown')
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
      syncFilterId,
      wellKnown);
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
          other.syncFilterId == this.syncFilterId &&
          other.wellKnown == this.wellKnown);
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
  final Value<String?> wellKnown;
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
    this.wellKnown = const Value.absent(),
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
    this.wellKnown = const Value.absent(),
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
    Expression<String>? wellKnown,
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
      if (wellKnown != null) 'well_known': wellKnown,
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
      Value<String?>? syncFilterId,
      Value<String?>? wellKnown}) {
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
      wellKnown: wellKnown ?? this.wellKnown,
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
    if (wellKnown.present) {
      map['well_known'] = Variable<String>(wellKnown.value);
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
          ..write('syncFilterId: $syncFilterId, ')
          ..write('wellKnown: $wellKnown')
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

class $InboundGroupSessionTable extends InboundGroupSession
    with TableInfo<$InboundGroupSessionTable, InboundGroupSessionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InboundGroupSessionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sessionIdMeta =
      const VerificationMeta('sessionId');
  @override
  late final GeneratedColumn<String> sessionId = GeneratedColumn<String>(
      'session_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pickleMeta = const VerificationMeta('pickle');
  @override
  late final GeneratedColumn<String> pickle = GeneratedColumn<String>(
      'pickle', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _indexesMeta =
      const VerificationMeta('indexes');
  @override
  late final GeneratedColumn<String> indexes = GeneratedColumn<String>(
      'indexes', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _allowedAtIndexMeta =
      const VerificationMeta('allowedAtIndex');
  @override
  late final GeneratedColumn<String> allowedAtIndex = GeneratedColumn<String>(
      'allowed_at_index', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _senderKeyMeta =
      const VerificationMeta('senderKey');
  @override
  late final GeneratedColumn<String> senderKey = GeneratedColumn<String>(
      'sender_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _senderClaimedKeyMeta =
      const VerificationMeta('senderClaimedKey');
  @override
  late final GeneratedColumn<String> senderClaimedKey = GeneratedColumn<String>(
      'sender_claimed_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _uploadedMeta =
      const VerificationMeta('uploaded');
  @override
  late final GeneratedColumn<bool> uploaded = GeneratedColumn<bool>(
      'uploaded', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("uploaded" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        roomId,
        sessionId,
        pickle,
        content,
        indexes,
        allowedAtIndex,
        senderKey,
        senderClaimedKey,
        uploaded
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'inbound_group_session';
  @override
  VerificationContext validateIntegrity(
      Insertable<InboundGroupSessionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('session_id')) {
      context.handle(_sessionIdMeta,
          sessionId.isAcceptableOrUnknown(data['session_id']!, _sessionIdMeta));
    } else if (isInserting) {
      context.missing(_sessionIdMeta);
    }
    if (data.containsKey('pickle')) {
      context.handle(_pickleMeta,
          pickle.isAcceptableOrUnknown(data['pickle']!, _pickleMeta));
    } else if (isInserting) {
      context.missing(_pickleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('indexes')) {
      context.handle(_indexesMeta,
          indexes.isAcceptableOrUnknown(data['indexes']!, _indexesMeta));
    } else if (isInserting) {
      context.missing(_indexesMeta);
    }
    if (data.containsKey('allowed_at_index')) {
      context.handle(
          _allowedAtIndexMeta,
          allowedAtIndex.isAcceptableOrUnknown(
              data['allowed_at_index']!, _allowedAtIndexMeta));
    } else if (isInserting) {
      context.missing(_allowedAtIndexMeta);
    }
    if (data.containsKey('sender_key')) {
      context.handle(_senderKeyMeta,
          senderKey.isAcceptableOrUnknown(data['sender_key']!, _senderKeyMeta));
    } else if (isInserting) {
      context.missing(_senderKeyMeta);
    }
    if (data.containsKey('sender_claimed_key')) {
      context.handle(
          _senderClaimedKeyMeta,
          senderClaimedKey.isAcceptableOrUnknown(
              data['sender_claimed_key']!, _senderClaimedKeyMeta));
    } else if (isInserting) {
      context.missing(_senderClaimedKeyMeta);
    }
    if (data.containsKey('uploaded')) {
      context.handle(_uploadedMeta,
          uploaded.isAcceptableOrUnknown(data['uploaded']!, _uploadedMeta));
    } else if (isInserting) {
      context.missing(_uploadedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {roomId, sessionId};
  @override
  InboundGroupSessionData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InboundGroupSessionData(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      sessionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}session_id'])!,
      pickle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pickle'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      indexes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}indexes'])!,
      allowedAtIndex: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}allowed_at_index'])!,
      senderKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sender_key'])!,
      senderClaimedKey: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sender_claimed_key'])!,
      uploaded: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}uploaded'])!,
    );
  }

  @override
  $InboundGroupSessionTable createAlias(String alias) {
    return $InboundGroupSessionTable(attachedDatabase, alias);
  }
}

class InboundGroupSessionData extends DataClass
    implements Insertable<InboundGroupSessionData> {
  final String roomId;
  final String sessionId;
  final String pickle;
  final String content;
  final String indexes;
  final String allowedAtIndex;
  final String senderKey;
  final String senderClaimedKey;
  final bool uploaded;
  const InboundGroupSessionData(
      {required this.roomId,
      required this.sessionId,
      required this.pickle,
      required this.content,
      required this.indexes,
      required this.allowedAtIndex,
      required this.senderKey,
      required this.senderClaimedKey,
      required this.uploaded});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['session_id'] = Variable<String>(sessionId);
    map['pickle'] = Variable<String>(pickle);
    map['content'] = Variable<String>(content);
    map['indexes'] = Variable<String>(indexes);
    map['allowed_at_index'] = Variable<String>(allowedAtIndex);
    map['sender_key'] = Variable<String>(senderKey);
    map['sender_claimed_key'] = Variable<String>(senderClaimedKey);
    map['uploaded'] = Variable<bool>(uploaded);
    return map;
  }

  InboundGroupSessionCompanion toCompanion(bool nullToAbsent) {
    return InboundGroupSessionCompanion(
      roomId: Value(roomId),
      sessionId: Value(sessionId),
      pickle: Value(pickle),
      content: Value(content),
      indexes: Value(indexes),
      allowedAtIndex: Value(allowedAtIndex),
      senderKey: Value(senderKey),
      senderClaimedKey: Value(senderClaimedKey),
      uploaded: Value(uploaded),
    );
  }

  factory InboundGroupSessionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InboundGroupSessionData(
      roomId: serializer.fromJson<String>(json['roomId']),
      sessionId: serializer.fromJson<String>(json['sessionId']),
      pickle: serializer.fromJson<String>(json['pickle']),
      content: serializer.fromJson<String>(json['content']),
      indexes: serializer.fromJson<String>(json['indexes']),
      allowedAtIndex: serializer.fromJson<String>(json['allowedAtIndex']),
      senderKey: serializer.fromJson<String>(json['senderKey']),
      senderClaimedKey: serializer.fromJson<String>(json['senderClaimedKey']),
      uploaded: serializer.fromJson<bool>(json['uploaded']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'sessionId': serializer.toJson<String>(sessionId),
      'pickle': serializer.toJson<String>(pickle),
      'content': serializer.toJson<String>(content),
      'indexes': serializer.toJson<String>(indexes),
      'allowedAtIndex': serializer.toJson<String>(allowedAtIndex),
      'senderKey': serializer.toJson<String>(senderKey),
      'senderClaimedKey': serializer.toJson<String>(senderClaimedKey),
      'uploaded': serializer.toJson<bool>(uploaded),
    };
  }

  InboundGroupSessionData copyWith(
          {String? roomId,
          String? sessionId,
          String? pickle,
          String? content,
          String? indexes,
          String? allowedAtIndex,
          String? senderKey,
          String? senderClaimedKey,
          bool? uploaded}) =>
      InboundGroupSessionData(
        roomId: roomId ?? this.roomId,
        sessionId: sessionId ?? this.sessionId,
        pickle: pickle ?? this.pickle,
        content: content ?? this.content,
        indexes: indexes ?? this.indexes,
        allowedAtIndex: allowedAtIndex ?? this.allowedAtIndex,
        senderKey: senderKey ?? this.senderKey,
        senderClaimedKey: senderClaimedKey ?? this.senderClaimedKey,
        uploaded: uploaded ?? this.uploaded,
      );
  @override
  String toString() {
    return (StringBuffer('InboundGroupSessionData(')
          ..write('roomId: $roomId, ')
          ..write('sessionId: $sessionId, ')
          ..write('pickle: $pickle, ')
          ..write('content: $content, ')
          ..write('indexes: $indexes, ')
          ..write('allowedAtIndex: $allowedAtIndex, ')
          ..write('senderKey: $senderKey, ')
          ..write('senderClaimedKey: $senderClaimedKey, ')
          ..write('uploaded: $uploaded')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, sessionId, pickle, content, indexes,
      allowedAtIndex, senderKey, senderClaimedKey, uploaded);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InboundGroupSessionData &&
          other.roomId == this.roomId &&
          other.sessionId == this.sessionId &&
          other.pickle == this.pickle &&
          other.content == this.content &&
          other.indexes == this.indexes &&
          other.allowedAtIndex == this.allowedAtIndex &&
          other.senderKey == this.senderKey &&
          other.senderClaimedKey == this.senderClaimedKey &&
          other.uploaded == this.uploaded);
}

class InboundGroupSessionCompanion
    extends UpdateCompanion<InboundGroupSessionData> {
  final Value<String> roomId;
  final Value<String> sessionId;
  final Value<String> pickle;
  final Value<String> content;
  final Value<String> indexes;
  final Value<String> allowedAtIndex;
  final Value<String> senderKey;
  final Value<String> senderClaimedKey;
  final Value<bool> uploaded;
  final Value<int> rowid;
  const InboundGroupSessionCompanion({
    this.roomId = const Value.absent(),
    this.sessionId = const Value.absent(),
    this.pickle = const Value.absent(),
    this.content = const Value.absent(),
    this.indexes = const Value.absent(),
    this.allowedAtIndex = const Value.absent(),
    this.senderKey = const Value.absent(),
    this.senderClaimedKey = const Value.absent(),
    this.uploaded = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  InboundGroupSessionCompanion.insert({
    required String roomId,
    required String sessionId,
    required String pickle,
    required String content,
    required String indexes,
    required String allowedAtIndex,
    required String senderKey,
    required String senderClaimedKey,
    required bool uploaded,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        sessionId = Value(sessionId),
        pickle = Value(pickle),
        content = Value(content),
        indexes = Value(indexes),
        allowedAtIndex = Value(allowedAtIndex),
        senderKey = Value(senderKey),
        senderClaimedKey = Value(senderClaimedKey),
        uploaded = Value(uploaded);
  static Insertable<InboundGroupSessionData> custom({
    Expression<String>? roomId,
    Expression<String>? sessionId,
    Expression<String>? pickle,
    Expression<String>? content,
    Expression<String>? indexes,
    Expression<String>? allowedAtIndex,
    Expression<String>? senderKey,
    Expression<String>? senderClaimedKey,
    Expression<bool>? uploaded,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (sessionId != null) 'session_id': sessionId,
      if (pickle != null) 'pickle': pickle,
      if (content != null) 'content': content,
      if (indexes != null) 'indexes': indexes,
      if (allowedAtIndex != null) 'allowed_at_index': allowedAtIndex,
      if (senderKey != null) 'sender_key': senderKey,
      if (senderClaimedKey != null) 'sender_claimed_key': senderClaimedKey,
      if (uploaded != null) 'uploaded': uploaded,
      if (rowid != null) 'rowid': rowid,
    });
  }

  InboundGroupSessionCompanion copyWith(
      {Value<String>? roomId,
      Value<String>? sessionId,
      Value<String>? pickle,
      Value<String>? content,
      Value<String>? indexes,
      Value<String>? allowedAtIndex,
      Value<String>? senderKey,
      Value<String>? senderClaimedKey,
      Value<bool>? uploaded,
      Value<int>? rowid}) {
    return InboundGroupSessionCompanion(
      roomId: roomId ?? this.roomId,
      sessionId: sessionId ?? this.sessionId,
      pickle: pickle ?? this.pickle,
      content: content ?? this.content,
      indexes: indexes ?? this.indexes,
      allowedAtIndex: allowedAtIndex ?? this.allowedAtIndex,
      senderKey: senderKey ?? this.senderKey,
      senderClaimedKey: senderClaimedKey ?? this.senderClaimedKey,
      uploaded: uploaded ?? this.uploaded,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (sessionId.present) {
      map['session_id'] = Variable<String>(sessionId.value);
    }
    if (pickle.present) {
      map['pickle'] = Variable<String>(pickle.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (indexes.present) {
      map['indexes'] = Variable<String>(indexes.value);
    }
    if (allowedAtIndex.present) {
      map['allowed_at_index'] = Variable<String>(allowedAtIndex.value);
    }
    if (senderKey.present) {
      map['sender_key'] = Variable<String>(senderKey.value);
    }
    if (senderClaimedKey.present) {
      map['sender_claimed_key'] = Variable<String>(senderClaimedKey.value);
    }
    if (uploaded.present) {
      map['uploaded'] = Variable<bool>(uploaded.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InboundGroupSessionCompanion(')
          ..write('roomId: $roomId, ')
          ..write('sessionId: $sessionId, ')
          ..write('pickle: $pickle, ')
          ..write('content: $content, ')
          ..write('indexes: $indexes, ')
          ..write('allowedAtIndex: $allowedAtIndex, ')
          ..write('senderKey: $senderKey, ')
          ..write('senderClaimedKey: $senderClaimedKey, ')
          ..write('uploaded: $uploaded, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OutboundGroupSessionDataTable extends OutboundGroupSessionData
    with
        TableInfo<$OutboundGroupSessionDataTable,
            OutboundGroupSessionDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OutboundGroupSessionDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<String> roomId = GeneratedColumn<String>(
      'room_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pickleMeta = const VerificationMeta('pickle');
  @override
  late final GeneratedColumn<String> pickle = GeneratedColumn<String>(
      'pickle', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceIdsMeta =
      const VerificationMeta('deviceIds');
  @override
  late final GeneratedColumn<String> deviceIds = GeneratedColumn<String>(
      'device_ids', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  @override
  late final GeneratedColumn<int> creationTime = GeneratedColumn<int>(
      'creation_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [roomId, pickle, deviceIds, creationTime];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'outbound_group_session_data';
  @override
  VerificationContext validateIntegrity(
      Insertable<OutboundGroupSessionDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('pickle')) {
      context.handle(_pickleMeta,
          pickle.isAcceptableOrUnknown(data['pickle']!, _pickleMeta));
    } else if (isInserting) {
      context.missing(_pickleMeta);
    }
    if (data.containsKey('device_ids')) {
      context.handle(_deviceIdsMeta,
          deviceIds.isAcceptableOrUnknown(data['device_ids']!, _deviceIdsMeta));
    } else if (isInserting) {
      context.missing(_deviceIdsMeta);
    }
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time']!, _creationTimeMeta));
    } else if (isInserting) {
      context.missing(_creationTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {roomId};
  @override
  OutboundGroupSessionDataData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OutboundGroupSessionDataData(
      roomId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room_id'])!,
      pickle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pickle'])!,
      deviceIds: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_ids'])!,
      creationTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creation_time'])!,
    );
  }

  @override
  $OutboundGroupSessionDataTable createAlias(String alias) {
    return $OutboundGroupSessionDataTable(attachedDatabase, alias);
  }
}

class OutboundGroupSessionDataData extends DataClass
    implements Insertable<OutboundGroupSessionDataData> {
  final String roomId;
  final String pickle;
  final String deviceIds;
  final int creationTime;
  const OutboundGroupSessionDataData(
      {required this.roomId,
      required this.pickle,
      required this.deviceIds,
      required this.creationTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['room_id'] = Variable<String>(roomId);
    map['pickle'] = Variable<String>(pickle);
    map['device_ids'] = Variable<String>(deviceIds);
    map['creation_time'] = Variable<int>(creationTime);
    return map;
  }

  OutboundGroupSessionDataCompanion toCompanion(bool nullToAbsent) {
    return OutboundGroupSessionDataCompanion(
      roomId: Value(roomId),
      pickle: Value(pickle),
      deviceIds: Value(deviceIds),
      creationTime: Value(creationTime),
    );
  }

  factory OutboundGroupSessionDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OutboundGroupSessionDataData(
      roomId: serializer.fromJson<String>(json['roomId']),
      pickle: serializer.fromJson<String>(json['pickle']),
      deviceIds: serializer.fromJson<String>(json['deviceIds']),
      creationTime: serializer.fromJson<int>(json['creationTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roomId': serializer.toJson<String>(roomId),
      'pickle': serializer.toJson<String>(pickle),
      'deviceIds': serializer.toJson<String>(deviceIds),
      'creationTime': serializer.toJson<int>(creationTime),
    };
  }

  OutboundGroupSessionDataData copyWith(
          {String? roomId,
          String? pickle,
          String? deviceIds,
          int? creationTime}) =>
      OutboundGroupSessionDataData(
        roomId: roomId ?? this.roomId,
        pickle: pickle ?? this.pickle,
        deviceIds: deviceIds ?? this.deviceIds,
        creationTime: creationTime ?? this.creationTime,
      );
  @override
  String toString() {
    return (StringBuffer('OutboundGroupSessionDataData(')
          ..write('roomId: $roomId, ')
          ..write('pickle: $pickle, ')
          ..write('deviceIds: $deviceIds, ')
          ..write('creationTime: $creationTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roomId, pickle, deviceIds, creationTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OutboundGroupSessionDataData &&
          other.roomId == this.roomId &&
          other.pickle == this.pickle &&
          other.deviceIds == this.deviceIds &&
          other.creationTime == this.creationTime);
}

class OutboundGroupSessionDataCompanion
    extends UpdateCompanion<OutboundGroupSessionDataData> {
  final Value<String> roomId;
  final Value<String> pickle;
  final Value<String> deviceIds;
  final Value<int> creationTime;
  final Value<int> rowid;
  const OutboundGroupSessionDataCompanion({
    this.roomId = const Value.absent(),
    this.pickle = const Value.absent(),
    this.deviceIds = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OutboundGroupSessionDataCompanion.insert({
    required String roomId,
    required String pickle,
    required String deviceIds,
    required int creationTime,
    this.rowid = const Value.absent(),
  })  : roomId = Value(roomId),
        pickle = Value(pickle),
        deviceIds = Value(deviceIds),
        creationTime = Value(creationTime);
  static Insertable<OutboundGroupSessionDataData> custom({
    Expression<String>? roomId,
    Expression<String>? pickle,
    Expression<String>? deviceIds,
    Expression<int>? creationTime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roomId != null) 'room_id': roomId,
      if (pickle != null) 'pickle': pickle,
      if (deviceIds != null) 'device_ids': deviceIds,
      if (creationTime != null) 'creation_time': creationTime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OutboundGroupSessionDataCompanion copyWith(
      {Value<String>? roomId,
      Value<String>? pickle,
      Value<String>? deviceIds,
      Value<int>? creationTime,
      Value<int>? rowid}) {
    return OutboundGroupSessionDataCompanion(
      roomId: roomId ?? this.roomId,
      pickle: pickle ?? this.pickle,
      deviceIds: deviceIds ?? this.deviceIds,
      creationTime: creationTime ?? this.creationTime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roomId.present) {
      map['room_id'] = Variable<String>(roomId.value);
    }
    if (pickle.present) {
      map['pickle'] = Variable<String>(pickle.value);
    }
    if (deviceIds.present) {
      map['device_ids'] = Variable<String>(deviceIds.value);
    }
    if (creationTime.present) {
      map['creation_time'] = Variable<int>(creationTime.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OutboundGroupSessionDataCompanion(')
          ..write('roomId: $roomId, ')
          ..write('pickle: $pickle, ')
          ..write('deviceIds: $deviceIds, ')
          ..write('creationTime: $creationTime, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SSSSCacheDataTable extends SSSSCacheData
    with TableInfo<$SSSSCacheDataTable, SSSSCacheDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SSSSCacheDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _keyIdMeta = const VerificationMeta('keyId');
  @override
  late final GeneratedColumn<String> keyId = GeneratedColumn<String>(
      'key_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cipherTextMeta =
      const VerificationMeta('cipherText');
  @override
  late final GeneratedColumn<String> cipherText = GeneratedColumn<String>(
      'cipher_text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [type, keyId, cipherText, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 's_s_s_s_cache_data';
  @override
  VerificationContext validateIntegrity(Insertable<SSSSCacheDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('key_id')) {
      context.handle(
          _keyIdMeta, keyId.isAcceptableOrUnknown(data['key_id']!, _keyIdMeta));
    } else if (isInserting) {
      context.missing(_keyIdMeta);
    }
    if (data.containsKey('cipher_text')) {
      context.handle(
          _cipherTextMeta,
          cipherText.isAcceptableOrUnknown(
              data['cipher_text']!, _cipherTextMeta));
    } else if (isInserting) {
      context.missing(_cipherTextMeta);
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
  SSSSCacheDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SSSSCacheDataData(
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      keyId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key_id'])!,
      cipherText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cipher_text'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $SSSSCacheDataTable createAlias(String alias) {
    return $SSSSCacheDataTable(attachedDatabase, alias);
  }
}

class SSSSCacheDataData extends DataClass
    implements Insertable<SSSSCacheDataData> {
  final String type;
  final String keyId;
  final String cipherText;
  final String content;
  const SSSSCacheDataData(
      {required this.type,
      required this.keyId,
      required this.cipherText,
      required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['type'] = Variable<String>(type);
    map['key_id'] = Variable<String>(keyId);
    map['cipher_text'] = Variable<String>(cipherText);
    map['content'] = Variable<String>(content);
    return map;
  }

  SSSSCacheDataCompanion toCompanion(bool nullToAbsent) {
    return SSSSCacheDataCompanion(
      type: Value(type),
      keyId: Value(keyId),
      cipherText: Value(cipherText),
      content: Value(content),
    );
  }

  factory SSSSCacheDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SSSSCacheDataData(
      type: serializer.fromJson<String>(json['type']),
      keyId: serializer.fromJson<String>(json['keyId']),
      cipherText: serializer.fromJson<String>(json['cipherText']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'type': serializer.toJson<String>(type),
      'keyId': serializer.toJson<String>(keyId),
      'cipherText': serializer.toJson<String>(cipherText),
      'content': serializer.toJson<String>(content),
    };
  }

  SSSSCacheDataData copyWith(
          {String? type, String? keyId, String? cipherText, String? content}) =>
      SSSSCacheDataData(
        type: type ?? this.type,
        keyId: keyId ?? this.keyId,
        cipherText: cipherText ?? this.cipherText,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('SSSSCacheDataData(')
          ..write('type: $type, ')
          ..write('keyId: $keyId, ')
          ..write('cipherText: $cipherText, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(type, keyId, cipherText, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SSSSCacheDataData &&
          other.type == this.type &&
          other.keyId == this.keyId &&
          other.cipherText == this.cipherText &&
          other.content == this.content);
}

class SSSSCacheDataCompanion extends UpdateCompanion<SSSSCacheDataData> {
  final Value<String> type;
  final Value<String> keyId;
  final Value<String> cipherText;
  final Value<String> content;
  final Value<int> rowid;
  const SSSSCacheDataCompanion({
    this.type = const Value.absent(),
    this.keyId = const Value.absent(),
    this.cipherText = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SSSSCacheDataCompanion.insert({
    required String type,
    required String keyId,
    required String cipherText,
    required String content,
    this.rowid = const Value.absent(),
  })  : type = Value(type),
        keyId = Value(keyId),
        cipherText = Value(cipherText),
        content = Value(content);
  static Insertable<SSSSCacheDataData> custom({
    Expression<String>? type,
    Expression<String>? keyId,
    Expression<String>? cipherText,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (type != null) 'type': type,
      if (keyId != null) 'key_id': keyId,
      if (cipherText != null) 'cipher_text': cipherText,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SSSSCacheDataCompanion copyWith(
      {Value<String>? type,
      Value<String>? keyId,
      Value<String>? cipherText,
      Value<String>? content,
      Value<int>? rowid}) {
    return SSSSCacheDataCompanion(
      type: type ?? this.type,
      keyId: keyId ?? this.keyId,
      cipherText: cipherText ?? this.cipherText,
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
    if (keyId.present) {
      map['key_id'] = Variable<String>(keyId.value);
    }
    if (cipherText.present) {
      map['cipher_text'] = Variable<String>(cipherText.value);
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
    return (StringBuffer('SSSSCacheDataCompanion(')
          ..write('type: $type, ')
          ..write('keyId: $keyId, ')
          ..write('cipherText: $cipherText, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OlmSessionDataTable extends OlmSessionData
    with TableInfo<$OlmSessionDataTable, OlmSessionDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OlmSessionDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _identityKeyMeta =
      const VerificationMeta('identityKey');
  @override
  late final GeneratedColumn<String> identityKey = GeneratedColumn<String>(
      'identity_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sessionIdMeta =
      const VerificationMeta('sessionId');
  @override
  late final GeneratedColumn<String> sessionId = GeneratedColumn<String>(
      'session_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pickleMeta = const VerificationMeta('pickle');
  @override
  late final GeneratedColumn<String> pickle = GeneratedColumn<String>(
      'pickle', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastReceivedMeta =
      const VerificationMeta('lastReceived');
  @override
  late final GeneratedColumn<int> lastReceived = GeneratedColumn<int>(
      'last_received', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [identityKey, sessionId, pickle, lastReceived];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'olm_session_data';
  @override
  VerificationContext validateIntegrity(Insertable<OlmSessionDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('identity_key')) {
      context.handle(
          _identityKeyMeta,
          identityKey.isAcceptableOrUnknown(
              data['identity_key']!, _identityKeyMeta));
    } else if (isInserting) {
      context.missing(_identityKeyMeta);
    }
    if (data.containsKey('session_id')) {
      context.handle(_sessionIdMeta,
          sessionId.isAcceptableOrUnknown(data['session_id']!, _sessionIdMeta));
    } else if (isInserting) {
      context.missing(_sessionIdMeta);
    }
    if (data.containsKey('pickle')) {
      context.handle(_pickleMeta,
          pickle.isAcceptableOrUnknown(data['pickle']!, _pickleMeta));
    } else if (isInserting) {
      context.missing(_pickleMeta);
    }
    if (data.containsKey('last_received')) {
      context.handle(
          _lastReceivedMeta,
          lastReceived.isAcceptableOrUnknown(
              data['last_received']!, _lastReceivedMeta));
    } else if (isInserting) {
      context.missing(_lastReceivedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sessionId};
  @override
  OlmSessionDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OlmSessionDataData(
      identityKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}identity_key'])!,
      sessionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}session_id'])!,
      pickle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pickle'])!,
      lastReceived: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_received'])!,
    );
  }

  @override
  $OlmSessionDataTable createAlias(String alias) {
    return $OlmSessionDataTable(attachedDatabase, alias);
  }
}

class OlmSessionDataData extends DataClass
    implements Insertable<OlmSessionDataData> {
  final String identityKey;
  final String sessionId;
  final String pickle;
  final int lastReceived;
  const OlmSessionDataData(
      {required this.identityKey,
      required this.sessionId,
      required this.pickle,
      required this.lastReceived});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['identity_key'] = Variable<String>(identityKey);
    map['session_id'] = Variable<String>(sessionId);
    map['pickle'] = Variable<String>(pickle);
    map['last_received'] = Variable<int>(lastReceived);
    return map;
  }

  OlmSessionDataCompanion toCompanion(bool nullToAbsent) {
    return OlmSessionDataCompanion(
      identityKey: Value(identityKey),
      sessionId: Value(sessionId),
      pickle: Value(pickle),
      lastReceived: Value(lastReceived),
    );
  }

  factory OlmSessionDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OlmSessionDataData(
      identityKey: serializer.fromJson<String>(json['identityKey']),
      sessionId: serializer.fromJson<String>(json['sessionId']),
      pickle: serializer.fromJson<String>(json['pickle']),
      lastReceived: serializer.fromJson<int>(json['lastReceived']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'identityKey': serializer.toJson<String>(identityKey),
      'sessionId': serializer.toJson<String>(sessionId),
      'pickle': serializer.toJson<String>(pickle),
      'lastReceived': serializer.toJson<int>(lastReceived),
    };
  }

  OlmSessionDataData copyWith(
          {String? identityKey,
          String? sessionId,
          String? pickle,
          int? lastReceived}) =>
      OlmSessionDataData(
        identityKey: identityKey ?? this.identityKey,
        sessionId: sessionId ?? this.sessionId,
        pickle: pickle ?? this.pickle,
        lastReceived: lastReceived ?? this.lastReceived,
      );
  @override
  String toString() {
    return (StringBuffer('OlmSessionDataData(')
          ..write('identityKey: $identityKey, ')
          ..write('sessionId: $sessionId, ')
          ..write('pickle: $pickle, ')
          ..write('lastReceived: $lastReceived')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(identityKey, sessionId, pickle, lastReceived);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OlmSessionDataData &&
          other.identityKey == this.identityKey &&
          other.sessionId == this.sessionId &&
          other.pickle == this.pickle &&
          other.lastReceived == this.lastReceived);
}

class OlmSessionDataCompanion extends UpdateCompanion<OlmSessionDataData> {
  final Value<String> identityKey;
  final Value<String> sessionId;
  final Value<String> pickle;
  final Value<int> lastReceived;
  final Value<int> rowid;
  const OlmSessionDataCompanion({
    this.identityKey = const Value.absent(),
    this.sessionId = const Value.absent(),
    this.pickle = const Value.absent(),
    this.lastReceived = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OlmSessionDataCompanion.insert({
    required String identityKey,
    required String sessionId,
    required String pickle,
    required int lastReceived,
    this.rowid = const Value.absent(),
  })  : identityKey = Value(identityKey),
        sessionId = Value(sessionId),
        pickle = Value(pickle),
        lastReceived = Value(lastReceived);
  static Insertable<OlmSessionDataData> custom({
    Expression<String>? identityKey,
    Expression<String>? sessionId,
    Expression<String>? pickle,
    Expression<int>? lastReceived,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (identityKey != null) 'identity_key': identityKey,
      if (sessionId != null) 'session_id': sessionId,
      if (pickle != null) 'pickle': pickle,
      if (lastReceived != null) 'last_received': lastReceived,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OlmSessionDataCompanion copyWith(
      {Value<String>? identityKey,
      Value<String>? sessionId,
      Value<String>? pickle,
      Value<int>? lastReceived,
      Value<int>? rowid}) {
    return OlmSessionDataCompanion(
      identityKey: identityKey ?? this.identityKey,
      sessionId: sessionId ?? this.sessionId,
      pickle: pickle ?? this.pickle,
      lastReceived: lastReceived ?? this.lastReceived,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (identityKey.present) {
      map['identity_key'] = Variable<String>(identityKey.value);
    }
    if (sessionId.present) {
      map['session_id'] = Variable<String>(sessionId.value);
    }
    if (pickle.present) {
      map['pickle'] = Variable<String>(pickle.value);
    }
    if (lastReceived.present) {
      map['last_received'] = Variable<int>(lastReceived.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OlmSessionDataCompanion(')
          ..write('identityKey: $identityKey, ')
          ..write('sessionId: $sessionId, ')
          ..write('pickle: $pickle, ')
          ..write('lastReceived: $lastReceived, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SeenDeviceIdTable extends SeenDeviceId
    with TableInfo<$SeenDeviceIdTable, SeenDeviceIdData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeenDeviceIdTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _publicKeysMeta =
      const VerificationMeta('publicKeys');
  @override
  late final GeneratedColumn<String> publicKeys = GeneratedColumn<String>(
      'public_keys', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [userId, deviceId, publicKeys];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'seen_device_id';
  @override
  VerificationContext validateIntegrity(Insertable<SeenDeviceIdData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('public_keys')) {
      context.handle(
          _publicKeysMeta,
          publicKeys.isAcceptableOrUnknown(
              data['public_keys']!, _publicKeysMeta));
    } else if (isInserting) {
      context.missing(_publicKeysMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, deviceId};
  @override
  SeenDeviceIdData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeenDeviceIdData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id'])!,
      publicKeys: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}public_keys'])!,
    );
  }

  @override
  $SeenDeviceIdTable createAlias(String alias) {
    return $SeenDeviceIdTable(attachedDatabase, alias);
  }
}

class SeenDeviceIdData extends DataClass
    implements Insertable<SeenDeviceIdData> {
  final String userId;
  final String deviceId;
  final String publicKeys;
  const SeenDeviceIdData(
      {required this.userId, required this.deviceId, required this.publicKeys});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['device_id'] = Variable<String>(deviceId);
    map['public_keys'] = Variable<String>(publicKeys);
    return map;
  }

  SeenDeviceIdCompanion toCompanion(bool nullToAbsent) {
    return SeenDeviceIdCompanion(
      userId: Value(userId),
      deviceId: Value(deviceId),
      publicKeys: Value(publicKeys),
    );
  }

  factory SeenDeviceIdData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeenDeviceIdData(
      userId: serializer.fromJson<String>(json['userId']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      publicKeys: serializer.fromJson<String>(json['publicKeys']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'deviceId': serializer.toJson<String>(deviceId),
      'publicKeys': serializer.toJson<String>(publicKeys),
    };
  }

  SeenDeviceIdData copyWith(
          {String? userId, String? deviceId, String? publicKeys}) =>
      SeenDeviceIdData(
        userId: userId ?? this.userId,
        deviceId: deviceId ?? this.deviceId,
        publicKeys: publicKeys ?? this.publicKeys,
      );
  @override
  String toString() {
    return (StringBuffer('SeenDeviceIdData(')
          ..write('userId: $userId, ')
          ..write('deviceId: $deviceId, ')
          ..write('publicKeys: $publicKeys')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, deviceId, publicKeys);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeenDeviceIdData &&
          other.userId == this.userId &&
          other.deviceId == this.deviceId &&
          other.publicKeys == this.publicKeys);
}

class SeenDeviceIdCompanion extends UpdateCompanion<SeenDeviceIdData> {
  final Value<String> userId;
  final Value<String> deviceId;
  final Value<String> publicKeys;
  final Value<int> rowid;
  const SeenDeviceIdCompanion({
    this.userId = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.publicKeys = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SeenDeviceIdCompanion.insert({
    required String userId,
    required String deviceId,
    required String publicKeys,
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        deviceId = Value(deviceId),
        publicKeys = Value(publicKeys);
  static Insertable<SeenDeviceIdData> custom({
    Expression<String>? userId,
    Expression<String>? deviceId,
    Expression<String>? publicKeys,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (deviceId != null) 'device_id': deviceId,
      if (publicKeys != null) 'public_keys': publicKeys,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SeenDeviceIdCompanion copyWith(
      {Value<String>? userId,
      Value<String>? deviceId,
      Value<String>? publicKeys,
      Value<int>? rowid}) {
    return SeenDeviceIdCompanion(
      userId: userId ?? this.userId,
      deviceId: deviceId ?? this.deviceId,
      publicKeys: publicKeys ?? this.publicKeys,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (publicKeys.present) {
      map['public_keys'] = Variable<String>(publicKeys.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeenDeviceIdCompanion(')
          ..write('userId: $userId, ')
          ..write('deviceId: $deviceId, ')
          ..write('publicKeys: $publicKeys, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SeenPublicKeyTable extends SeenPublicKey
    with TableInfo<$SeenPublicKeyTable, SeenPublicKeyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeenPublicKeyTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _publicKeyMeta =
      const VerificationMeta('publicKey');
  @override
  late final GeneratedColumn<String> publicKey = GeneratedColumn<String>(
      'public_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [publicKey, deviceId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'seen_public_key';
  @override
  VerificationContext validateIntegrity(Insertable<SeenPublicKeyData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('public_key')) {
      context.handle(_publicKeyMeta,
          publicKey.isAcceptableOrUnknown(data['public_key']!, _publicKeyMeta));
    } else if (isInserting) {
      context.missing(_publicKeyMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {publicKey};
  @override
  SeenPublicKeyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeenPublicKeyData(
      publicKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}public_key'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id'])!,
    );
  }

  @override
  $SeenPublicKeyTable createAlias(String alias) {
    return $SeenPublicKeyTable(attachedDatabase, alias);
  }
}

class SeenPublicKeyData extends DataClass
    implements Insertable<SeenPublicKeyData> {
  final String publicKey;
  final String deviceId;
  const SeenPublicKeyData({required this.publicKey, required this.deviceId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['public_key'] = Variable<String>(publicKey);
    map['device_id'] = Variable<String>(deviceId);
    return map;
  }

  SeenPublicKeyCompanion toCompanion(bool nullToAbsent) {
    return SeenPublicKeyCompanion(
      publicKey: Value(publicKey),
      deviceId: Value(deviceId),
    );
  }

  factory SeenPublicKeyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeenPublicKeyData(
      publicKey: serializer.fromJson<String>(json['publicKey']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'publicKey': serializer.toJson<String>(publicKey),
      'deviceId': serializer.toJson<String>(deviceId),
    };
  }

  SeenPublicKeyData copyWith({String? publicKey, String? deviceId}) =>
      SeenPublicKeyData(
        publicKey: publicKey ?? this.publicKey,
        deviceId: deviceId ?? this.deviceId,
      );
  @override
  String toString() {
    return (StringBuffer('SeenPublicKeyData(')
          ..write('publicKey: $publicKey, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(publicKey, deviceId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeenPublicKeyData &&
          other.publicKey == this.publicKey &&
          other.deviceId == this.deviceId);
}

class SeenPublicKeyCompanion extends UpdateCompanion<SeenPublicKeyData> {
  final Value<String> publicKey;
  final Value<String> deviceId;
  final Value<int> rowid;
  const SeenPublicKeyCompanion({
    this.publicKey = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SeenPublicKeyCompanion.insert({
    required String publicKey,
    required String deviceId,
    this.rowid = const Value.absent(),
  })  : publicKey = Value(publicKey),
        deviceId = Value(deviceId);
  static Insertable<SeenPublicKeyData> custom({
    Expression<String>? publicKey,
    Expression<String>? deviceId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (publicKey != null) 'public_key': publicKey,
      if (deviceId != null) 'device_id': deviceId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SeenPublicKeyCompanion copyWith(
      {Value<String>? publicKey, Value<String>? deviceId, Value<int>? rowid}) {
    return SeenPublicKeyCompanion(
      publicKey: publicKey ?? this.publicKey,
      deviceId: deviceId ?? this.deviceId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (publicKey.present) {
      map['public_key'] = Variable<String>(publicKey.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeenPublicKeyCompanion(')
          ..write('publicKey: $publicKey, ')
          ..write('deviceId: $deviceId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserDeviceKeyTable extends UserDeviceKey
    with TableInfo<$UserDeviceKeyTable, UserDeviceKeyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserDeviceKeyTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastSentMessageMeta =
      const VerificationMeta('lastSentMessage');
  @override
  late final GeneratedColumn<String> lastSentMessage = GeneratedColumn<String>(
      'last_sent_message', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _verifiedMeta =
      const VerificationMeta('verified');
  @override
  late final GeneratedColumn<bool> verified = GeneratedColumn<bool>(
      'verified', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("verified" IN (0, 1))'));
  static const VerificationMeta _blockedMeta =
      const VerificationMeta('blocked');
  @override
  late final GeneratedColumn<bool> blocked = GeneratedColumn<bool>(
      'blocked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("blocked" IN (0, 1))'));
  static const VerificationMeta _lastActiveMeta =
      const VerificationMeta('lastActive');
  @override
  late final GeneratedColumn<int> lastActive = GeneratedColumn<int>(
      'last_active', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        userId,
        deviceId,
        content,
        lastSentMessage,
        verified,
        blocked,
        lastActive
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_device_key';
  @override
  VerificationContext validateIntegrity(Insertable<UserDeviceKeyData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('last_sent_message')) {
      context.handle(
          _lastSentMessageMeta,
          lastSentMessage.isAcceptableOrUnknown(
              data['last_sent_message']!, _lastSentMessageMeta));
    } else if (isInserting) {
      context.missing(_lastSentMessageMeta);
    }
    if (data.containsKey('verified')) {
      context.handle(_verifiedMeta,
          verified.isAcceptableOrUnknown(data['verified']!, _verifiedMeta));
    } else if (isInserting) {
      context.missing(_verifiedMeta);
    }
    if (data.containsKey('blocked')) {
      context.handle(_blockedMeta,
          blocked.isAcceptableOrUnknown(data['blocked']!, _blockedMeta));
    } else if (isInserting) {
      context.missing(_blockedMeta);
    }
    if (data.containsKey('last_active')) {
      context.handle(
          _lastActiveMeta,
          lastActive.isAcceptableOrUnknown(
              data['last_active']!, _lastActiveMeta));
    } else if (isInserting) {
      context.missing(_lastActiveMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, deviceId};
  @override
  UserDeviceKeyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserDeviceKeyData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      lastSentMessage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_sent_message'])!,
      verified: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}verified'])!,
      blocked: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}blocked'])!,
      lastActive: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_active'])!,
    );
  }

  @override
  $UserDeviceKeyTable createAlias(String alias) {
    return $UserDeviceKeyTable(attachedDatabase, alias);
  }
}

class UserDeviceKeyData extends DataClass
    implements Insertable<UserDeviceKeyData> {
  final String userId;
  final String deviceId;
  final String content;
  final String lastSentMessage;
  final bool verified;
  final bool blocked;
  final int lastActive;
  const UserDeviceKeyData(
      {required this.userId,
      required this.deviceId,
      required this.content,
      required this.lastSentMessage,
      required this.verified,
      required this.blocked,
      required this.lastActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['device_id'] = Variable<String>(deviceId);
    map['content'] = Variable<String>(content);
    map['last_sent_message'] = Variable<String>(lastSentMessage);
    map['verified'] = Variable<bool>(verified);
    map['blocked'] = Variable<bool>(blocked);
    map['last_active'] = Variable<int>(lastActive);
    return map;
  }

  UserDeviceKeyCompanion toCompanion(bool nullToAbsent) {
    return UserDeviceKeyCompanion(
      userId: Value(userId),
      deviceId: Value(deviceId),
      content: Value(content),
      lastSentMessage: Value(lastSentMessage),
      verified: Value(verified),
      blocked: Value(blocked),
      lastActive: Value(lastActive),
    );
  }

  factory UserDeviceKeyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserDeviceKeyData(
      userId: serializer.fromJson<String>(json['userId']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      content: serializer.fromJson<String>(json['content']),
      lastSentMessage: serializer.fromJson<String>(json['lastSentMessage']),
      verified: serializer.fromJson<bool>(json['verified']),
      blocked: serializer.fromJson<bool>(json['blocked']),
      lastActive: serializer.fromJson<int>(json['lastActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'deviceId': serializer.toJson<String>(deviceId),
      'content': serializer.toJson<String>(content),
      'lastSentMessage': serializer.toJson<String>(lastSentMessage),
      'verified': serializer.toJson<bool>(verified),
      'blocked': serializer.toJson<bool>(blocked),
      'lastActive': serializer.toJson<int>(lastActive),
    };
  }

  UserDeviceKeyData copyWith(
          {String? userId,
          String? deviceId,
          String? content,
          String? lastSentMessage,
          bool? verified,
          bool? blocked,
          int? lastActive}) =>
      UserDeviceKeyData(
        userId: userId ?? this.userId,
        deviceId: deviceId ?? this.deviceId,
        content: content ?? this.content,
        lastSentMessage: lastSentMessage ?? this.lastSentMessage,
        verified: verified ?? this.verified,
        blocked: blocked ?? this.blocked,
        lastActive: lastActive ?? this.lastActive,
      );
  @override
  String toString() {
    return (StringBuffer('UserDeviceKeyData(')
          ..write('userId: $userId, ')
          ..write('deviceId: $deviceId, ')
          ..write('content: $content, ')
          ..write('lastSentMessage: $lastSentMessage, ')
          ..write('verified: $verified, ')
          ..write('blocked: $blocked, ')
          ..write('lastActive: $lastActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, deviceId, content, lastSentMessage,
      verified, blocked, lastActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDeviceKeyData &&
          other.userId == this.userId &&
          other.deviceId == this.deviceId &&
          other.content == this.content &&
          other.lastSentMessage == this.lastSentMessage &&
          other.verified == this.verified &&
          other.blocked == this.blocked &&
          other.lastActive == this.lastActive);
}

class UserDeviceKeyCompanion extends UpdateCompanion<UserDeviceKeyData> {
  final Value<String> userId;
  final Value<String> deviceId;
  final Value<String> content;
  final Value<String> lastSentMessage;
  final Value<bool> verified;
  final Value<bool> blocked;
  final Value<int> lastActive;
  final Value<int> rowid;
  const UserDeviceKeyCompanion({
    this.userId = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.content = const Value.absent(),
    this.lastSentMessage = const Value.absent(),
    this.verified = const Value.absent(),
    this.blocked = const Value.absent(),
    this.lastActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserDeviceKeyCompanion.insert({
    required String userId,
    required String deviceId,
    required String content,
    required String lastSentMessage,
    required bool verified,
    required bool blocked,
    required int lastActive,
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        deviceId = Value(deviceId),
        content = Value(content),
        lastSentMessage = Value(lastSentMessage),
        verified = Value(verified),
        blocked = Value(blocked),
        lastActive = Value(lastActive);
  static Insertable<UserDeviceKeyData> custom({
    Expression<String>? userId,
    Expression<String>? deviceId,
    Expression<String>? content,
    Expression<String>? lastSentMessage,
    Expression<bool>? verified,
    Expression<bool>? blocked,
    Expression<int>? lastActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (deviceId != null) 'device_id': deviceId,
      if (content != null) 'content': content,
      if (lastSentMessage != null) 'last_sent_message': lastSentMessage,
      if (verified != null) 'verified': verified,
      if (blocked != null) 'blocked': blocked,
      if (lastActive != null) 'last_active': lastActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserDeviceKeyCompanion copyWith(
      {Value<String>? userId,
      Value<String>? deviceId,
      Value<String>? content,
      Value<String>? lastSentMessage,
      Value<bool>? verified,
      Value<bool>? blocked,
      Value<int>? lastActive,
      Value<int>? rowid}) {
    return UserDeviceKeyCompanion(
      userId: userId ?? this.userId,
      deviceId: deviceId ?? this.deviceId,
      content: content ?? this.content,
      lastSentMessage: lastSentMessage ?? this.lastSentMessage,
      verified: verified ?? this.verified,
      blocked: blocked ?? this.blocked,
      lastActive: lastActive ?? this.lastActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (lastSentMessage.present) {
      map['last_sent_message'] = Variable<String>(lastSentMessage.value);
    }
    if (verified.present) {
      map['verified'] = Variable<bool>(verified.value);
    }
    if (blocked.present) {
      map['blocked'] = Variable<bool>(blocked.value);
    }
    if (lastActive.present) {
      map['last_active'] = Variable<int>(lastActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDeviceKeyCompanion(')
          ..write('userId: $userId, ')
          ..write('deviceId: $deviceId, ')
          ..write('content: $content, ')
          ..write('lastSentMessage: $lastSentMessage, ')
          ..write('verified: $verified, ')
          ..write('blocked: $blocked, ')
          ..write('lastActive: $lastActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserDeviceKeyInfoTable extends UserDeviceKeyInfo
    with TableInfo<$UserDeviceKeyInfoTable, UserDeviceKeyInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserDeviceKeyInfoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _outdatedMeta =
      const VerificationMeta('outdated');
  @override
  late final GeneratedColumn<bool> outdated = GeneratedColumn<bool>(
      'outdated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("outdated" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [userId, outdated];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_device_key_info';
  @override
  VerificationContext validateIntegrity(
      Insertable<UserDeviceKeyInfoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('outdated')) {
      context.handle(_outdatedMeta,
          outdated.isAcceptableOrUnknown(data['outdated']!, _outdatedMeta));
    } else if (isInserting) {
      context.missing(_outdatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  UserDeviceKeyInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserDeviceKeyInfoData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      outdated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}outdated'])!,
    );
  }

  @override
  $UserDeviceKeyInfoTable createAlias(String alias) {
    return $UserDeviceKeyInfoTable(attachedDatabase, alias);
  }
}

class UserDeviceKeyInfoData extends DataClass
    implements Insertable<UserDeviceKeyInfoData> {
  final String userId;
  final bool outdated;
  const UserDeviceKeyInfoData({required this.userId, required this.outdated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['outdated'] = Variable<bool>(outdated);
    return map;
  }

  UserDeviceKeyInfoCompanion toCompanion(bool nullToAbsent) {
    return UserDeviceKeyInfoCompanion(
      userId: Value(userId),
      outdated: Value(outdated),
    );
  }

  factory UserDeviceKeyInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserDeviceKeyInfoData(
      userId: serializer.fromJson<String>(json['userId']),
      outdated: serializer.fromJson<bool>(json['outdated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'outdated': serializer.toJson<bool>(outdated),
    };
  }

  UserDeviceKeyInfoData copyWith({String? userId, bool? outdated}) =>
      UserDeviceKeyInfoData(
        userId: userId ?? this.userId,
        outdated: outdated ?? this.outdated,
      );
  @override
  String toString() {
    return (StringBuffer('UserDeviceKeyInfoData(')
          ..write('userId: $userId, ')
          ..write('outdated: $outdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, outdated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDeviceKeyInfoData &&
          other.userId == this.userId &&
          other.outdated == this.outdated);
}

class UserDeviceKeyInfoCompanion
    extends UpdateCompanion<UserDeviceKeyInfoData> {
  final Value<String> userId;
  final Value<bool> outdated;
  final Value<int> rowid;
  const UserDeviceKeyInfoCompanion({
    this.userId = const Value.absent(),
    this.outdated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserDeviceKeyInfoCompanion.insert({
    required String userId,
    required bool outdated,
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        outdated = Value(outdated);
  static Insertable<UserDeviceKeyInfoData> custom({
    Expression<String>? userId,
    Expression<bool>? outdated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (outdated != null) 'outdated': outdated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserDeviceKeyInfoCompanion copyWith(
      {Value<String>? userId, Value<bool>? outdated, Value<int>? rowid}) {
    return UserDeviceKeyInfoCompanion(
      userId: userId ?? this.userId,
      outdated: outdated ?? this.outdated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (outdated.present) {
      map['outdated'] = Variable<bool>(outdated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDeviceKeyInfoCompanion(')
          ..write('userId: $userId, ')
          ..write('outdated: $outdated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserCrossSigningKeyTable extends UserCrossSigningKey
    with TableInfo<$UserCrossSigningKeyTable, UserCrossSigningKeyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserCrossSigningKeyTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _publicKeyMeta =
      const VerificationMeta('publicKey');
  @override
  late final GeneratedColumn<String> publicKey = GeneratedColumn<String>(
      'public_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _verifiedMeta =
      const VerificationMeta('verified');
  @override
  late final GeneratedColumn<bool> verified = GeneratedColumn<bool>(
      'verified', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("verified" IN (0, 1))'));
  static const VerificationMeta _blockedMeta =
      const VerificationMeta('blocked');
  @override
  late final GeneratedColumn<bool> blocked = GeneratedColumn<bool>(
      'blocked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("blocked" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns =>
      [userId, publicKey, content, verified, blocked];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_cross_signing_key';
  @override
  VerificationContext validateIntegrity(
      Insertable<UserCrossSigningKeyData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('public_key')) {
      context.handle(_publicKeyMeta,
          publicKey.isAcceptableOrUnknown(data['public_key']!, _publicKeyMeta));
    } else if (isInserting) {
      context.missing(_publicKeyMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    if (data.containsKey('verified')) {
      context.handle(_verifiedMeta,
          verified.isAcceptableOrUnknown(data['verified']!, _verifiedMeta));
    } else if (isInserting) {
      context.missing(_verifiedMeta);
    }
    if (data.containsKey('blocked')) {
      context.handle(_blockedMeta,
          blocked.isAcceptableOrUnknown(data['blocked']!, _blockedMeta));
    } else if (isInserting) {
      context.missing(_blockedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, publicKey};
  @override
  UserCrossSigningKeyData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserCrossSigningKeyData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      publicKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}public_key'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content']),
      verified: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}verified'])!,
      blocked: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}blocked'])!,
    );
  }

  @override
  $UserCrossSigningKeyTable createAlias(String alias) {
    return $UserCrossSigningKeyTable(attachedDatabase, alias);
  }
}

class UserCrossSigningKeyData extends DataClass
    implements Insertable<UserCrossSigningKeyData> {
  final String userId;
  final String publicKey;
  final String? content;
  final bool verified;
  final bool blocked;
  const UserCrossSigningKeyData(
      {required this.userId,
      required this.publicKey,
      this.content,
      required this.verified,
      required this.blocked});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['public_key'] = Variable<String>(publicKey);
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    map['verified'] = Variable<bool>(verified);
    map['blocked'] = Variable<bool>(blocked);
    return map;
  }

  UserCrossSigningKeyCompanion toCompanion(bool nullToAbsent) {
    return UserCrossSigningKeyCompanion(
      userId: Value(userId),
      publicKey: Value(publicKey),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      verified: Value(verified),
      blocked: Value(blocked),
    );
  }

  factory UserCrossSigningKeyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserCrossSigningKeyData(
      userId: serializer.fromJson<String>(json['userId']),
      publicKey: serializer.fromJson<String>(json['publicKey']),
      content: serializer.fromJson<String?>(json['content']),
      verified: serializer.fromJson<bool>(json['verified']),
      blocked: serializer.fromJson<bool>(json['blocked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'publicKey': serializer.toJson<String>(publicKey),
      'content': serializer.toJson<String?>(content),
      'verified': serializer.toJson<bool>(verified),
      'blocked': serializer.toJson<bool>(blocked),
    };
  }

  UserCrossSigningKeyData copyWith(
          {String? userId,
          String? publicKey,
          Value<String?> content = const Value.absent(),
          bool? verified,
          bool? blocked}) =>
      UserCrossSigningKeyData(
        userId: userId ?? this.userId,
        publicKey: publicKey ?? this.publicKey,
        content: content.present ? content.value : this.content,
        verified: verified ?? this.verified,
        blocked: blocked ?? this.blocked,
      );
  @override
  String toString() {
    return (StringBuffer('UserCrossSigningKeyData(')
          ..write('userId: $userId, ')
          ..write('publicKey: $publicKey, ')
          ..write('content: $content, ')
          ..write('verified: $verified, ')
          ..write('blocked: $blocked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(userId, publicKey, content, verified, blocked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserCrossSigningKeyData &&
          other.userId == this.userId &&
          other.publicKey == this.publicKey &&
          other.content == this.content &&
          other.verified == this.verified &&
          other.blocked == this.blocked);
}

class UserCrossSigningKeyCompanion
    extends UpdateCompanion<UserCrossSigningKeyData> {
  final Value<String> userId;
  final Value<String> publicKey;
  final Value<String?> content;
  final Value<bool> verified;
  final Value<bool> blocked;
  final Value<int> rowid;
  const UserCrossSigningKeyCompanion({
    this.userId = const Value.absent(),
    this.publicKey = const Value.absent(),
    this.content = const Value.absent(),
    this.verified = const Value.absent(),
    this.blocked = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserCrossSigningKeyCompanion.insert({
    required String userId,
    required String publicKey,
    this.content = const Value.absent(),
    required bool verified,
    required bool blocked,
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        publicKey = Value(publicKey),
        verified = Value(verified),
        blocked = Value(blocked);
  static Insertable<UserCrossSigningKeyData> custom({
    Expression<String>? userId,
    Expression<String>? publicKey,
    Expression<String>? content,
    Expression<bool>? verified,
    Expression<bool>? blocked,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (publicKey != null) 'public_key': publicKey,
      if (content != null) 'content': content,
      if (verified != null) 'verified': verified,
      if (blocked != null) 'blocked': blocked,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserCrossSigningKeyCompanion copyWith(
      {Value<String>? userId,
      Value<String>? publicKey,
      Value<String?>? content,
      Value<bool>? verified,
      Value<bool>? blocked,
      Value<int>? rowid}) {
    return UserCrossSigningKeyCompanion(
      userId: userId ?? this.userId,
      publicKey: publicKey ?? this.publicKey,
      content: content ?? this.content,
      verified: verified ?? this.verified,
      blocked: blocked ?? this.blocked,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (publicKey.present) {
      map['public_key'] = Variable<String>(publicKey.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (verified.present) {
      map['verified'] = Variable<bool>(verified.value);
    }
    if (blocked.present) {
      map['blocked'] = Variable<bool>(blocked.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCrossSigningKeyCompanion(')
          ..write('userId: $userId, ')
          ..write('publicKey: $publicKey, ')
          ..write('content: $content, ')
          ..write('verified: $verified, ')
          ..write('blocked: $blocked, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PresenceDataTable extends PresenceData
    with TableInfo<$PresenceDataTable, PresenceDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PresenceDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _presenceMeta =
      const VerificationMeta('presence');
  @override
  late final GeneratedColumn<String> presence = GeneratedColumn<String>(
      'presence', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [userId, presence];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'presence_data';
  @override
  VerificationContext validateIntegrity(Insertable<PresenceDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('presence')) {
      context.handle(_presenceMeta,
          presence.isAcceptableOrUnknown(data['presence']!, _presenceMeta));
    } else if (isInserting) {
      context.missing(_presenceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  PresenceDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PresenceDataData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      presence: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}presence'])!,
    );
  }

  @override
  $PresenceDataTable createAlias(String alias) {
    return $PresenceDataTable(attachedDatabase, alias);
  }
}

class PresenceDataData extends DataClass
    implements Insertable<PresenceDataData> {
  final String userId;
  final String presence;
  const PresenceDataData({required this.userId, required this.presence});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['presence'] = Variable<String>(presence);
    return map;
  }

  PresenceDataCompanion toCompanion(bool nullToAbsent) {
    return PresenceDataCompanion(
      userId: Value(userId),
      presence: Value(presence),
    );
  }

  factory PresenceDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PresenceDataData(
      userId: serializer.fromJson<String>(json['userId']),
      presence: serializer.fromJson<String>(json['presence']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'presence': serializer.toJson<String>(presence),
    };
  }

  PresenceDataData copyWith({String? userId, String? presence}) =>
      PresenceDataData(
        userId: userId ?? this.userId,
        presence: presence ?? this.presence,
      );
  @override
  String toString() {
    return (StringBuffer('PresenceDataData(')
          ..write('userId: $userId, ')
          ..write('presence: $presence')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, presence);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PresenceDataData &&
          other.userId == this.userId &&
          other.presence == this.presence);
}

class PresenceDataCompanion extends UpdateCompanion<PresenceDataData> {
  final Value<String> userId;
  final Value<String> presence;
  final Value<int> rowid;
  const PresenceDataCompanion({
    this.userId = const Value.absent(),
    this.presence = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PresenceDataCompanion.insert({
    required String userId,
    required String presence,
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        presence = Value(presence);
  static Insertable<PresenceDataData> custom({
    Expression<String>? userId,
    Expression<String>? presence,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (presence != null) 'presence': presence,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PresenceDataCompanion copyWith(
      {Value<String>? userId, Value<String>? presence, Value<int>? rowid}) {
    return PresenceDataCompanion(
      userId: userId ?? this.userId,
      presence: presence ?? this.presence,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (presence.present) {
      map['presence'] = Variable<String>(presence.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PresenceDataCompanion(')
          ..write('userId: $userId, ')
          ..write('presence: $presence, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CachedProfileDataTable extends CachedProfileData
    with TableInfo<$CachedProfileDataTable, CachedProfileDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedProfileDataTable(this.attachedDatabase, [this._alias]);
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
  List<GeneratedColumn> get $columns => [userId, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_profile_data';
  @override
  VerificationContext validateIntegrity(
      Insertable<CachedProfileDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
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
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  CachedProfileDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedProfileDataData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $CachedProfileDataTable createAlias(String alias) {
    return $CachedProfileDataTable(attachedDatabase, alias);
  }
}

class CachedProfileDataData extends DataClass
    implements Insertable<CachedProfileDataData> {
  final String userId;
  final String content;
  const CachedProfileDataData({required this.userId, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['content'] = Variable<String>(content);
    return map;
  }

  CachedProfileDataCompanion toCompanion(bool nullToAbsent) {
    return CachedProfileDataCompanion(
      userId: Value(userId),
      content: Value(content),
    );
  }

  factory CachedProfileDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedProfileDataData(
      userId: serializer.fromJson<String>(json['userId']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'content': serializer.toJson<String>(content),
    };
  }

  CachedProfileDataData copyWith({String? userId, String? content}) =>
      CachedProfileDataData(
        userId: userId ?? this.userId,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('CachedProfileDataData(')
          ..write('userId: $userId, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedProfileDataData &&
          other.userId == this.userId &&
          other.content == this.content);
}

class CachedProfileDataCompanion
    extends UpdateCompanion<CachedProfileDataData> {
  final Value<String> userId;
  final Value<String> content;
  final Value<int> rowid;
  const CachedProfileDataCompanion({
    this.userId = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedProfileDataCompanion.insert({
    required String userId,
    required String content,
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        content = Value(content);
  static Insertable<CachedProfileDataData> custom({
    Expression<String>? userId,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedProfileDataCompanion copyWith(
      {Value<String>? userId, Value<String>? content, Value<int>? rowid}) {
    return CachedProfileDataCompanion(
      userId: userId ?? this.userId,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
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
    return (StringBuffer('CachedProfileDataCompanion(')
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
  late final $InboundGroupSessionTable inboundGroupSession =
      $InboundGroupSessionTable(this);
  late final $OutboundGroupSessionDataTable outboundGroupSessionData =
      $OutboundGroupSessionDataTable(this);
  late final $SSSSCacheDataTable sSSSCacheData = $SSSSCacheDataTable(this);
  late final $OlmSessionDataTable olmSessionData = $OlmSessionDataTable(this);
  late final $SeenDeviceIdTable seenDeviceId = $SeenDeviceIdTable(this);
  late final $SeenPublicKeyTable seenPublicKey = $SeenPublicKeyTable(this);
  late final $UserDeviceKeyTable userDeviceKey = $UserDeviceKeyTable(this);
  late final $UserDeviceKeyInfoTable userDeviceKeyInfo =
      $UserDeviceKeyInfoTable(this);
  late final $UserCrossSigningKeyTable userCrossSigningKey =
      $UserCrossSigningKeyTable(this);
  late final $PresenceDataTable presenceData = $PresenceDataTable(this);
  late final $CachedProfileDataTable cachedProfileData =
      $CachedProfileDataTable(this);
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
        roomMembers,
        inboundGroupSession,
        outboundGroupSessionData,
        sSSSCacheData,
        olmSessionData,
        seenDeviceId,
        seenPublicKey,
        userDeviceKey,
        userDeviceKeyInfo,
        userCrossSigningKey,
        presenceData,
        cachedProfileData
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
  Value<String?> wellKnown,
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
  Value<String?> wellKnown,
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
            Value<String?> wellKnown = const Value.absent(),
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
            wellKnown: wellKnown,
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
            Value<String?> wellKnown = const Value.absent(),
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
            wellKnown: wellKnown,
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

  ColumnFilters<String> get wellKnown => $state.composableBuilder(
      column: $state.table.wellKnown,
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

  ColumnOrderings<String> get wellKnown => $state.composableBuilder(
      column: $state.table.wellKnown,
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

typedef $$InboundGroupSessionTableInsertCompanionBuilder
    = InboundGroupSessionCompanion Function({
  required String roomId,
  required String sessionId,
  required String pickle,
  required String content,
  required String indexes,
  required String allowedAtIndex,
  required String senderKey,
  required String senderClaimedKey,
  required bool uploaded,
  Value<int> rowid,
});
typedef $$InboundGroupSessionTableUpdateCompanionBuilder
    = InboundGroupSessionCompanion Function({
  Value<String> roomId,
  Value<String> sessionId,
  Value<String> pickle,
  Value<String> content,
  Value<String> indexes,
  Value<String> allowedAtIndex,
  Value<String> senderKey,
  Value<String> senderClaimedKey,
  Value<bool> uploaded,
  Value<int> rowid,
});

class $$InboundGroupSessionTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $InboundGroupSessionTable,
    InboundGroupSessionData,
    $$InboundGroupSessionTableFilterComposer,
    $$InboundGroupSessionTableOrderingComposer,
    $$InboundGroupSessionTableProcessedTableManager,
    $$InboundGroupSessionTableInsertCompanionBuilder,
    $$InboundGroupSessionTableUpdateCompanionBuilder> {
  $$InboundGroupSessionTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $InboundGroupSessionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$InboundGroupSessionTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$InboundGroupSessionTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$InboundGroupSessionTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<String> sessionId = const Value.absent(),
            Value<String> pickle = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<String> indexes = const Value.absent(),
            Value<String> allowedAtIndex = const Value.absent(),
            Value<String> senderKey = const Value.absent(),
            Value<String> senderClaimedKey = const Value.absent(),
            Value<bool> uploaded = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              InboundGroupSessionCompanion(
            roomId: roomId,
            sessionId: sessionId,
            pickle: pickle,
            content: content,
            indexes: indexes,
            allowedAtIndex: allowedAtIndex,
            senderKey: senderKey,
            senderClaimedKey: senderClaimedKey,
            uploaded: uploaded,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required String sessionId,
            required String pickle,
            required String content,
            required String indexes,
            required String allowedAtIndex,
            required String senderKey,
            required String senderClaimedKey,
            required bool uploaded,
            Value<int> rowid = const Value.absent(),
          }) =>
              InboundGroupSessionCompanion.insert(
            roomId: roomId,
            sessionId: sessionId,
            pickle: pickle,
            content: content,
            indexes: indexes,
            allowedAtIndex: allowedAtIndex,
            senderKey: senderKey,
            senderClaimedKey: senderClaimedKey,
            uploaded: uploaded,
            rowid: rowid,
          ),
        ));
}

class $$InboundGroupSessionTableProcessedTableManager
    extends ProcessedTableManager<
        _$MatrixSdkDriftDBImplementation,
        $InboundGroupSessionTable,
        InboundGroupSessionData,
        $$InboundGroupSessionTableFilterComposer,
        $$InboundGroupSessionTableOrderingComposer,
        $$InboundGroupSessionTableProcessedTableManager,
        $$InboundGroupSessionTableInsertCompanionBuilder,
        $$InboundGroupSessionTableUpdateCompanionBuilder> {
  $$InboundGroupSessionTableProcessedTableManager(super.$state);
}

class $$InboundGroupSessionTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $InboundGroupSessionTable> {
  $$InboundGroupSessionTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sessionId => $state.composableBuilder(
      column: $state.table.sessionId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pickle => $state.composableBuilder(
      column: $state.table.pickle,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get indexes => $state.composableBuilder(
      column: $state.table.indexes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get allowedAtIndex => $state.composableBuilder(
      column: $state.table.allowedAtIndex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get senderKey => $state.composableBuilder(
      column: $state.table.senderKey,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get senderClaimedKey => $state.composableBuilder(
      column: $state.table.senderClaimedKey,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get uploaded => $state.composableBuilder(
      column: $state.table.uploaded,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$InboundGroupSessionTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $InboundGroupSessionTable> {
  $$InboundGroupSessionTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sessionId => $state.composableBuilder(
      column: $state.table.sessionId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pickle => $state.composableBuilder(
      column: $state.table.pickle,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get indexes => $state.composableBuilder(
      column: $state.table.indexes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get allowedAtIndex => $state.composableBuilder(
      column: $state.table.allowedAtIndex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get senderKey => $state.composableBuilder(
      column: $state.table.senderKey,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get senderClaimedKey => $state.composableBuilder(
      column: $state.table.senderClaimedKey,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get uploaded => $state.composableBuilder(
      column: $state.table.uploaded,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$OutboundGroupSessionDataTableInsertCompanionBuilder
    = OutboundGroupSessionDataCompanion Function({
  required String roomId,
  required String pickle,
  required String deviceIds,
  required int creationTime,
  Value<int> rowid,
});
typedef $$OutboundGroupSessionDataTableUpdateCompanionBuilder
    = OutboundGroupSessionDataCompanion Function({
  Value<String> roomId,
  Value<String> pickle,
  Value<String> deviceIds,
  Value<int> creationTime,
  Value<int> rowid,
});

class $$OutboundGroupSessionDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $OutboundGroupSessionDataTable,
    OutboundGroupSessionDataData,
    $$OutboundGroupSessionDataTableFilterComposer,
    $$OutboundGroupSessionDataTableOrderingComposer,
    $$OutboundGroupSessionDataTableProcessedTableManager,
    $$OutboundGroupSessionDataTableInsertCompanionBuilder,
    $$OutboundGroupSessionDataTableUpdateCompanionBuilder> {
  $$OutboundGroupSessionDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $OutboundGroupSessionDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$OutboundGroupSessionDataTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$OutboundGroupSessionDataTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$OutboundGroupSessionDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> roomId = const Value.absent(),
            Value<String> pickle = const Value.absent(),
            Value<String> deviceIds = const Value.absent(),
            Value<int> creationTime = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OutboundGroupSessionDataCompanion(
            roomId: roomId,
            pickle: pickle,
            deviceIds: deviceIds,
            creationTime: creationTime,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String roomId,
            required String pickle,
            required String deviceIds,
            required int creationTime,
            Value<int> rowid = const Value.absent(),
          }) =>
              OutboundGroupSessionDataCompanion.insert(
            roomId: roomId,
            pickle: pickle,
            deviceIds: deviceIds,
            creationTime: creationTime,
            rowid: rowid,
          ),
        ));
}

class $$OutboundGroupSessionDataTableProcessedTableManager
    extends ProcessedTableManager<
        _$MatrixSdkDriftDBImplementation,
        $OutboundGroupSessionDataTable,
        OutboundGroupSessionDataData,
        $$OutboundGroupSessionDataTableFilterComposer,
        $$OutboundGroupSessionDataTableOrderingComposer,
        $$OutboundGroupSessionDataTableProcessedTableManager,
        $$OutboundGroupSessionDataTableInsertCompanionBuilder,
        $$OutboundGroupSessionDataTableUpdateCompanionBuilder> {
  $$OutboundGroupSessionDataTableProcessedTableManager(super.$state);
}

class $$OutboundGroupSessionDataTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $OutboundGroupSessionDataTable> {
  $$OutboundGroupSessionDataTableFilterComposer(super.$state);
  ColumnFilters<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pickle => $state.composableBuilder(
      column: $state.table.pickle,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get deviceIds => $state.composableBuilder(
      column: $state.table.deviceIds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get creationTime => $state.composableBuilder(
      column: $state.table.creationTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$OutboundGroupSessionDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $OutboundGroupSessionDataTable> {
  $$OutboundGroupSessionDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get roomId => $state.composableBuilder(
      column: $state.table.roomId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pickle => $state.composableBuilder(
      column: $state.table.pickle,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get deviceIds => $state.composableBuilder(
      column: $state.table.deviceIds,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get creationTime => $state.composableBuilder(
      column: $state.table.creationTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SSSSCacheDataTableInsertCompanionBuilder = SSSSCacheDataCompanion
    Function({
  required String type,
  required String keyId,
  required String cipherText,
  required String content,
  Value<int> rowid,
});
typedef $$SSSSCacheDataTableUpdateCompanionBuilder = SSSSCacheDataCompanion
    Function({
  Value<String> type,
  Value<String> keyId,
  Value<String> cipherText,
  Value<String> content,
  Value<int> rowid,
});

class $$SSSSCacheDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $SSSSCacheDataTable,
    SSSSCacheDataData,
    $$SSSSCacheDataTableFilterComposer,
    $$SSSSCacheDataTableOrderingComposer,
    $$SSSSCacheDataTableProcessedTableManager,
    $$SSSSCacheDataTableInsertCompanionBuilder,
    $$SSSSCacheDataTableUpdateCompanionBuilder> {
  $$SSSSCacheDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $SSSSCacheDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SSSSCacheDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SSSSCacheDataTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SSSSCacheDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> type = const Value.absent(),
            Value<String> keyId = const Value.absent(),
            Value<String> cipherText = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SSSSCacheDataCompanion(
            type: type,
            keyId: keyId,
            cipherText: cipherText,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String type,
            required String keyId,
            required String cipherText,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              SSSSCacheDataCompanion.insert(
            type: type,
            keyId: keyId,
            cipherText: cipherText,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$SSSSCacheDataTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $SSSSCacheDataTable,
    SSSSCacheDataData,
    $$SSSSCacheDataTableFilterComposer,
    $$SSSSCacheDataTableOrderingComposer,
    $$SSSSCacheDataTableProcessedTableManager,
    $$SSSSCacheDataTableInsertCompanionBuilder,
    $$SSSSCacheDataTableUpdateCompanionBuilder> {
  $$SSSSCacheDataTableProcessedTableManager(super.$state);
}

class $$SSSSCacheDataTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $SSSSCacheDataTable> {
  $$SSSSCacheDataTableFilterComposer(super.$state);
  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get keyId => $state.composableBuilder(
      column: $state.table.keyId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cipherText => $state.composableBuilder(
      column: $state.table.cipherText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SSSSCacheDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $SSSSCacheDataTable> {
  $$SSSSCacheDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get keyId => $state.composableBuilder(
      column: $state.table.keyId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cipherText => $state.composableBuilder(
      column: $state.table.cipherText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$OlmSessionDataTableInsertCompanionBuilder = OlmSessionDataCompanion
    Function({
  required String identityKey,
  required String sessionId,
  required String pickle,
  required int lastReceived,
  Value<int> rowid,
});
typedef $$OlmSessionDataTableUpdateCompanionBuilder = OlmSessionDataCompanion
    Function({
  Value<String> identityKey,
  Value<String> sessionId,
  Value<String> pickle,
  Value<int> lastReceived,
  Value<int> rowid,
});

class $$OlmSessionDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $OlmSessionDataTable,
    OlmSessionDataData,
    $$OlmSessionDataTableFilterComposer,
    $$OlmSessionDataTableOrderingComposer,
    $$OlmSessionDataTableProcessedTableManager,
    $$OlmSessionDataTableInsertCompanionBuilder,
    $$OlmSessionDataTableUpdateCompanionBuilder> {
  $$OlmSessionDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $OlmSessionDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$OlmSessionDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$OlmSessionDataTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$OlmSessionDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> identityKey = const Value.absent(),
            Value<String> sessionId = const Value.absent(),
            Value<String> pickle = const Value.absent(),
            Value<int> lastReceived = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OlmSessionDataCompanion(
            identityKey: identityKey,
            sessionId: sessionId,
            pickle: pickle,
            lastReceived: lastReceived,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String identityKey,
            required String sessionId,
            required String pickle,
            required int lastReceived,
            Value<int> rowid = const Value.absent(),
          }) =>
              OlmSessionDataCompanion.insert(
            identityKey: identityKey,
            sessionId: sessionId,
            pickle: pickle,
            lastReceived: lastReceived,
            rowid: rowid,
          ),
        ));
}

class $$OlmSessionDataTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $OlmSessionDataTable,
    OlmSessionDataData,
    $$OlmSessionDataTableFilterComposer,
    $$OlmSessionDataTableOrderingComposer,
    $$OlmSessionDataTableProcessedTableManager,
    $$OlmSessionDataTableInsertCompanionBuilder,
    $$OlmSessionDataTableUpdateCompanionBuilder> {
  $$OlmSessionDataTableProcessedTableManager(super.$state);
}

class $$OlmSessionDataTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $OlmSessionDataTable> {
  $$OlmSessionDataTableFilterComposer(super.$state);
  ColumnFilters<String> get identityKey => $state.composableBuilder(
      column: $state.table.identityKey,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sessionId => $state.composableBuilder(
      column: $state.table.sessionId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pickle => $state.composableBuilder(
      column: $state.table.pickle,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get lastReceived => $state.composableBuilder(
      column: $state.table.lastReceived,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$OlmSessionDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $OlmSessionDataTable> {
  $$OlmSessionDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get identityKey => $state.composableBuilder(
      column: $state.table.identityKey,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sessionId => $state.composableBuilder(
      column: $state.table.sessionId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pickle => $state.composableBuilder(
      column: $state.table.pickle,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get lastReceived => $state.composableBuilder(
      column: $state.table.lastReceived,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SeenDeviceIdTableInsertCompanionBuilder = SeenDeviceIdCompanion
    Function({
  required String userId,
  required String deviceId,
  required String publicKeys,
  Value<int> rowid,
});
typedef $$SeenDeviceIdTableUpdateCompanionBuilder = SeenDeviceIdCompanion
    Function({
  Value<String> userId,
  Value<String> deviceId,
  Value<String> publicKeys,
  Value<int> rowid,
});

class $$SeenDeviceIdTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $SeenDeviceIdTable,
    SeenDeviceIdData,
    $$SeenDeviceIdTableFilterComposer,
    $$SeenDeviceIdTableOrderingComposer,
    $$SeenDeviceIdTableProcessedTableManager,
    $$SeenDeviceIdTableInsertCompanionBuilder,
    $$SeenDeviceIdTableUpdateCompanionBuilder> {
  $$SeenDeviceIdTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $SeenDeviceIdTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SeenDeviceIdTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SeenDeviceIdTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SeenDeviceIdTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> userId = const Value.absent(),
            Value<String> deviceId = const Value.absent(),
            Value<String> publicKeys = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SeenDeviceIdCompanion(
            userId: userId,
            deviceId: deviceId,
            publicKeys: publicKeys,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String userId,
            required String deviceId,
            required String publicKeys,
            Value<int> rowid = const Value.absent(),
          }) =>
              SeenDeviceIdCompanion.insert(
            userId: userId,
            deviceId: deviceId,
            publicKeys: publicKeys,
            rowid: rowid,
          ),
        ));
}

class $$SeenDeviceIdTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $SeenDeviceIdTable,
    SeenDeviceIdData,
    $$SeenDeviceIdTableFilterComposer,
    $$SeenDeviceIdTableOrderingComposer,
    $$SeenDeviceIdTableProcessedTableManager,
    $$SeenDeviceIdTableInsertCompanionBuilder,
    $$SeenDeviceIdTableUpdateCompanionBuilder> {
  $$SeenDeviceIdTableProcessedTableManager(super.$state);
}

class $$SeenDeviceIdTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $SeenDeviceIdTable> {
  $$SeenDeviceIdTableFilterComposer(super.$state);
  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get deviceId => $state.composableBuilder(
      column: $state.table.deviceId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get publicKeys => $state.composableBuilder(
      column: $state.table.publicKeys,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SeenDeviceIdTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $SeenDeviceIdTable> {
  $$SeenDeviceIdTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get deviceId => $state.composableBuilder(
      column: $state.table.deviceId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get publicKeys => $state.composableBuilder(
      column: $state.table.publicKeys,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SeenPublicKeyTableInsertCompanionBuilder = SeenPublicKeyCompanion
    Function({
  required String publicKey,
  required String deviceId,
  Value<int> rowid,
});
typedef $$SeenPublicKeyTableUpdateCompanionBuilder = SeenPublicKeyCompanion
    Function({
  Value<String> publicKey,
  Value<String> deviceId,
  Value<int> rowid,
});

class $$SeenPublicKeyTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $SeenPublicKeyTable,
    SeenPublicKeyData,
    $$SeenPublicKeyTableFilterComposer,
    $$SeenPublicKeyTableOrderingComposer,
    $$SeenPublicKeyTableProcessedTableManager,
    $$SeenPublicKeyTableInsertCompanionBuilder,
    $$SeenPublicKeyTableUpdateCompanionBuilder> {
  $$SeenPublicKeyTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $SeenPublicKeyTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SeenPublicKeyTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SeenPublicKeyTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SeenPublicKeyTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> publicKey = const Value.absent(),
            Value<String> deviceId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SeenPublicKeyCompanion(
            publicKey: publicKey,
            deviceId: deviceId,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String publicKey,
            required String deviceId,
            Value<int> rowid = const Value.absent(),
          }) =>
              SeenPublicKeyCompanion.insert(
            publicKey: publicKey,
            deviceId: deviceId,
            rowid: rowid,
          ),
        ));
}

class $$SeenPublicKeyTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $SeenPublicKeyTable,
    SeenPublicKeyData,
    $$SeenPublicKeyTableFilterComposer,
    $$SeenPublicKeyTableOrderingComposer,
    $$SeenPublicKeyTableProcessedTableManager,
    $$SeenPublicKeyTableInsertCompanionBuilder,
    $$SeenPublicKeyTableUpdateCompanionBuilder> {
  $$SeenPublicKeyTableProcessedTableManager(super.$state);
}

class $$SeenPublicKeyTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $SeenPublicKeyTable> {
  $$SeenPublicKeyTableFilterComposer(super.$state);
  ColumnFilters<String> get publicKey => $state.composableBuilder(
      column: $state.table.publicKey,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get deviceId => $state.composableBuilder(
      column: $state.table.deviceId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SeenPublicKeyTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $SeenPublicKeyTable> {
  $$SeenPublicKeyTableOrderingComposer(super.$state);
  ColumnOrderings<String> get publicKey => $state.composableBuilder(
      column: $state.table.publicKey,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get deviceId => $state.composableBuilder(
      column: $state.table.deviceId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$UserDeviceKeyTableInsertCompanionBuilder = UserDeviceKeyCompanion
    Function({
  required String userId,
  required String deviceId,
  required String content,
  required String lastSentMessage,
  required bool verified,
  required bool blocked,
  required int lastActive,
  Value<int> rowid,
});
typedef $$UserDeviceKeyTableUpdateCompanionBuilder = UserDeviceKeyCompanion
    Function({
  Value<String> userId,
  Value<String> deviceId,
  Value<String> content,
  Value<String> lastSentMessage,
  Value<bool> verified,
  Value<bool> blocked,
  Value<int> lastActive,
  Value<int> rowid,
});

class $$UserDeviceKeyTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $UserDeviceKeyTable,
    UserDeviceKeyData,
    $$UserDeviceKeyTableFilterComposer,
    $$UserDeviceKeyTableOrderingComposer,
    $$UserDeviceKeyTableProcessedTableManager,
    $$UserDeviceKeyTableInsertCompanionBuilder,
    $$UserDeviceKeyTableUpdateCompanionBuilder> {
  $$UserDeviceKeyTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $UserDeviceKeyTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserDeviceKeyTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserDeviceKeyTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$UserDeviceKeyTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> userId = const Value.absent(),
            Value<String> deviceId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<String> lastSentMessage = const Value.absent(),
            Value<bool> verified = const Value.absent(),
            Value<bool> blocked = const Value.absent(),
            Value<int> lastActive = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserDeviceKeyCompanion(
            userId: userId,
            deviceId: deviceId,
            content: content,
            lastSentMessage: lastSentMessage,
            verified: verified,
            blocked: blocked,
            lastActive: lastActive,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String userId,
            required String deviceId,
            required String content,
            required String lastSentMessage,
            required bool verified,
            required bool blocked,
            required int lastActive,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserDeviceKeyCompanion.insert(
            userId: userId,
            deviceId: deviceId,
            content: content,
            lastSentMessage: lastSentMessage,
            verified: verified,
            blocked: blocked,
            lastActive: lastActive,
            rowid: rowid,
          ),
        ));
}

class $$UserDeviceKeyTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $UserDeviceKeyTable,
    UserDeviceKeyData,
    $$UserDeviceKeyTableFilterComposer,
    $$UserDeviceKeyTableOrderingComposer,
    $$UserDeviceKeyTableProcessedTableManager,
    $$UserDeviceKeyTableInsertCompanionBuilder,
    $$UserDeviceKeyTableUpdateCompanionBuilder> {
  $$UserDeviceKeyTableProcessedTableManager(super.$state);
}

class $$UserDeviceKeyTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $UserDeviceKeyTable> {
  $$UserDeviceKeyTableFilterComposer(super.$state);
  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get deviceId => $state.composableBuilder(
      column: $state.table.deviceId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lastSentMessage => $state.composableBuilder(
      column: $state.table.lastSentMessage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get verified => $state.composableBuilder(
      column: $state.table.verified,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get blocked => $state.composableBuilder(
      column: $state.table.blocked,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get lastActive => $state.composableBuilder(
      column: $state.table.lastActive,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserDeviceKeyTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $UserDeviceKeyTable> {
  $$UserDeviceKeyTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get deviceId => $state.composableBuilder(
      column: $state.table.deviceId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lastSentMessage => $state.composableBuilder(
      column: $state.table.lastSentMessage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get verified => $state.composableBuilder(
      column: $state.table.verified,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get blocked => $state.composableBuilder(
      column: $state.table.blocked,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get lastActive => $state.composableBuilder(
      column: $state.table.lastActive,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$UserDeviceKeyInfoTableInsertCompanionBuilder
    = UserDeviceKeyInfoCompanion Function({
  required String userId,
  required bool outdated,
  Value<int> rowid,
});
typedef $$UserDeviceKeyInfoTableUpdateCompanionBuilder
    = UserDeviceKeyInfoCompanion Function({
  Value<String> userId,
  Value<bool> outdated,
  Value<int> rowid,
});

class $$UserDeviceKeyInfoTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $UserDeviceKeyInfoTable,
    UserDeviceKeyInfoData,
    $$UserDeviceKeyInfoTableFilterComposer,
    $$UserDeviceKeyInfoTableOrderingComposer,
    $$UserDeviceKeyInfoTableProcessedTableManager,
    $$UserDeviceKeyInfoTableInsertCompanionBuilder,
    $$UserDeviceKeyInfoTableUpdateCompanionBuilder> {
  $$UserDeviceKeyInfoTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $UserDeviceKeyInfoTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserDeviceKeyInfoTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$UserDeviceKeyInfoTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$UserDeviceKeyInfoTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> userId = const Value.absent(),
            Value<bool> outdated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserDeviceKeyInfoCompanion(
            userId: userId,
            outdated: outdated,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String userId,
            required bool outdated,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserDeviceKeyInfoCompanion.insert(
            userId: userId,
            outdated: outdated,
            rowid: rowid,
          ),
        ));
}

class $$UserDeviceKeyInfoTableProcessedTableManager
    extends ProcessedTableManager<
        _$MatrixSdkDriftDBImplementation,
        $UserDeviceKeyInfoTable,
        UserDeviceKeyInfoData,
        $$UserDeviceKeyInfoTableFilterComposer,
        $$UserDeviceKeyInfoTableOrderingComposer,
        $$UserDeviceKeyInfoTableProcessedTableManager,
        $$UserDeviceKeyInfoTableInsertCompanionBuilder,
        $$UserDeviceKeyInfoTableUpdateCompanionBuilder> {
  $$UserDeviceKeyInfoTableProcessedTableManager(super.$state);
}

class $$UserDeviceKeyInfoTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $UserDeviceKeyInfoTable> {
  $$UserDeviceKeyInfoTableFilterComposer(super.$state);
  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get outdated => $state.composableBuilder(
      column: $state.table.outdated,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserDeviceKeyInfoTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $UserDeviceKeyInfoTable> {
  $$UserDeviceKeyInfoTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get outdated => $state.composableBuilder(
      column: $state.table.outdated,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$UserCrossSigningKeyTableInsertCompanionBuilder
    = UserCrossSigningKeyCompanion Function({
  required String userId,
  required String publicKey,
  Value<String?> content,
  required bool verified,
  required bool blocked,
  Value<int> rowid,
});
typedef $$UserCrossSigningKeyTableUpdateCompanionBuilder
    = UserCrossSigningKeyCompanion Function({
  Value<String> userId,
  Value<String> publicKey,
  Value<String?> content,
  Value<bool> verified,
  Value<bool> blocked,
  Value<int> rowid,
});

class $$UserCrossSigningKeyTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $UserCrossSigningKeyTable,
    UserCrossSigningKeyData,
    $$UserCrossSigningKeyTableFilterComposer,
    $$UserCrossSigningKeyTableOrderingComposer,
    $$UserCrossSigningKeyTableProcessedTableManager,
    $$UserCrossSigningKeyTableInsertCompanionBuilder,
    $$UserCrossSigningKeyTableUpdateCompanionBuilder> {
  $$UserCrossSigningKeyTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $UserCrossSigningKeyTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$UserCrossSigningKeyTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$UserCrossSigningKeyTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$UserCrossSigningKeyTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> userId = const Value.absent(),
            Value<String> publicKey = const Value.absent(),
            Value<String?> content = const Value.absent(),
            Value<bool> verified = const Value.absent(),
            Value<bool> blocked = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserCrossSigningKeyCompanion(
            userId: userId,
            publicKey: publicKey,
            content: content,
            verified: verified,
            blocked: blocked,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String userId,
            required String publicKey,
            Value<String?> content = const Value.absent(),
            required bool verified,
            required bool blocked,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserCrossSigningKeyCompanion.insert(
            userId: userId,
            publicKey: publicKey,
            content: content,
            verified: verified,
            blocked: blocked,
            rowid: rowid,
          ),
        ));
}

class $$UserCrossSigningKeyTableProcessedTableManager
    extends ProcessedTableManager<
        _$MatrixSdkDriftDBImplementation,
        $UserCrossSigningKeyTable,
        UserCrossSigningKeyData,
        $$UserCrossSigningKeyTableFilterComposer,
        $$UserCrossSigningKeyTableOrderingComposer,
        $$UserCrossSigningKeyTableProcessedTableManager,
        $$UserCrossSigningKeyTableInsertCompanionBuilder,
        $$UserCrossSigningKeyTableUpdateCompanionBuilder> {
  $$UserCrossSigningKeyTableProcessedTableManager(super.$state);
}

class $$UserCrossSigningKeyTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $UserCrossSigningKeyTable> {
  $$UserCrossSigningKeyTableFilterComposer(super.$state);
  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get publicKey => $state.composableBuilder(
      column: $state.table.publicKey,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get verified => $state.composableBuilder(
      column: $state.table.verified,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get blocked => $state.composableBuilder(
      column: $state.table.blocked,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserCrossSigningKeyTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $UserCrossSigningKeyTable> {
  $$UserCrossSigningKeyTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get publicKey => $state.composableBuilder(
      column: $state.table.publicKey,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get verified => $state.composableBuilder(
      column: $state.table.verified,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get blocked => $state.composableBuilder(
      column: $state.table.blocked,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$PresenceDataTableInsertCompanionBuilder = PresenceDataCompanion
    Function({
  required String userId,
  required String presence,
  Value<int> rowid,
});
typedef $$PresenceDataTableUpdateCompanionBuilder = PresenceDataCompanion
    Function({
  Value<String> userId,
  Value<String> presence,
  Value<int> rowid,
});

class $$PresenceDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $PresenceDataTable,
    PresenceDataData,
    $$PresenceDataTableFilterComposer,
    $$PresenceDataTableOrderingComposer,
    $$PresenceDataTableProcessedTableManager,
    $$PresenceDataTableInsertCompanionBuilder,
    $$PresenceDataTableUpdateCompanionBuilder> {
  $$PresenceDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $PresenceDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PresenceDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PresenceDataTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$PresenceDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> userId = const Value.absent(),
            Value<String> presence = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PresenceDataCompanion(
            userId: userId,
            presence: presence,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String userId,
            required String presence,
            Value<int> rowid = const Value.absent(),
          }) =>
              PresenceDataCompanion.insert(
            userId: userId,
            presence: presence,
            rowid: rowid,
          ),
        ));
}

class $$PresenceDataTableProcessedTableManager extends ProcessedTableManager<
    _$MatrixSdkDriftDBImplementation,
    $PresenceDataTable,
    PresenceDataData,
    $$PresenceDataTableFilterComposer,
    $$PresenceDataTableOrderingComposer,
    $$PresenceDataTableProcessedTableManager,
    $$PresenceDataTableInsertCompanionBuilder,
    $$PresenceDataTableUpdateCompanionBuilder> {
  $$PresenceDataTableProcessedTableManager(super.$state);
}

class $$PresenceDataTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $PresenceDataTable> {
  $$PresenceDataTableFilterComposer(super.$state);
  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get presence => $state.composableBuilder(
      column: $state.table.presence,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PresenceDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $PresenceDataTable> {
  $$PresenceDataTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get presence => $state.composableBuilder(
      column: $state.table.presence,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CachedProfileDataTableInsertCompanionBuilder
    = CachedProfileDataCompanion Function({
  required String userId,
  required String content,
  Value<int> rowid,
});
typedef $$CachedProfileDataTableUpdateCompanionBuilder
    = CachedProfileDataCompanion Function({
  Value<String> userId,
  Value<String> content,
  Value<int> rowid,
});

class $$CachedProfileDataTableTableManager extends RootTableManager<
    _$MatrixSdkDriftDBImplementation,
    $CachedProfileDataTable,
    CachedProfileDataData,
    $$CachedProfileDataTableFilterComposer,
    $$CachedProfileDataTableOrderingComposer,
    $$CachedProfileDataTableProcessedTableManager,
    $$CachedProfileDataTableInsertCompanionBuilder,
    $$CachedProfileDataTableUpdateCompanionBuilder> {
  $$CachedProfileDataTableTableManager(
      _$MatrixSdkDriftDBImplementation db, $CachedProfileDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CachedProfileDataTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$CachedProfileDataTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$CachedProfileDataTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> userId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CachedProfileDataCompanion(
            userId: userId,
            content: content,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String userId,
            required String content,
            Value<int> rowid = const Value.absent(),
          }) =>
              CachedProfileDataCompanion.insert(
            userId: userId,
            content: content,
            rowid: rowid,
          ),
        ));
}

class $$CachedProfileDataTableProcessedTableManager
    extends ProcessedTableManager<
        _$MatrixSdkDriftDBImplementation,
        $CachedProfileDataTable,
        CachedProfileDataData,
        $$CachedProfileDataTableFilterComposer,
        $$CachedProfileDataTableOrderingComposer,
        $$CachedProfileDataTableProcessedTableManager,
        $$CachedProfileDataTableInsertCompanionBuilder,
        $$CachedProfileDataTableUpdateCompanionBuilder> {
  $$CachedProfileDataTableProcessedTableManager(super.$state);
}

class $$CachedProfileDataTableFilterComposer extends FilterComposer<
    _$MatrixSdkDriftDBImplementation, $CachedProfileDataTable> {
  $$CachedProfileDataTableFilterComposer(super.$state);
  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CachedProfileDataTableOrderingComposer extends OrderingComposer<
    _$MatrixSdkDriftDBImplementation, $CachedProfileDataTable> {
  $$CachedProfileDataTableOrderingComposer(super.$state);
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
  $$InboundGroupSessionTableTableManager get inboundGroupSession =>
      $$InboundGroupSessionTableTableManager(_db, _db.inboundGroupSession);
  $$OutboundGroupSessionDataTableTableManager get outboundGroupSessionData =>
      $$OutboundGroupSessionDataTableTableManager(
          _db, _db.outboundGroupSessionData);
  $$SSSSCacheDataTableTableManager get sSSSCacheData =>
      $$SSSSCacheDataTableTableManager(_db, _db.sSSSCacheData);
  $$OlmSessionDataTableTableManager get olmSessionData =>
      $$OlmSessionDataTableTableManager(_db, _db.olmSessionData);
  $$SeenDeviceIdTableTableManager get seenDeviceId =>
      $$SeenDeviceIdTableTableManager(_db, _db.seenDeviceId);
  $$SeenPublicKeyTableTableManager get seenPublicKey =>
      $$SeenPublicKeyTableTableManager(_db, _db.seenPublicKey);
  $$UserDeviceKeyTableTableManager get userDeviceKey =>
      $$UserDeviceKeyTableTableManager(_db, _db.userDeviceKey);
  $$UserDeviceKeyInfoTableTableManager get userDeviceKeyInfo =>
      $$UserDeviceKeyInfoTableTableManager(_db, _db.userDeviceKeyInfo);
  $$UserCrossSigningKeyTableTableManager get userCrossSigningKey =>
      $$UserCrossSigningKeyTableTableManager(_db, _db.userCrossSigningKey);
  $$PresenceDataTableTableManager get presenceData =>
      $$PresenceDataTableTableManager(_db, _db.presenceData);
  $$CachedProfileDataTableTableManager get cachedProfileData =>
      $$CachedProfileDataTableTableManager(_db, _db.cachedProfileData);
}
