import Foundation
import S5TF

protocol S5TFDataset where DataLoader: S5TFDataLoader {
    associatedtype DataLoader
    static var info: S5TFDatasetInfo { get }
    static var train: DataLoader { get }
}

public enum S5TFSplit {
    case train
    case validation
    case test
}

public struct S5TFDatasetInfo {
    var name: String
    var version: String
    var description: String
    var homepage: URL
    let numberOfTrain: Int
    let numberOfValid: Int
    let numberOfTest: Int
    let numberOfFeatures: Int
}
