import Defaults
import Foundation

extension Defaults.Keys {
    static let exposedPixels = Key<Int>("exposedPixels", default: 10)
    static let triggerAreaWidth = Key<Int>("triggerAreaWidth", default: 10) 
    static let fps = Key<Int>("fps", default: 30)
    static let isEnabled = Key<Bool>("isEnabled", default: true)
    static let respectSpaces = Key<Bool>("respectSpaces", default: true)
    static let screenWithMouse = Key<Bool>("screenWithMouse", default: false)
    static let showPreview = Key<Bool>("showPreview", default: true)
    // 添加通知样式设置
    static let notchStyle = Key<String>("notchStyle", default: "auto")
} 
