import 'package:json_annotation/json_annotation.dart';
import '../types/common.dart';
part 'transfer.g.dart';

@JsonSerializable()
class TransferHistoryItem {
  final int id;
  final TransferType transferType;
  final CoinType coinType;
  final double amount;
  final DateTime createdAt;

  TransferHistoryItem(
      this.id,
      this.transferType,
      this.coinType,
      this.amount,
      this.createdAt,
      );

  factory TransferHistoryItem.fromJson(Map<String, dynamic> json) => _$TransferHistoryItemFromJson(json);
  Map<String, dynamic> toJson() => _$TransferHistoryItemToJson(this);
}

@JsonSerializable()
class TransferHistoryList {
  final List<TransferHistoryItem> list;

  TransferHistoryList(this.list);

  factory TransferHistoryList.fromJson(Map<String, dynamic> json) => _$TransferHistoryListFromJson(json);
  Map<String, dynamic> toJson() => _$TransferHistoryListToJson(this);

  void debit(CoinType coinType, double amount) {
    list.add(TransferHistoryItem(
        DateTime.now().millisecondsSinceEpoch,
        TransferType.Received,
        coinType,
        amount,
        DateTime.now()
    ));
  }

  void credit(CoinType coinType, double amount) {
    list.add(TransferHistoryItem(
        DateTime.now().millisecondsSinceEpoch,
        TransferType.Sent,
        coinType,
        amount,
        DateTime.now()
    ));
  }
}
