//
// UpdatePhoneNumber.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdatePhoneNumber: Codable, JSONEncodable, Hashable {

    /** The agent uri that will be used for inbound calls. If null, the phone number is will not receive any calls. */
    public var inboundAgentUri: String?

    public init(inboundAgentUri: String? = nil) {
        self.inboundAgentUri = inboundAgentUri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inboundAgentUri = "inbound_agent_uri"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inboundAgentUri, forKey: .inboundAgentUri)
    }
}

