/**
 * Bungie.Net API
 * These endpoints constitute the functionality exposed by Bungie.net, both for more traditional website functionality and for connectivity to Bungie video games and their related functionality.
 *
 * OpenAPI spec version: 2.1.5
 * Contact: support@bungie.com
 *
 * NOTE: This class is auto generated by the bungie-api-ts code generator program.
 * https://github.com/DestinyItemManager/bugie-api-ts
 * Do not edit these files manually.
 */
import { BungieMembershipType } from '../common';
import { IgnoreResponse, PartnershipType } from '../platform';
/**
 * This contract supplies basic information commonly used to display a minimal
 * amount of information about a user. Take care to not add more properties here
 * unless the property applies in all (or at least the majority) of the situations
 * where UserInfoCard is used. Avoid adding game specific or platform specific
 * details here. In cases where UserInfoCard is a subset of the data needed in a
 * contract, use UserInfoCard as a property of other contracts.
 */
export interface UserInfoCard {
    /**
     * A platform specific additional display name - ex: psn Real Name, bnet Unique
     * Name, etc.
     */
    readonly supplementalDisplayName: string;
    /** URL the Icon if available. */
    readonly iconPath: string;
    /** Type of the membership. */
    readonly membershipType: BungieMembershipType;
    /** Membership ID as they user is known in the Accounts service */
    readonly membershipId: string;
    /**
     * Display Name the player has chosen for themselves. The display name is optional
     * when the data type is used as input to a platform API.
     */
    readonly displayName: string;
}
export interface GeneralUser {
    readonly membershipId: string;
    readonly uniqueName: string;
    readonly normalizedName: string;
    readonly displayName: string;
    readonly profilePicture: number;
    readonly profileTheme: number;
    readonly userTitle: number;
    readonly successMessageFlags: string;
    readonly isDeleted: boolean;
    readonly about: string;
    readonly firstAccess?: string;
    readonly lastUpdate?: string;
    readonly legacyPortalUID?: string;
    readonly context: UserToUserContext;
    readonly psnDisplayName: string;
    readonly xboxDisplayName: string;
    readonly fbDisplayName: string;
    readonly showActivity?: boolean;
    readonly locale: string;
    readonly localeInheritDefault: boolean;
    readonly lastBanReportId?: string;
    readonly showGroupMessaging: boolean;
    readonly profilePicturePath: string;
    readonly profilePictureWidePath: string;
    readonly profileThemeName: string;
    readonly userTitleDisplay: string;
    readonly statusText: string;
    readonly statusDate: string;
    readonly profileBanExpire?: string;
    readonly blizzardDisplayName: string;
}
export interface UserToUserContext {
    readonly isFollowing: boolean;
    readonly ignoreStatus: IgnoreResponse;
    readonly globalIgnoreEndDate?: string;
}
export interface UserTheme {
    readonly userThemeId: number;
    readonly userThemeName: string;
    readonly userThemeDescription: string;
}
export interface UserMembershipData {
    /**
     * this allows you to see destiny memberships that are visible and linked to this
     * account (regardless of whether or not they have characters on the world server)
     */
    readonly destinyMemberships: UserInfoCard[];
    readonly bungieNetUser: GeneralUser;
}
/** All the partnership info that's fit to expose externally, if we care to do so. */
export interface PublicPartnershipDetail {
    readonly partnerType: PartnershipType;
    readonly identifier: string;
    readonly name: string;
    readonly icon: string;
}
/** Very basic info about a user as returned by the Account server. */
export interface UserMembership {
    /** Type of the membership. */
    readonly membershipType: BungieMembershipType;
    /** Membership ID as they user is known in the Accounts service */
    readonly membershipId: string;
    /**
     * Display Name the player has chosen for themselves. The display name is optional
     * when the data type is used as input to a platform API.
     */
    readonly displayName: string;
}
