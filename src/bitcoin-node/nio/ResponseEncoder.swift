import Foundation
import NIOCore
import BSJSONRPC

struct ResponseEncoder: MessageToByteEncoder, Sendable {

    typealias OutboundIn = JSONRPCResponse
    typealias OutboundOut = ByteBuffer

    func encode(data response: OutboundIn, out: inout ByteBuffer) throws {
        try out.writeJSONEncodable(response)
    }
}
