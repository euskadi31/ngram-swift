
extension String {
    subscript (i: Int) -> Character {
        return self[self.startIndex.advanced(by: i)]
    }
}
