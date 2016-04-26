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
        XCTAssertEqual(Ngram("Hello", type: .Unigram), ["H", "e", "l", "l", "o"])
    }

    func testBigram() {
        XCTAssertEqual(Ngram("Hello", type: .Bigram), ["He", "el", "ll", "lo"])
        XCTAssertEqual(Ngram("Hello"), ["He", "el", "ll", "lo"])
    }

    func testTrigram() {
        XCTAssertEqual(Ngram("Hello", type: .Trigram), ["Hel", "ell", "llo"])
    }

    /*func testUnigramPerformance() {
        self.measureBlock {
            let arr = Ngram("Hello", type: .Unigram)
        }
    }

    func testBigramPerformance() {
        self.measureBlock {
            let arr = Ngram("Hello", type: .Bigram)
        }
    }

    func testTrigramPerformance() {
        self.measureBlock {
            let arr = Ngram("Hello", type: .Trigram)
        }
    }*/
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
