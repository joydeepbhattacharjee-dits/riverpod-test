// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bill {
  int? get id;
  String? get uid;
  String? get section;
  DateTime? get billDate;
  int? get patientId;
  String? get patientName;
  String? get phone;
  String? get doctorName;
  String? get total;
  String? get grandTotal;
  String? get discountAmount;
  String? get totalPayment;
  String? get refundAmount;
  String? get dueAmount;
  dynamic get cradituseBillAmount;
  String? get refBy;
  dynamic get marBy;
  dynamic get proBy;
  int? get billStatus;
  String? get creDate;
  int? get dueAmountTotal;
  int? get refundAmountTotal;
  int? get adjustmentAmountTotal;
  Amounts? get amounts;

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BillCopyWith<Bill> get copyWith =>
      _$BillCopyWithImpl<Bill>(this as Bill, _$identity);

  /// Serializes this Bill to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Bill &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.billDate, billDate) ||
                other.billDate == billDate) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.dueAmount, dueAmount) ||
                other.dueAmount == dueAmount) &&
            const DeepCollectionEquality()
                .equals(other.cradituseBillAmount, cradituseBillAmount) &&
            (identical(other.refBy, refBy) || other.refBy == refBy) &&
            const DeepCollectionEquality().equals(other.marBy, marBy) &&
            const DeepCollectionEquality().equals(other.proBy, proBy) &&
            (identical(other.billStatus, billStatus) ||
                other.billStatus == billStatus) &&
            (identical(other.creDate, creDate) || other.creDate == creDate) &&
            (identical(other.dueAmountTotal, dueAmountTotal) ||
                other.dueAmountTotal == dueAmountTotal) &&
            (identical(other.refundAmountTotal, refundAmountTotal) ||
                other.refundAmountTotal == refundAmountTotal) &&
            (identical(other.adjustmentAmountTotal, adjustmentAmountTotal) ||
                other.adjustmentAmountTotal == adjustmentAmountTotal) &&
            (identical(other.amounts, amounts) || other.amounts == amounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uid,
        section,
        billDate,
        patientId,
        patientName,
        phone,
        doctorName,
        total,
        grandTotal,
        discountAmount,
        totalPayment,
        refundAmount,
        dueAmount,
        const DeepCollectionEquality().hash(cradituseBillAmount),
        refBy,
        const DeepCollectionEquality().hash(marBy),
        const DeepCollectionEquality().hash(proBy),
        billStatus,
        creDate,
        dueAmountTotal,
        refundAmountTotal,
        adjustmentAmountTotal,
        amounts
      ]);

  @override
  String toString() {
    return 'Bill(id: $id, uid: $uid, section: $section, billDate: $billDate, patientId: $patientId, patientName: $patientName, phone: $phone, doctorName: $doctorName, total: $total, grandTotal: $grandTotal, discountAmount: $discountAmount, totalPayment: $totalPayment, refundAmount: $refundAmount, dueAmount: $dueAmount, cradituseBillAmount: $cradituseBillAmount, refBy: $refBy, marBy: $marBy, proBy: $proBy, billStatus: $billStatus, creDate: $creDate, dueAmountTotal: $dueAmountTotal, refundAmountTotal: $refundAmountTotal, adjustmentAmountTotal: $adjustmentAmountTotal, amounts: $amounts)';
  }
}

/// @nodoc
abstract mixin class $BillCopyWith<$Res> {
  factory $BillCopyWith(Bill value, $Res Function(Bill) _then) =
      _$BillCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? uid,
      String? section,
      DateTime? billDate,
      int? patientId,
      String? patientName,
      String? phone,
      String? doctorName,
      String? total,
      String? grandTotal,
      String? discountAmount,
      String? totalPayment,
      String? refundAmount,
      String? dueAmount,
      dynamic cradituseBillAmount,
      String? refBy,
      dynamic marBy,
      dynamic proBy,
      int? billStatus,
      String? creDate,
      int? dueAmountTotal,
      int? refundAmountTotal,
      int? adjustmentAmountTotal,
      Amounts? amounts});

  $AmountsCopyWith<$Res>? get amounts;
}

/// @nodoc
class _$BillCopyWithImpl<$Res> implements $BillCopyWith<$Res> {
  _$BillCopyWithImpl(this._self, this._then);

