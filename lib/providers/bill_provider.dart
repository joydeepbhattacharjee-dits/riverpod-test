import 'package:dio/dio.dart';
import 'package:flutter_app/models/bill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final billProvider = FutureProvider((ref) async {
  const token =
      "";
  final dio = Dio(BaseOptions(
    baseUrl: "https://devanthims.in/rainbow/api/",
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  ));

  final response = await dio.post(
    "/billing-reports",
    data: {
      "page": 1,
      "from_date": "2025-09-01",
      "to_date": "2025-09-05",
    },
    options: Options(
      headers: {
        "Authorization": "Bearer $token",
      },
    ),
  );

  final bills = (response.data['data']['data'] as List)
      .map((e) => Bill.fromJson(e as Map<String, dynamic>))
      .toList();

  return bills;
});
