struct GroupedSection<Identifier: Hashable, Row> {

    var identifier : Identifier
    var rows : [Row]

    static func group(_ rows : [Row], by identifierForRow: (Row) -> Identifier) -> [GroupedSection<Identifier, Row>] {
        return Dictionary(grouping: rows, by: identifierForRow).map(GroupedSection.init)
    }

}