  final Bill _self;
  final $Res Function(Bill) _then;

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? section = freezed,
    Object? billDate = freezed,
    Object? patientId = freezed,
    Object? patientName = freezed,
    Object? phone = freezed,
    Object? doctorName = freezed,
    Object? total = freezed,
    Object? grandTotal = freezed,
    Object? discountAmount = freezed,
    Object? totalPayment = freezed,
    Object? refundAmount = freezed,
    Object? dueAmount = freezed,
    Object? cradituseBillAmount = freezed,
    Object? refBy = freezed,
    Object? marBy = freezed,
    Object? proBy = freezed,
    Object? billStatus = freezed,
    Object? creDate = freezed,
    Object? dueAmountTotal = freezed,
    Object? refundAmountTotal = freezed,
    Object? adjustmentAmountTotal = freezed,
    Object? amounts = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _self.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      billDate: freezed == billDate
          ? _self.billDate
          : billDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      patientId: freezed == patientId
          ? _self.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      patientName: freezed == patientName
          ? _self.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      grandTotal: freezed == grandTotal
          ? _self.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPayment: freezed == totalPayment
          ? _self.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      refundAmount: freezed == refundAmount
          ? _self.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      dueAmount: freezed == dueAmount
          ? _self.dueAmount
          : dueAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      cradituseBillAmount: freezed == cradituseBillAmount
          ? _self.cradituseBillAmount
          : cradituseBillAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refBy: freezed == refBy
          ? _self.refBy
          : refBy // ignore: cast_nullable_to_non_nullable
              as String?,
      marBy: freezed == marBy
          ? _self.marBy
          : marBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      proBy: freezed == proBy
          ? _self.proBy
          : proBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      billStatus: freezed == billStatus
          ? _self.billStatus
          : billStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      creDate: freezed == creDate
          ? _self.creDate
          : creDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dueAmountTotal: freezed == dueAmountTotal
          ? _self.dueAmountTotal
          : dueAmountTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      refundAmountTotal: freezed == refundAmountTotal
          ? _self.refundAmountTotal
          : refundAmountTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      adjustmentAmountTotal: freezed == adjustmentAmountTotal
          ? _self.adjustmentAmountTotal
          : adjustmentAmountTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      amounts: freezed == amounts
          ? _self.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as Amounts?,
    ));
  }

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AmountsCopyWith<$Res>? get amounts {
    if (_self.amounts == null) {
      return null;
    }

    return $AmountsCopyWith<$Res>(_self.amounts!, (value) {
      return _then(_self.copyWith(amounts: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Bill implements Bill {
  const _Bill(
      {this.id,
      this.uid,
      this.section,
      this.billDate,
      this.patientId,
      this.patientName,
      this.phone,
      this.doctorName,
      this.total,
      this.grandTotal,
      this.discountAmount,
      this.totalPayment,
      this.refundAmount,
      this.dueAmount,
      this.cradituseBillAmount,
      this.refBy,
      this.marBy,
      this.proBy,
      this.billStatus,
      this.creDate,
      this.dueAmountTotal,
      this.refundAmountTotal,
      this.adjustmentAmountTotal,
      this.amounts});
  factory _Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);

  @override
  final int? id;
  @override
  final String? uid;
  @override
  final String? section;
  @override
  final DateTime? billDate;
  @override
  final int? patientId;
  @override
  final String? patientName;
  @override
  final String? phone;
  @override
  final String? doctorName;
  @override
  final String? total;
  @override
  final String? grandTotal;
  @override
  final String? discountAmount;
  @override
  final String? totalPayment;
  @override
  final String? refundAmount;
  @override
  final String? dueAmount;
  @override
  final dynamic cradituseBillAmount;
  @override
  final String? refBy;
  @override
  final dynamic marBy;
  @override
  final dynamic proBy;
  @override
  final int? billStatus;
  @override
  final String? creDate;
  @override
  final int? dueAmountTotal;
  @override
  final int? refundAmountTotal;
  @override
  final int? adjustmentAmountTotal;
  @override
  final Amounts? amounts;

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BillCopyWith<_Bill> get copyWith =>
      __$BillCopyWithImpl<_Bill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BillToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bill &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.billDate, billDate) ||
                other.billDate == billDate) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.dueAmount, dueAmount) ||
                other.dueAmount == dueAmount) &&
            const DeepCollectionEquality()
                .equals(other.cradituseBillAmount, cradituseBillAmount) &&
            (identical(other.refBy, refBy) || other.refBy == refBy) &&
            const DeepCollectionEquality().equals(other.marBy, marBy) &&
            const DeepCollectionEquality().equals(other.proBy, proBy) &&
            (identical(other.billStatus, billStatus) ||
                other.billStatus == billStatus) &&
            (identical(other.creDate, creDate) || other.creDate == creDate) &&
            (identical(other.dueAmountTotal, dueAmountTotal) ||
                other.dueAmountTotal == dueAmountTotal) &&
            (identical(other.refundAmountTotal, refundAmountTotal) ||
                other.refundAmountTotal == refundAmountTotal) &&
            (identical(other.adjustmentAmountTotal, adjustmentAmountTotal) ||
                other.adjustmentAmountTotal == adjustmentAmountTotal) &&
            (identical(other.amounts, amounts) || other.amounts == amounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uid,
        section,
        billDate,
        patientId,
        patientName,
        phone,
        doctorName,
        total,
        grandTotal,
        discountAmount,
        totalPayment,
        refundAmount,
        dueAmount,
        const DeepCollectionEquality().hash(cradituseBillAmount),
        refBy,
        const DeepCollectionEquality().hash(marBy),
        const DeepCollectionEquality().hash(proBy),
        billStatus,
        creDate,
        dueAmountTotal,
        refundAmountTotal,
        adjustmentAmountTotal,
        amounts
      ]);

  @override
  String toString() {
    return 'Bill(id: $id, uid: $uid, section: $section, billDate: $billDate, patientId: $patientId, patientName: $patientName, phone: $phone, doctorName: $doctorName, total: $total, grandTotal: $grandTotal, discountAmount: $discountAmount, totalPayment: $totalPayment, refundAmount: $refundAmount, dueAmount: $dueAmount, cradituseBillAmount: $cradituseBillAmount, refBy: $refBy, marBy: $marBy, proBy: $proBy, billStatus: $billStatus, creDate: $creDate, dueAmountTotal: $dueAmountTotal, refundAmountTotal: $refundAmountTotal, adjustmentAmountTotal: $adjustmentAmountTotal, amounts: $amounts)';
  }
}

