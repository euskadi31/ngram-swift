//===----------------------------------------------------------------------===//
//
// This source file is part of the Ngram open source project
//
// Copyright (c) 2016 Axel Etcheverry.
// Licensed under MIT
//
// See LICENSE.md for license information
// See CONTRIBUTORS.txt for the list of ngram project authors
//
//===----------------------------------------------------------------------===//

import XCTest
@testable import Ngram

class NgramTest: XCTestCase {

    func testUnigram() {
        XCTAssertEqual(ngram("Hello", type: .Unigram), ["H", "e", "l", "l", "o"])
    }

    func testBigram() {
        XCTAssertEqual(ngram("Hello", type: .Bigram), ["He", "el", "ll", "lo"])
        XCTAssertEqual(ngram("Hello"), ["He", "el", "ll", "lo"])
    }

    func testTrigram() {
        XCTAssertEqual(ngram("Hello", type: .Trigram), ["Hel", "ell", "llo"])
    }

    func testPerformanceUnigram() {
        #if swift(>=3)
            self.measure {
                _ = ngram("Hello", type: .Unigram)
            }
        #else
            self.measureBlock {
            _ = ngram("Hello", type: .Unigram)
            }
        #endif
    }

    func testPerformanceBigram() {
        #if swift(>=3)
            self.measure {
                _ = ngram("Hello", type: .Bigram)
            }
        #else
            self.measureBlock {
                _ = ngram("Hello", type: .Bigram)
            }
        #endif
    }

    func testPerformanceTrigram() {
        #if swift(>=3)
            self.measure {
                _ = ngram("Hello", type: .Trigram)
            }
        #else
            self.measureBlock {
            _ = ngram("Hello", type: .Trigram)
            }
        #endif
    }
}

/*#if os(Linux)
extension NgramTest: XCTestCaseProvider {
    var allTests: [(String, () throws -> Void)] {
        return [
            ("testUnigram", testUnigram),
            ("testBigram", testBigram),
            ("testTrigram", testTrigram)
        ]
    }
}
#endif*/
