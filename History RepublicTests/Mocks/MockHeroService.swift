import Foundation

@testable import History_Republic
final class MockHeroService: HeroServiceProtocol {
    
    var shouldReturnTrue = false
    
    func fetchAllHeroes() async throws -> [HeroResponse] {
        shouldReturnTrue = true
        return getMockHeroService()
    }
    
    func getMockHeroService() -> [HeroResponse] {
        
        return [HeroResponse(
            id: UUID(uuidString: "b0b6e4d5-8f36-4e30-9f79-7d55d7d1c0a5")!,
            nameHero: "Joan of Arc",
            title: "Joan of Arc",
            information: "Joan of Arc was a teen who helped turn the tide of the Hundred Years’ War.",
            image: "https://historyrepublic.com/wp-content/uploads/2025/05/Joan_of_Arc.jpg",
            url: "https://historyrepublic.com/joan-of-arc/"
        )
        ]
    }
    
    
}
