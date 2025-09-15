
//dart run build_runner build --delete-conflicting-outputs 

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill.freezed.dart';
part 'bill.g.dart';

@freezed
abstract class Bill with _$Bill {
  const factory Bill({
    int? id,
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
    Amounts? amounts,
  }) = _Bill;

  factory Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);
}

@freezed
abstract class Amounts with _$Amounts {
  const factory Amounts({
    int? due,
    int? refund,
    int? adjustment,
  }) = _Amounts;

  factory Amounts.fromJson(Map<String, dynamic> json) => _$AmountsFromJson(json);
}
