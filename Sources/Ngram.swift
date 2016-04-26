
#if os(Linux)
import Glibc
#else
import Darwin
#endif

public func Ngram(_ content: String, type: NgramType = .Bigram) -> [String] {
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

/*
public class Ngram {
    var container: [String]

    init(_ content: String, type: NgramType = .Bigram) {
        self.container = []

        let width: Int

        switch type {
        case .Unigram:
            width = 1
            break
        case .Bigram:
            width = 2
            break
        case .Trigram:
            width = 3
            break
        }

        for i in 0...content.characters.count-1 {
            if i > (width - 2) {
                var ng = ""

                for var j = (width - 1); j >= 0; j -= 1 {
                    ng.append(content[content.startIndex.advanced(by: i - j)])
                }

                self.container.append(ng)
            }
        }

        print(container)
    }
}
*/
