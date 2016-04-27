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

#if os(Linux)
import Glibc
#else
import Darwin
#endif

/// n-Gram analysis is a field in textual analysis which uses sliding window character
/// sequences in order to aid topic analysis.
///
/// - Parameter content: The text for n-Gram analysis
/// - Parameter type: The type of n-Gram (Unigram, Bigram or Trigram)
/// - returns: A array of n-Gram token
@warn_unused_result
public // @testable
func ngram(_ content: String, type: NgramType = .Bigram) -> [String] {
    var container: [String] = []
    let width: Int = type.rawValue

    for i in 0..<content.characters.count {
        if i > (width - 2) {
            var ng  = ""
            var j   = width - 1

            while j >= 0 {
                #if swift(>=3)
                let index = content.startIndex.advanced(by: i - j)
                #else
                let index = content.startIndex.advancedBy(i - j)
                #endif

                ng.append(content[index])

                j -= 1
            }

            container.append(ng)
        }
    }

    return container
}
