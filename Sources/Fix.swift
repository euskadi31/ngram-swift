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

extension String {
    subscript (index: Int) -> Character {
        return self[self.startIndex.advanced(by: index)]
    }
}
