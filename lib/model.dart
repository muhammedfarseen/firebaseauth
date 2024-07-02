// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'dart:convert';

Model modelFromJson(String str) => Model.fromJson(json.decode(str));

String modelToJson(Model data) => json.encode(data.toJson());

class Model {
    Data? data;
    String? token;

    Model({
        this.data,
        this.token,
    });

    factory Model.fromJson(Map<String, dynamic> json) => Model(
        data: json["Data"] == null ? null : Data.fromJson(json["Data"]),
        token: json["Token"],
    );

    Map<String, dynamic> toJson() => {
        "Data": data?.toJson(),
        "Token": token,
    };
}

class Data {
    List<Table>? table;

    Data({
        this.table,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        table: json["Table"] == null ? [] : List<Table>.from(json["Table"]!.map((x) => Table.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Table": table == null ? [] : List<dynamic>.from(table!.map((x) => x.toJson())),
    };
}

class Table {
    int? companyId;
    int? isOnline;
    int? partyId;
    int? warehouseId;
    int? routeId;
    String? warehouse;
    String? route;
    String? partyName;
    int? roleId;
    int? branchId;
    String? password;
    String? roleName;
    String? branchName;
    DateTime? serverDate;
    int? periodId;
    DateTime? periodFrom;
    DateTime? periodTo;
    String? dbName;
    String? title;
    int? ledgerId;
    dynamic ledgerCode;
    dynamic ledgerName;
    int? isManager;
    String? cStatus;
    String? wInstDate;
    String? appOptions;

    Table({
        this.companyId,
        this.isOnline,
        this.partyId,
        this.warehouseId,
        this.routeId,
        this.warehouse,
        this.route,
        this.partyName,
        this.roleId,
        this.branchId,
        this.password,
        this.roleName,
        this.branchName,
        this.serverDate,
        this.periodId,
        this.periodFrom,
        this.periodTo,
        this.dbName,
        this.title,
        this.ledgerId,
        this.ledgerCode,
        this.ledgerName,
        this.isManager,
        this.cStatus,
        this.wInstDate,
        this.appOptions,
    });

    factory Table.fromJson(Map<String, dynamic> json) => Table(
        companyId: json["CompanyID"],
        isOnline: json["IsOnline"],
        partyId: json["PartyID"],
        warehouseId: json["WarehouseID"],
        routeId: json["RouteID"],
        warehouse: json["Warehouse"],
        route: json["Route"],
        partyName: json["PartyName"],
        roleId: json["RoleID"],
        branchId: json["BranchID"],
        password: json["Password"],
        roleName: json["RoleName"],
        branchName: json["BranchName"],
        serverDate: json["ServerDate"] == null ? null : DateTime.parse(json["ServerDate"]),
        periodId: json["PeriodID"],
        periodFrom: json["PeriodFrom"] == null ? null : DateTime.parse(json["PeriodFrom"]),
        periodTo: json["PeriodTo"] == null ? null : DateTime.parse(json["PeriodTo"]),
        dbName: json["DBName"],
        title: json["Title"],
        ledgerId: json["LedgerID"],
        ledgerCode: json["LedgerCode"],
        ledgerName: json["LedgerName"],
        isManager: json["IsManager"],
        cStatus: json["CStatus"],
        wInstDate: json["WInstDate"],
        appOptions: json["AppOptions"],
    );

    Map<String, dynamic> toJson() => {
        "CompanyID": companyId,
        "IsOnline": isOnline,
        "PartyID": partyId,
        "WarehouseID": warehouseId,
        "RouteID": routeId,
        "Warehouse": warehouse,
        "Route": route,
        "PartyName": partyName,
        "RoleID": roleId,
        "BranchID": branchId,
        "Password": password,
        "RoleName": roleName,
        "BranchName": branchName,
        "ServerDate": serverDate?.toIso8601String(),
        "PeriodID": periodId,
        "PeriodFrom": periodFrom?.toIso8601String(),
        "PeriodTo": periodTo?.toIso8601String(),
        "DBName": dbName,
        "Title": title,
        "LedgerID": ledgerId,
        "LedgerCode": ledgerCode,
        "LedgerName": ledgerName,
        "IsManager": isManager,
        "CStatus": cStatus,
        "WInstDate": wInstDate,
        "AppOptions": appOptions,
    };
}
