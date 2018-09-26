/**
 * Bungie.Net API
 * These endpoints constitute the functionality exposed by Bungie.net, both for more traditional website functionality and for connectivity to Bungie video games and their related functionality.
 *
 * OpenAPI spec version: 2.3.2
 * Contact: support@bungie.com
 *
 * NOTE: This class is auto generated by the bungie-api-ts code generator program.
 * https://github.com/DestinyItemManager/bugie-api-ts
 * Do not edit these files manually.
 */

import '../common.dart';
import '../platform.dart';
import '../user/interfaces.dart';

class CommunityStatusSort {
   static const int Viewers = 0;
   static const int Trending = 1;
   static const int OverallViewers = 2;
   static const int Followers = 3;
}

class SearchResultOfCommunityLiveStatus {
  List<CommunityLiveStatus> results;
  int totalResults;
  bool hasMore;
  PagedQuery query;
  String replacementContinuationToken;
  /**
   * If useTotalResults is true, then totalResults represents an accurate count.
   *
   * If False, it does not, and may be estimated/only the size of the current page.
   *
   * Either way, you should probably always only trust hasMore.
   *
   * This is a long-held historical throwback to when we used to do paging with known
   * total results. Those queries toasted our database, and we were left to hastily
   * alter our endpoints and create backward- compatible shims, of which
   * useTotalResults is one.
   */
  bool useTotalResults;
}

class CommunityLiveStatus {
  String dateStatusUpdated;
  String url;
  String partnershipIdentifier;
  PartnershipType partnershipType;
  String thumbnail;
  String thumbnailSmall;
  String thumbnailLarge;
  String destinyCharacterId;
  UserInfoCard userInfo;
  int currentActivityHash;
  String dateLastPlayed;
  String dateStreamStarted;
  String locale;
  int currentViewers;
  int followers;
  int overallViewers;
  bool isFeatured;
  String title;
  int activityModeHash;
  String dateFeatured;
  double trendingValue;
  bool isSubscribable;
}