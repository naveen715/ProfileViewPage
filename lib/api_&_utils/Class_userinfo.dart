

import 'package:meta/meta.dart';
import 'dart:convert';

class UserInfo {
  UserInfo({
    required this.basic,
    required this.blogs,
    required this.clientPostings,
    required this.crewPostings,
    required this.events,
    required this.isLoggedIn,
    required this.locations,
    required this.portfolio,
    required this.professions,
    required this.questions,
    required this.skills,
    required this.socialHubs,
  });

  final Basic basic;
  final List<dynamic> blogs;
  final List<ClientPosting> clientPostings;
  final List<dynamic> crewPostings;
  final List<Event> events;
  final bool isLoggedIn;
  final List<Location> locations;
  final List<Portfolio> portfolio;
  final List<Profession> professions;
  final List<Question> questions;
  final List<dynamic> skills;
  final List<dynamic> socialHubs;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    basic: Basic.fromJson(json["basic"]),
    blogs: List<dynamic>.from(json["blogs"].map((x) => x)),
    clientPostings: List<ClientPosting>.from(json["client_postings"].map((x) => ClientPosting.fromJson(x))),
    crewPostings: List<dynamic>.from(json["crew_postings"].map((x) => x)),
    events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
    isLoggedIn: json["is_logged_in"],
    locations: List<Location>.from(json["locations"].map((x) => Location.fromJson(x))),
    portfolio: List<Portfolio>.from(json["portfolio"].map((x) => Portfolio.fromJson(x))),
    professions: List<Profession>.from(json["professions"].map((x) => Profession.fromJson(x))),
    questions: List<Question>.from(json["questions"].map((x) => Question.fromJson(x))),
    skills: List<dynamic>.from(json["skills"].map((x) => x)),
    socialHubs: List<dynamic>.from(json["social_hubs"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "basic": basic.toJson(),
    "blogs": List<dynamic>.from(blogs.map((x) => x)),
    "client_postings": List<dynamic>.from(clientPostings.map((x) => x.toJson())),
    "crew_postings": List<dynamic>.from(crewPostings.map((x) => x)),
    "events": List<dynamic>.from(events.map((x) => x.toJson())),
    "is_logged_in": isLoggedIn,
    "locations": List<dynamic>.from(locations.map((x) => x.toJson())),
    "portfolio": List<dynamic>.from(portfolio.map((x) => x.toJson())),
    "professions": List<dynamic>.from(professions.map((x) => x.toJson())),
    "questions": List<dynamic>.from(questions.map((x) => x.toJson())),
    "skills": List<dynamic>.from(skills.map((x) => x)),
    "social_hubs": List<dynamic>.from(socialHubs.map((x) => x)),
  };
}

class Basic {
  Basic({
    required this.bio,
    required this.cover,
    required this.createdAt,
    required this.dob,
    required this.facebook,
    required this.followings,
    required this.fullname,
    required this.image,
    required this.imageHd,
    required this.instagram,
    required this.isFollowing,
    required this.isVerified,
    required this.isWorking,
    required this.linkedin,
    required this.name,
    required this.quickBookings,
    required this.quickbookVerified,
    required this.strength,
    required this.twitter,
    required this.type,
    required this.userId,
    required this.username,
    required this.visits,
    required this.website,
  });

  final String bio;
  final String cover;
  final String createdAt;
  final DateTime dob;
  final String facebook;
  final int followings;
  final String fullname;
  final String image;
  final String imageHd;
  final String instagram;
  final bool isFollowing;
  final bool isVerified;
  final bool isWorking;
  final String linkedin;
  final String name;
  final int quickBookings;
  final bool quickbookVerified;
  final int strength;
  final String twitter;
  final dynamic type;
  final int userId;
  final String username;
  final int visits;
  final String website;

