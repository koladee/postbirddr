// To parse this JSON data, do
//
//     final pendingpacakage = pendingpacakageFromJson(jsonString);

import 'dart:convert';

List<Pendingpacakage> pendingpacakageFromJson(String str) =>
    List<Pendingpacakage>.from(
        json.decode(str).map((x) => Pendingpacakage.fromJson(x)));

String pendingpacakageToJson(List<Pendingpacakage> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pendingpacakage {
  Pendingpacakage({
    this.id,
    this.userId,
    this.date,
    this.address,
    this.detination,
    this.frmlt,
    this.tolt,
    this.frmlg,
    this.tolg,
    this.amount,
    this.packagedetails,
    this.status,
    this.packagename,
    this.sendername,
    this.senderphone,
    this.packtype,
    this.packsize,
    this.fragile,
    this.recipientname,
    this.recipientaddress,
    this.postalzip,
    this.recipientphone,
    this.additionalinfo,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String userId;
  DateTime date;
  String address;
  String detination;
  String frmlt;
  String tolt;
  String frmlg;
  String tolg;
  String amount;
  String packagedetails;
  String status;
  String packagename;
  String sendername;
  String senderphone;
  String packtype;
  String packsize;
  String fragile;
  String recipientname;
  String recipientaddress;
  String postalzip;
  String recipientphone;
  String additionalinfo;
  DateTime createdAt;
  DateTime updatedAt;

  factory Pendingpacakage.fromJson(Map<String, dynamic> json) =>
      Pendingpacakage(
        id: json["id"],
        userId: json["user_id"],
        date: DateTime.parse(json["date"]),
        address: json["address"],
        detination: json["detination"],
        frmlt: json["frmlt"],
        tolt: json["tolt"],
        frmlg: json["frmlg"],
        tolg: json["tolg"],
        amount: json["amount"],
        packagedetails: json["packagedetails"],
        status: json["status"],
        packagename: json["packagename"],
        sendername: json["sendername"],
        senderphone: json["senderphone"],
        packtype: json["packtype"],
        packsize: json["packsize"],
        fragile: json["fragile"],
        recipientname: json["recipientname"],
        recipientaddress: json["recipientaddress"],
        postalzip: json["postalzip"],
        recipientphone: json["recipientphone"],
        additionalinfo: json["additionalinfo"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "date": date.toIso8601String(),
        "address": address,
        "detination": detination,
        "frmlt": frmlt,
        "tolt": tolt,
        "frmlg": frmlg,
        "tolg": tolg,
        "amount": amount,
        "packagedetails": packagedetails,
        "status": status,
        "packagename": packagename,
        "sendername": sendername,
        "senderphone": senderphone,
        "packtype": packtype,
        "packsize": packsize,
        "fragile": fragile,
        "recipientname": recipientname,
        "recipientaddress": recipientaddress,
        "postalzip": postalzip,
        "recipientphone": recipientphone,
        "additionalinfo": additionalinfo,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