/// @nodoc
abstract mixin class _$BillCopyWith<$Res> implements $BillCopyWith<$Res> {
  factory _$BillCopyWith(_Bill value, $Res Function(_Bill) _then) =
      __$BillCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uid,
      String? section,
      DateTime? billDate,
      int? patientId,
      String? patientName,
      String? phone,
      String? doctorName,
      String? total,
      String? grandTotal,
      String? discountAmount,
      String? totalPayment,
      String? refundAmount,
      String? dueAmount,
      dynamic cradituseBillAmount,
      String? refBy,
      dynamic marBy,
      dynamic proBy,
      int? billStatus,
      String? creDate,
      int? dueAmountTotal,
      int? refundAmountTotal,
      int? adjustmentAmountTotal,
      Amounts? amounts});

  @override
  $AmountsCopyWith<$Res>? get amounts;
}

/// @nodoc
class __$BillCopyWithImpl<$Res> implements _$BillCopyWith<$Res> {
  __$BillCopyWithImpl(this._self, this._then);

  final _Bill _self;
  final $Res Function(_Bill) _then;

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? section = freezed,
    Object? billDate = freezed,
    Object? patientId = freezed,
    Object? patientName = freezed,
    Object? phone = freezed,
    Object? doctorName = freezed,
    Object? total = freezed,
    Object? grandTotal = freezed,
    Object? discountAmount = freezed,
    Object? totalPayment = freezed,
    Object? refundAmount = freezed,
    Object? dueAmount = freezed,
    Object? cradituseBillAmount = freezed,
    Object? refBy = freezed,
    Object? marBy = freezed,
    Object? proBy = freezed,
    Object? billStatus = freezed,
    Object? creDate = freezed,
    Object? dueAmountTotal = freezed,
    Object? refundAmountTotal = freezed,
    Object? adjustmentAmountTotal = freezed,
    Object? amounts = freezed,
  }) {
    return _then(_Bill(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _self.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      billDate: freezed == billDate
          ? _self.billDate
          : billDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      patientId: freezed == patientId
          ? _self.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      patientName: freezed == patientName
          ? _self.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      grandTotal: freezed == grandTotal
          ? _self.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPayment: freezed == totalPayment
          ? _self.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      refundAmount: freezed == refundAmount
          ? _self.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      dueAmount: freezed == dueAmount
          ? _self.dueAmount
          : dueAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      cradituseBillAmount: freezed == cradituseBillAmount
          ? _self.cradituseBillAmount
          : cradituseBillAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refBy: freezed == refBy
          ? _self.refBy
          : refBy // ignore: cast_nullable_to_non_nullable
              as String?,
      marBy: freezed == marBy
          ? _self.marBy
          : marBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      proBy: freezed == proBy
          ? _self.proBy
          : proBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      billStatus: freezed == billStatus
          ? _self.billStatus
          : billStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      creDate: freezed == creDate
          ? _self.creDate
          : creDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dueAmountTotal: freezed == dueAmountTotal
          ? _self.dueAmountTotal
          : dueAmountTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      refundAmountTotal: freezed == refundAmountTotal
          ? _self.refundAmountTotal
          : refundAmountTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      adjustmentAmountTotal: freezed == adjustmentAmountTotal
          ? _self.adjustmentAmountTotal
          : adjustmentAmountTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      amounts: freezed == amounts
          ? _self.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as Amounts?,
    ));
  }

  /// Create a copy of Bill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AmountsCopyWith<$Res>? get amounts {
    if (_self.amounts == null) {
      return null;
    }

    return $AmountsCopyWith<$Res>(_self.amounts!, (value) {
      return _then(_self.copyWith(amounts: value));
    });
  }
}

