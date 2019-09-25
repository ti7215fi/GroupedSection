public struct GroupedSection<Identifier: Hashable, Row> {

    public let identifier : Identifier
    public let rows : [Row]

    public static func group(_ rows : [Row], by identifierForRow: (Row) -> Identifier) -> [GroupedSection<Identifier, Row>] {
        return Dictionary(grouping: rows, by: identifierForRow).map(GroupedSection.init)
    }

}
