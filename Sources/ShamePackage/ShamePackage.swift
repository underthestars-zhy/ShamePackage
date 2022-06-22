import CoreML
import NaturalLanguage

@available(iOS 13.0, macOS 10.15, *)
public struct ShamePackage {
    public static let shared = Self()

    let sb = {
        try! NLModel(mlModel: SbOnYou_4(configuration: .init()).model)
    }()
    let shame = {
        try! NLModel(mlModel: HowShameAreYou_4(configuration: .init()).model)
    }()
    let tea = {
        try! NLModel(mlModel: TeaOnYou_1(configuration: .init()).model)
    }()

    public func sb(_ text: String) -> Bool {
        sb.predictedLabel(for: text) == "sb"
    }

    public func shame(_ text: String) -> Bool {
        shame.predictedLabel(for: text) == "shame"
    }

    public func tea(_ text: String) -> Bool {
        tea.predictedLabel(for: text) == "tea"
    }
}
