// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bill _$BillFromJson(Map<String, dynamic> json) => _Bill(
      id: (json['id'] as num?)?.toInt(),
      uid: json['uid'] as String?,
      section: json['section'] as String?,
      billDate: json['billDate'] == null
          ? null
          : DateTime.parse(json['billDate'] as String),
      patientId: (json['patientId'] as num?)?.toInt(),
      patientName: json['patientName'] as String?,
      phone: json['phone'] as String?,
      doctorName: json['doctorName'] as String?,
      total: json['total'] as String?,
      grandTotal: json['grandTotal'] as String?,
      discountAmount: json['discountAmount'] as String?,
      totalPayment: json['totalPayment'] as String?,
      refundAmount: json['refundAmount'] as String?,
      dueAmount: json['dueAmount'] as String?,
      cradituseBillAmount: json['cradituseBillAmount'],
      refBy: json['refBy'] as String?,
      marBy: json['marBy'],
      proBy: json['proBy'],
      billStatus: (json['billStatus'] as num?)?.toInt(),
      creDate: json['creDate'] as String?,
      dueAmountTotal: (json['dueAmountTotal'] as num?)?.toInt(),
      refundAmountTotal: (json['refundAmountTotal'] as num?)?.toInt(),
      adjustmentAmountTotal: (json['adjustmentAmountTotal'] as num?)?.toInt(),
      amounts: json['amounts'] == null
          ? null
          : Amounts.fromJson(json['amounts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BillToJson(_Bill instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'section': instance.section,
      'billDate': instance.billDate?.toIso8601String(),
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'phone': instance.phone,
      'doctorName': instance.doctorName,
      'total': instance.total,
      'grandTotal': instance.grandTotal,
      'discountAmount': instance.discountAmount,
      'totalPayment': instance.totalPayment,
      'refundAmount': instance.refundAmount,
      'dueAmount': instance.dueAmount,
      'cradituseBillAmount': instance.cradituseBillAmount,
      'refBy': instance.refBy,
      'marBy': instance.marBy,
      'proBy': instance.proBy,
      'billStatus': instance.billStatus,
      'creDate': instance.creDate,
      'dueAmountTotal': instance.dueAmountTotal,
      'refundAmountTotal': instance.refundAmountTotal,
      'adjustmentAmountTotal': instance.adjustmentAmountTotal,
      'amounts': instance.amounts,
    };

_Amounts _$AmountsFromJson(Map<String, dynamic> json) => _Amounts(
      due: (json['due'] as num?)?.toInt(),
      refund: (json['refund'] as num?)?.toInt(),
      adjustment: (json['adjustment'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AmountsToJson(_Amounts instance) => <String, dynamic>{
      'due': instance.due,
      'refund': instance.refund,
      'adjustment': instance.adjustment,
    };
