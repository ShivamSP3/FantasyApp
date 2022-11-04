// To parse this JSON data, do
//
//     final fantasy = fantasyFromJson(jsonString);

import 'dart:convert';

Fantasy fantasyFromJson(String str) => Fantasy.fromJson(json.decode(str));

String fantasyToJson(Fantasy data) => json.encode(data.toJson());

class Fantasy {
    Fantasy({
        this.status,
        this.message,
        required this.result,
    });

    int? status;
    String? message;
    List<Result> result;

    factory Fantasy.fromJson(Map<String, dynamic> json) => Fantasy(
        status: json["status"],
        message: json["message"],
        result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        this.id,
        this.lineup,
        this.name,
        this.format,
        this.series,
         this.seriesname,
         this.team1Name,
         this.team2Name,
        required this.team1Fullname,
        required this.team2Fullname,
        required this.matchType,
        this.specialText,
        this.matchkey,
        this.winnerstatus,
        this.launchStatus,
        this.pinTop,
        this.preTossAvailable,
        this.preTossClosingTime,
        this.onlyAdmin,
        this.leaderboard,
        this.sportType,
        this.matchStatus,
         this.matchStatusKey,
         this.team1Logo,
        this.team2Logo,
        this.matchopenstatus,
        this.matchindexing,
        this.timeStart,
        this.locktime,
        this.timedifference,
        this.status,
    });

    int? id;
    int? lineup;
    String? name;
    Format? format;
    int? series;
    Seriesname? seriesname;
    String ?team1Name;
    String? team2Name;
    String team1Fullname;
    String team2Fullname;
    int matchType;
    SpecialText? specialText;
    String ?matchkey;
    Status? winnerstatus;
    Status? launchStatus;
    int? pinTop;
    int? preTossAvailable;
    String? preTossClosingTime;
    int? onlyAdmin;
    int? leaderboard;
    SportType? sportType;
    MatchStatus? matchStatus;
    int? matchStatusKey;
    String? team1Logo;
    String? team2Logo;
    Matchopenstatus ?matchopenstatus;
    dynamic matchindexing;
    DateTime? timeStart;
    Locktime? locktime;
    int? timedifference;
    int? status;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        lineup: json["lineup"],
        name: json["name"],
        format: formatValues.map[json["format"]],
        series: json["series"],
        seriesname: seriesnameValues.map[json["seriesname"]],
        team1Name: json["team1name"],
        team2Name: json["team2name"],
        team1Fullname: json["team1fullname"],
        team2Fullname: json["team2fullname"],
        matchType: json["match_type"],
        specialText: specialTextValues.map[json["specialText"]],
        matchkey: json["matchkey"],
        winnerstatus: statusValues.map[json["winnerstatus"]],
        launchStatus: statusValues.map[json["launch_status"]],
        pinTop: json["pinTop"],
        preTossAvailable: json["PreTossAvailable"],
        preTossClosingTime: json["PreTossClosingTime"],
        onlyAdmin: json["only_admin"],
        leaderboard: json["leaderboard"],
        sportType: sportTypeValues.map[json["sportType"]],
        matchStatus: matchStatusValues.map[json["match_status"]],
        matchStatusKey: json["match_status_key"],
        team1Logo: json["team1logo"],
        team2Logo: json["team2logo"],
        matchopenstatus: matchopenstatusValues.map[json["matchopenstatus"]],
        matchindexing: json["matchindexing"],
        timeStart: DateTime.parse(json["time_start"]),
        locktime: Locktime.fromJson(json["locktime"]),
        timedifference: json["timedifference"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "lineup": lineup,
        "name": name,
        "format": formatValues.reverse[format],
        "series": series,
        "seriesname": seriesnameValues.reverse[seriesname],
        "team1name": team1Name,
        "team2name": team2Name,
        "team1fullname": team1Fullname,
        "team2fullname": team2Fullname,
        "match_type": matchType,
        "specialText": specialTextValues.reverse[specialText],
        "matchkey": matchkey,
        "winnerstatus": statusValues.reverse[winnerstatus],
        "launch_status": statusValues.reverse[launchStatus],
        "pinTop": pinTop,
        "PreTossAvailable": preTossAvailable,
        "PreTossClosingTime": preTossClosingTime,
        "only_admin": onlyAdmin,
        "leaderboard": leaderboard,
        "sportType": sportTypeValues.reverse[sportType],
        "match_status": matchStatusValues.reverse[matchStatus],
        "match_status_key": matchStatusKey,
        "team1logo": team1Logo,
        "team2logo": team2Logo,
        "matchopenstatus": matchopenstatusValues.reverse[matchopenstatus],
        "matchindexing": matchindexing,
      //  "time_start": timeStart.toIso8601String(),
      //  "locktime": locktime.toJson(),
        "timedifference": timedifference,
        "status": status,
    };
}

enum Format { T20, T10 }

final formatValues = EnumValues({
    "t10": Format.T10,
    "t20": Format.T20
});

enum Status { PENDING, LAUNCHED }

final statusValues = EnumValues({
    "launched": Status.LAUNCHED,
    "pending": Status.PENDING
});

class Locktime {
    Locktime({
        this.date,
        this.timezoneType,
         this.timezone,
    });

    DateTime? date;
    String? timezoneType;
    Timezone? timezone;

    factory Locktime.fromJson(Map<String, dynamic> json) => Locktime(
        date: DateTime.parse(json["date"]),
        timezoneType: json["timezone_type"],
        // timezone: timezoneValues.map[json["timezone"]],
    );

    Map<String, dynamic> toJson() => {
      //  "date": date.toIso8601String(),
        "timezone_type": timezoneType,
        "timezone": timezoneValues.reverse[timezone],
    };
}

enum Timezone { ASIA_KOLKATA }

final timezoneValues = EnumValues({
    "Asia/Kolkata": Timezone.ASIA_KOLKATA
});

enum MatchStatus { UPCOMING }

final matchStatusValues = EnumValues({
    "upcoming": MatchStatus.UPCOMING
});

enum Matchopenstatus { OPENED }

final matchopenstatusValues = EnumValues({
    "opened": Matchopenstatus.OPENED
});

enum Seriesname { WOMENS_T20_BIG_BASH_2022, ICC_MEN_S_T20_WORLD_CUP_2022, ECS_T10_MALTA_2022, KCC_T20_ELITE_CHAMPIONSHIP_2022, CSA_T20_CHALLENGE_202223 }

final seriesnameValues = EnumValues({
    " CSA T20 Challenge 2022-23": Seriesname.CSA_T20_CHALLENGE_202223,
    " ECS T10 Malta - 2022": Seriesname.ECS_T10_MALTA_2022,
    " ICC Men's T20 World Cup 2022": Seriesname.ICC_MEN_S_T20_WORLD_CUP_2022,
    " KCC T20 Elite Championship - 2022": Seriesname.KCC_T20_ELITE_CHAMPIONSHIP_2022,
    " Womens T20 Big Bash - 2022": Seriesname.WOMENS_T20_BIG_BASH_2022
});

enum SpecialText { THE_100_BONUS_LEAGUE, THE_2_ND_INNINGS, EMPTY, BONUS_LEAGUE_DISCOUNT_ENTRY }

final specialTextValues = EnumValues({
    "Bonus League + Discount Entry": SpecialText.BONUS_LEAGUE_DISCOUNT_ENTRY,
    "": SpecialText.EMPTY,
    "100% Bonus League": SpecialText.THE_100_BONUS_LEAGUE,
    "2nd Innings": SpecialText.THE_2_ND_INNINGS
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