/// @nodoc
mixin _$Amounts {
  int? get due;
  int? get refund;
  int? get adjustment;

  /// Create a copy of Amounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AmountsCopyWith<Amounts> get copyWith =>
      _$AmountsCopyWithImpl<Amounts>(this as Amounts, _$identity);

  /// Serializes this Amounts to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Amounts &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.refund, refund) || other.refund == refund) &&
            (identical(other.adjustment, adjustment) ||
                other.adjustment == adjustment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, due, refund, adjustment);

  @override
  String toString() {
    return 'Amounts(due: $due, refund: $refund, adjustment: $adjustment)';
  }
}

/// @nodoc
abstract mixin class $AmountsCopyWith<$Res> {
  factory $AmountsCopyWith(Amounts value, $Res Function(Amounts) _then) =
      _$AmountsCopyWithImpl;
  @useResult
  $Res call({int? due, int? refund, int? adjustment});
}

/// @nodoc
class _$AmountsCopyWithImpl<$Res> implements $AmountsCopyWith<$Res> {
  _$AmountsCopyWithImpl(this._self, this._then);

  final Amounts _self;
  final $Res Function(Amounts) _then;

  /// Create a copy of Amounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? due = freezed,
    Object? refund = freezed,
    Object? adjustment = freezed,
  }) {
    return _then(_self.copyWith(
      due: freezed == due
          ? _self.due
          : due // ignore: cast_nullable_to_non_nullable
              as int?,
      refund: freezed == refund
          ? _self.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as int?,
      adjustment: freezed == adjustment
          ? _self.adjustment
          : adjustment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Amounts implements Amounts {
  const _Amounts({this.due, this.refund, this.adjustment});
  factory _Amounts.fromJson(Map<String, dynamic> json) =>
      _$AmountsFromJson(json);

  @override
  final int? due;
  @override
  final int? refund;
  @override
  final int? adjustment;

  /// Create a copy of Amounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AmountsCopyWith<_Amounts> get copyWith =>
      __$AmountsCopyWithImpl<_Amounts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AmountsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Amounts &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.refund, refund) || other.refund == refund) &&
            (identical(other.adjustment, adjustment) ||
                other.adjustment == adjustment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, due, refund, adjustment);

  @override
  String toString() {
    return 'Amounts(due: $due, refund: $refund, adjustment: $adjustment)';
  }
}

/// @nodoc
abstract mixin class _$AmountsCopyWith<$Res> implements $AmountsCopyWith<$Res> {
  factory _$AmountsCopyWith(_Amounts value, $Res Function(_Amounts) _then) =
      __$AmountsCopyWithImpl;
  @override
  @useResult
  $Res call({int? due, int? refund, int? adjustment});
}

/// @nodoc
class __$AmountsCopyWithImpl<$Res> implements _$AmountsCopyWith<$Res> {
  __$AmountsCopyWithImpl(this._self, this._then);

  final _Amounts _self;
  final $Res Function(_Amounts) _then;

  /// Create a copy of Amounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? due = freezed,
    Object? refund = freezed,
    Object? adjustment = freezed,
  }) {
    return _then(_Amounts(
      due: freezed == due
          ? _self.due
          : due // ignore: cast_nullable_to_non_nullable
              as int?,
      refund: freezed == refund
          ? _self.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as int?,
      adjustment: freezed == adjustment
          ? _self.adjustment
          : adjustment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