  factory Basic.fromJson(Map<String, dynamic> json) => Basic(
    bio: json["bio"],
    cover: json["cover"],
    createdAt: json["created_at"],
    dob: DateTime.parse(json["dob"]),
    facebook: json["facebook"],
    followings: json["followings"],
    fullname: json["fullname"],
    image: json["image"],
    imageHd: json["image_hd"],
    instagram: json["instagram"],
    isFollowing: json["is_following"],
    isVerified: json["is_verified"],
    isWorking: json["is_working"],
    linkedin: json["linkedin"],
    name: json["name"],
    quickBookings: json["quick_bookings"],
    quickbookVerified: json["quickbook_verified"],
    strength: json["strength"],
    twitter: json["twitter"],
    type: json["type_"],
    userId: json["user_id"],
    username: json["username"],
    visits: json["visits"],
    website: json["website"],
  );

  Map<String, dynamic> toJson() => {
    "bio": bio,
    "cover": cover,
    "created_at": createdAt,
    "dob": "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
    "facebook": facebook,
    "followings": followings,
    "fullname": fullname,
    "image": image,
    "image_hd": imageHd,
    "instagram": instagram,
    "is_following": isFollowing,
    "is_verified": isVerified,
    "is_working": isWorking,
    "linkedin": linkedin,
    "name": name,
    "quick_bookings": quickBookings,
    "quickbook_verified": quickbookVerified,
    "strength": strength,
    "twitter": twitter,
    "type_": type,
    "user_id": userId,
    "username": username,
    "visits": visits,
    "website": website,
  };
}

class ClientPosting {
  ClientPosting({
    required this.budget,
    required this.budgetCc,
    required this.createdAt,
    required this.description,
    required this.experience,
    required this.id,
    required this.isActive,
    required this.jobType,
    required this.location,
    required this.openings,
    required this.profession,
    required this.skills,
    required this.timePeriod,
    required this.timeStart,
    required this.type,
  });

  final int budget;
  final String budgetCc;
  final String createdAt;
  final String description;
  final int experience;
  final int id;
  final bool isActive;
  final String jobType;
  final String location;
  final int openings;
  final String profession;
  final String skills;
  final String timePeriod;
  final String timeStart;
  final String type;

  factory ClientPosting.fromJson(Map<String, dynamic> json) => ClientPosting(
    budget: json["budget"] == null ? null : json["budget"],
    budgetCc: json["budget_cc"],
    createdAt: json["created_at"],
    description: json["description"],
    experience: json["experience"],
    id: json["id"],
    isActive: json["is_active"],
    jobType: json["job_type"],
    location: json["location"],
    openings: json["openings"],
    profession: json["profession"],
    skills: json["skills"] == null ? null : json["skills"],
    timePeriod: json["time_period"] == null ? null : json["time_period"],
    timeStart: json["time_start"] == null ? null : json["time_start"],
    type: json["type_"],
  );

  Map<String, dynamic> toJson() => {
    "budget": budget == null ? null : budget,
    "budget_cc": budgetCc,
    "created_at": createdAt,
    "description": description,
    "experience": experience,
    "id": id,
    "is_active": isActive,
    "job_type": jobType,
    "location": location,
    "openings": openings,
    "profession": profession,
    "skills": skills == null ? null : skills,
    "time_period": timePeriod == null ? null : timePeriod,
    "time_start": timeStart == null ? null : timeStart,
    "type_": type,
  };
}

class Event {
  Event({
    required this.sku,
    required this.theme,
    required this.thumbnail,
  });

  final String sku;
  final String theme;
  final String thumbnail;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    sku: json["sku"],
    theme: json["theme"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "sku": sku,
    "theme": theme,
    "thumbnail": thumbnail,
  };
}

class Location {
  Location({
    required this.city,
    required this.country,
    required this.createdAt,
    required this.id,
    required this.isPrimary,
    required this.state,
    required this.zipCode,
  });

  final String city;
  final String country;
  final String createdAt;
  final int id;
  final bool isPrimary;
  final String state;
  final String zipCode;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    city: json["city"],
    country: json["country"],
    createdAt: json["created_at"],
    id: json["id"],
    isPrimary: json["is_primary"],
    state: json["state"],
    zipCode: json["zip_code"],
  );

  Map<String, dynamic> toJson() => {
    "city": city,
    "country": country,
    "created_at": createdAt,
    "id": id,
    "is_primary": isPrimary,
    "state": state,
    "zip_code": zipCode,
  };
}

class Portfolio {
  Portfolio({
    required this.createdAt,
    required this.description,
    required this.endedTime,
    required this.id,
    required this.images,
    required this.link,
    required this.position,
    required this.projectName,
    required this.startedTime,
  });

