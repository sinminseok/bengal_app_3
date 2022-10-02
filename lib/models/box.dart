import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';
part 'box.g.dart';

@JsonSerializable()
class BoxNft {
  final int id;
  final int grade;
  final double price;
  final int carNftId;
  final List<int> carGradeList;

  BoxNft(
      this.id,
      this.grade,
      this.price,
      this.carNftId,
      this.carGradeList
      );

  factory BoxNft.fromJson(Map<String, dynamic> json) => _$BoxNftFromJson(json);
  Map<String, dynamic> toJson() => _$BoxNftToJson(this);

  String getBoxGradeString() {
    switch (grade) {
      case 1: return "normal";
      case 2: return "rare";
      case 3: return "elite";
      case 4: return "epic";
      case 5: return "ultimate";
      default: return "normal";
    }
  }

  Color getBoxGradeColor() {
    switch (grade) {
      case 1: return const Color(0xFF9196A5);
      case 2: return const Color(0xFF5D9CEC);
      case 3: return const Color(0xFFFBBC41);
      case 4: return const Color(0xFF7564E5);
      case 5: return const Color(0xFFDE4460);
      default: return const Color(0xFF9196A5);
    }
  }
}

enum BoxSortType {
  highestGrade,
  lowestGrade,
}

extension BoxSortTypeExtension on BoxSortType {
  String get getString {
    switch (this) {
      case BoxSortType.highestGrade:
        return "Highest Grade";
      case BoxSortType.lowestGrade:
        return "Lowest Grade";
      default:
        return "";
    }
  }
}

extension BoxSortStringExtension on String {
  BoxSortType get getBoxSortType {
    switch (this) {
      case "Highest Grade":
        return BoxSortType.highestGrade;
      case "Lowest Grade":
        return BoxSortType.lowestGrade;
      default:
        return BoxSortType.highestGrade;
    }
  }
}

@JsonSerializable()
class BoxNftList {
  final List<BoxNft> list;

  BoxNftList(this.list);

  factory BoxNftList.fromJson(Map<String, dynamic> json) => _$BoxNftListFromJson(json);
  Map<String, dynamic> toJson() => _$BoxNftListToJson(this);

  void sort(BoxSortType sortType) {
    switch (sortType) {
      case BoxSortType.highestGrade:
        list.sort((a, b) => b.grade.compareTo(a.grade));
        break;
      case BoxSortType.lowestGrade:
        list.sort((a, b) => a.grade.compareTo(b.grade));
        break;
      default:
        break;
    }
  }

  static List<String> getSortItems() {
    return BoxSortType.values.map((e) => e.getString).toList();
  }
}
