// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  final NotificationData? data;
  final String? message;
  final int? statusCode;
  final dynamic errors;

  NotificationModel({
    this.data,
    this.message,
    this.statusCode,
    this.errors,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
    data: json["Data"] == null ? null : NotificationData.fromJson(json["Data"]),
    message: json["Message"],
    statusCode: json["StatusCode"],
    errors: json["Errors"],
  );

  Map<String, dynamic> toJson() => {
    "Data": data?.toJson(),
    "Message": message,
    "StatusCode": statusCode,
    "Errors": errors,
  };
}

class NotificationData {
  final int? currentPage;
  final int? totalPages;
  final int? totalItems;
  final int? itemsPerPage;
  final List<Item>? items;

  NotificationData({
    this.currentPage,
    this.totalPages,
    this.totalItems,
    this.itemsPerPage,
    this.items,
  });

  factory NotificationData.fromJson(Map<String, dynamic> json) => NotificationData(
    currentPage: json["CurrentPage"],
    totalPages: json["TotalPages"],
    totalItems: json["TotalItems"],
    itemsPerPage: json["ItemsPerPage"],
    items: json["Items"] == null ? [] : List<Item>.from(json["Items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "CurrentPage": currentPage,
    "TotalPages": totalPages,
    "TotalItems": totalItems,
    "ItemsPerPage": itemsPerPage,
    "Items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class Item {
  final int? id;
  final String? title;
  final String? content;
  final int? systemObjectId;
  final int? systemObjectRecordId;
  final int? userBy;
  final int? userTo;
  final bool? isSeen;
  final int? fileId;
  final DateTime? addedOn;
  final DateTime? modifiedOn;
  final String? systemObjectName;
  final String? userName;
  final String? fileUrl;
  final String? fullFileUrl;
  final String? postImageUrl;
  final String? fullPostImageUrl;

  Item({
    this.id,
    this.title,
    this.content,
    this.systemObjectId,
    this.systemObjectRecordId,
    this.userBy,
    this.userTo,
    this.isSeen,
    this.fileId,
    this.addedOn,
    this.modifiedOn,
    this.systemObjectName,
    this.userName,
    this.fileUrl,
    this.fullFileUrl,
    this.postImageUrl,
    this.fullPostImageUrl,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["Id"],
    title: json["Title"],
    content: json["Content"],
    systemObjectId: json["SystemObjectId"],
    systemObjectRecordId: json["SystemObjectRecordId"],
    userBy: json["UserBy"],
    userTo: json["UserTo"],
    isSeen: json["IsSeen"],
    fileId: json["FileId"],
    addedOn: json["AddedOn"] == null ? null : DateTime.parse(json["AddedOn"]),
    modifiedOn: json["ModifiedOn"] == null ? null : DateTime.parse(json["ModifiedOn"]),
    systemObjectName: json["SystemObjectName"],
    userName: json["UserName"],
    fileUrl: json["FileUrl"],
    fullFileUrl: json["FullFileUrl"],
    postImageUrl: json["PostImageUrl"],
    fullPostImageUrl: json["FullPostImageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Title": title,
    "Content": content,
    "SystemObjectId": systemObjectId,
    "SystemObjectRecordId": systemObjectRecordId,
    "UserBy": userBy,
    "UserTo": userTo,
    "IsSeen": isSeen,
    "FileId": fileId,
    "AddedOn": addedOn?.toIso8601String(),
    "ModifiedOn": modifiedOn?.toIso8601String(),
    "SystemObjectName": systemObjectName,
    "UserName": userName,
    "FileUrl": fileUrl,
    "FullFileUrl": fullFileUrl,
    "PostImageUrl": postImageUrl,
    "FullPostImageUrl": fullPostImageUrl,
  };
}
