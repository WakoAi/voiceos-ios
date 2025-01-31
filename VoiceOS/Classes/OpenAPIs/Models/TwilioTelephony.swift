//
// TwilioTelephony.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TwilioTelephony: Codable, JSONEncodable, Hashable {

    public enum Provider: String, Codable, CaseIterable {
        case twilio = "twilio"
    }
    /** The telephony provider. */
    public var provider: Provider? = .twilio
    /** The twilio phone number SID. */
    public var phoneNumberSid: String
    /** The account sid of the telephony provider (i.e Twilio Account SID). Returns null if the phone number was purchased with Wako. */
    public var accountSid: String?
    /** The auth token of the telephony provider (i.e Twilio Auth Token). Returns null if the phone number was purchased with Wako. */
    public var authToken: String?

    public init(provider: Provider? = .twilio, phoneNumberSid: String, accountSid: String? = nil, authToken: String? = nil) {
        self.provider = provider
        self.phoneNumberSid = phoneNumberSid
        self.accountSid = accountSid
        self.authToken = authToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case provider
        case phoneNumberSid = "phone_number_sid"
        case accountSid = "account_sid"
        case authToken = "auth_token"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encode(phoneNumberSid, forKey: .phoneNumberSid)
        try container.encodeIfPresent(accountSid, forKey: .accountSid)
        try container.encodeIfPresent(authToken, forKey: .authToken)
    }
}

