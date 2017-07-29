import Foundation

public struct Session: Codable {
    let userName: String
    public let accessToken: String
    var encryptedRefreshToken: String? = nil
    let expirationDate: Date

    public func isValid() -> Bool {
        return Date().compare(self.expirationDate) == .orderedAscending
    }
}