// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.status,
        this.message,
        required this.result,
    });

    int? status;
    String? message;
    Result result;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        message: json["message"],
        result: Result.fromJson(json["result"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": result.toJson(),
    };
}

class Result {
    Result({
        required this.preTossAvailable,
        this.preTossStatus,
        required this.categories,
        this.userTeams,
        this.joinedLeagues,
        this.totalContest,
    });

    int preTossAvailable;
    int ?preTossStatus;
    List<Category> categories;
    int ?userTeams;
    int ?joinedLeagues;
    int ?totalContest;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        preTossAvailable: json["PreTossAvailable"],
        preTossStatus: json["PreToss_status"],
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
        userTeams: json["user_teams"],
        joinedLeagues: json["joined_leagues"],
        totalContest: json["total_contest"],
    );

    Map<String, dynamic> toJson() => {
        "PreTossAvailable": preTossAvailable,
        "PreToss_status": preTossStatus,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "user_teams": userTeams,
        "joined_leagues": joinedLeagues,
        "total_contest": totalContest,
    };
}

class Category {
    Category({
        this.id,
        this.name,
        this.contestSubText,
        this.contestTypeImage,
        this.sportType,
        this.sortOrder,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.contestImageUrl,
        required this.leagues,
        this.totalCategoryLeagues,
    });

    int ?id;
    String? name;
    String? contestSubText;
    String? contestTypeImage;
    int? sportType;
    int? sortOrder;
    int? status;
    DateTime ?createdAt;
    DateTime? updatedAt;
    String? contestImageUrl;
    List<League> leagues;
    int? totalCategoryLeagues;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        contestSubText: json["contest_sub_text"],
        contestTypeImage: json["contest_type_image"],
        sportType: json["sport_type"],
        sortOrder: json["sort_order"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        contestImageUrl: json["contest_image_url"],
        leagues: List<League>.from(json["leagues"].map((x) => League.fromJson(x))),
        totalCategoryLeagues: json["total_category_leagues"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "contest_sub_text": contestSubText,
        "contest_type_image": contestTypeImage,
        "sport_type": sportType,
        "sort_order": sortOrder,
        "status": status,
     //   "created_at": createdAt.toIso8601String(),
      //  "updated_at": updatedAt.toIso8601String(),
        "contest_image_url": contestImageUrl,
        "leagues": List<dynamic>.from(leagues.map((x) => x.toJson())),
        "total_category_leagues": totalCategoryLeagues,
    };
}

class League {
    League({
        this.id,
        this.name,
       required this.entryfee,
       required this.winAmount,
       required this.maximumUser,
        this.challengeType,
        this.winningPercentage,
        this.matchkey,
        this.leaderboardAnnouncement,
        this.leagueAnnouncement,
        this.strikedPrice,
        this.status,
        this.preToss,
        this.favourite,
        this.sportType,
        this.onlyAdmin,
        this.isDeletable,
        this.deleteBefore,
        this.unlimited,
        this.joinedusers,
        this.multiEntry,
        this.multiEntryLimit,
        this.confirmedChallenge,
        this.bonusPercent,
        this.isRunning,
        this.isBonus,
        this.isselectedid,
        this.preTossStatus,
        this.challengeCategoryId,
        this.isselected,
        this.getjoinedpercentage,
        this.firstprize,
        this.winningpercentage,
       required this.totalwinners,
        this.pdfEnable,
    });

    int? id;
    String? name;
    int entryfee;
    String winAmount;
    int maximumUser;
    String? challengeType;
    String? winningPercentage;
    Matchkey? matchkey;
    String? leaderboardAnnouncement;
    String? leagueAnnouncement;
    int? strikedPrice;
    int? status;
    int? preToss;
    int? favourite;
    SportType ?sportType;
    int? onlyAdmin;
    int? isDeletable;
    int? deleteBefore;
    int? unlimited;
    int? joinedusers;
    int? multiEntry;
    int? multiEntryLimit;
    int? confirmedChallenge;
    BonusPercent? bonusPercent;
    int? isRunning;
    int? isBonus;
    String? isselectedid;
    int? preTossStatus;
    int? challengeCategoryId;
    bool? isselected;
    String? getjoinedpercentage;
    int? firstprize;
    String? winningpercentage;
    String totalwinners;
    String? pdfEnable;

