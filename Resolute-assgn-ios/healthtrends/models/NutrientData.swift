struct NutrientData: Identifiable {
    let id = UUID()
    let name: String
    let value: Double
    let type: String // "Recommended" or "Consumed"
}