  final String createdAt;
  final String description;
  final DateTime endedTime;
  final int id;
  final List<Image> images;
  final String link;
  final String position;
  final String projectName;
  final DateTime startedTime;

  factory Portfolio.fromJson(Map<String, dynamic> json) => Portfolio(
    createdAt: json["created_at"],
    description: json["description"],
    endedTime: DateTime.parse(json["ended_time"]),
    id: json["id"],
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    link: json["link"],
    position: json["position"],
    projectName: json["project_name"],
    startedTime: DateTime.parse(json["started_time"]),
  );

  Map<String, dynamic> toJson() => {
    "created_at": createdAt,
    "description": description,
    "ended_time": "${endedTime.year.toString().padLeft(4, '0')}-${endedTime.month.toString().padLeft(2, '0')}-${endedTime.day.toString().padLeft(2, '0')}",
    "id": id,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "link": link,
    "position": position,
    "project_name": projectName,
    "started_time": "${startedTime.year.toString().padLeft(4, '0')}-${startedTime.month.toString().padLeft(2, '0')}-${startedTime.day.toString().padLeft(2, '0')}",
  };
}

class Image {
  Image({
    required this.id,
    required this.image,
  });

  final int id;
  final String image;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
  };
}

class Profession {
  Profession({
    required this.createdAt,
    required this.experience,
    required this.forQuickbook,
    required this.id,
    required this.isPrimary,
    required this.title,
    required this.userId,
  });

  final String createdAt;
  final int experience;
  final bool forQuickbook;
  final int id;
  final bool isPrimary;
  final String title;
  final int userId;

  factory Profession.fromJson(Map<String, dynamic> json) => Profession(
    createdAt: json["created_at"],
    experience: json["experience"],
    forQuickbook: json["for_quickbook"],
    id: json["id"],
    isPrimary: json["is_primary"],
    title: json["title"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "created_at": createdAt,
    "experience": experience,
    "for_quickbook": forQuickbook,
    "id": id,
    "is_primary": isPrimary,
    // ignore: unnecessary_null_comparison, prefer_null_aware_operators
    "title": title,
    "user_id": userId,
  };
}

class QuickbookDetails {
  QuickbookDetails({
    required this.isActive,
    required this.isFlexible,
    required this.portfoliosIds,
    required this.rateAmount,
    required this.rateCurrency,
    required this.rateDuration,
  });

  final bool isActive;
  final bool isFlexible;
  final List<String> portfoliosIds;
  final int rateAmount;
  final String rateCurrency;
  final String rateDuration;

  factory QuickbookDetails.fromJson(Map<String, dynamic> json) => QuickbookDetails(
    isActive: json["is_active"],
    isFlexible: json["is_flexible"],
    portfoliosIds: List<String>.from(json["portfolios_ids"].map((x) => x)),
    rateAmount: json["rate_amount"],
    rateCurrency: json["rate_currency"],
    rateDuration: json["rate_duration"],
  );

  Map<String, dynamic> toJson() => {
    "is_active": isActive,
    "is_flexible": isFlexible,
    "portfolios_ids": List<dynamic>.from(portfoliosIds.map((x) => x)),
    "rate_amount": rateAmount,
    "rate_currency": rateCurrency,
    "rate_duration": rateDuration,
  };
}

class Question {
  Question({
    required this.answer,
    required this.createdAt,
    required this.description,
    required this.id,
    required this.me,
    required this.title,
  });

  final Answer answer;
  final String createdAt;
  final String description;
  final int id;
  final bool me;
  final String title;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    answer: Answer.fromJson(json["answer"]),
    createdAt: json["created_at"],
    description: json["description"],
    id: json["id"],
    me: json["me"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "answer": answer.toJson(),
    "created_at": createdAt,
    "description": description,
    "id": id,
    "me": me,
    "title": title,
  };
}

class Answer {
  Answer({
    required this.createdAt,
    required this.description,
    required this.id,
  });

  final String createdAt;
  final String description;
  final int id;

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
    createdAt: json["created_at"],
    description: json["description"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "created_at": createdAt,
    "description": description,
    "id": id,
  };
}