    factory League.fromJson(Map<String, dynamic> json) => League(
        id: json["id"],
        name: json["name"],
        entryfee: json["entryfee"],
        winAmount: json["win_amount"],
        maximumUser: json["maximum_user"],
        challengeType: json["challenge_type"],
        winningPercentage: json["winning_percentage"],
        matchkey: matchkeyValues.map[json["matchkey"]],
        leaderboardAnnouncement: json["leaderboard_announcement"],
        leagueAnnouncement: json["league_announcement"],
        strikedPrice: json["striked_price"],
        status: json["status"],
        preToss: json["preToss"],
        favourite: json["favourite"],
        sportType: sportTypeValues.map[json["sportType"]],
        onlyAdmin: json["only_admin"],
        isDeletable: json["is_deletable"],
        deleteBefore: json["delete_before"],
        unlimited: json["unlimited"],
        joinedusers: json["joinedusers"],
        multiEntry: json["multi_entry"],
        multiEntryLimit: json["multi_entry_limit"],
        confirmedChallenge: json["confirmed_challenge"],
        bonusPercent: bonusPercentValues.map[json["bonus_percent"]],
        isRunning: json["is_running"],
        isBonus: json["is_bonus"],
        isselectedid: json["isselectedid"],
        preTossStatus: json["PreToss_status"],
        challengeCategoryId: json["challenge_category_id"],
        isselected: json["isselected"],
        getjoinedpercentage: json["getjoinedpercentage"],
        firstprize: json["firstprize"],
        winningpercentage: json["winningpercentage"],
        totalwinners: json["totalwinners"],
        pdfEnable: json["pdf_enable"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "entryfee": entryfee,
        "win_amount": winAmount,
        "maximum_user": maximumUser,
        "challenge_type": challengeType,
        "winning_percentage": winningPercentage,
        "matchkey": matchkeyValues.reverse[matchkey],
        "leaderboard_announcement": leaderboardAnnouncement,
        "league_announcement": leagueAnnouncement,
        "striked_price": strikedPrice,
        "status": status,
        "preToss": preToss,
        "favourite": favourite,
        "sportType": sportTypeValues.reverse[sportType],
        "only_admin": onlyAdmin,
        "is_deletable": isDeletable,
        "delete_before": deleteBefore,
        "unlimited": unlimited,
        "joinedusers": joinedusers,
        "multi_entry": multiEntry,
        "multi_entry_limit": multiEntryLimit,
        "confirmed_challenge": confirmedChallenge,
        "bonus_percent": bonusPercentValues.reverse[bonusPercent],
        "is_running": isRunning,
        "is_bonus": isBonus,
        "isselectedid": isselectedid,
        "PreToss_status": preTossStatus,
        "challenge_category_id": challengeCategoryId,
        "isselected": isselected,
        "getjoinedpercentage": getjoinedpercentage,
        "firstprize": firstprize,
        "winningpercentage": winningpercentage,
        "totalwinners": totalwinners,
        "pdf_enable": pdfEnable,
    };
}

enum BonusPercent { THE_5, THE_0 }

final bonusPercentValues = EnumValues({
    "0%": BonusPercent.THE_0,
    "5%": BonusPercent.THE_5
});

enum Matchkey { C_MATCH_KUMS_VS_FUT_B1364 }

final matchkeyValues = EnumValues({
    "c.match.kums_vs_fut.b1364": Matchkey.C_MATCH_KUMS_VS_FUT_B1364
});

enum SportType { CRICKET }

final sportTypeValues = EnumValues({
    "cricket": SportType.CRICKET
});


class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
