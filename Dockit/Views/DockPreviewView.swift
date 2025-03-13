import SwiftUI
import AppKit

struct DockPreviewView: View {
    var body: some View {
        GeometryReader { _ in
            ZStack {
                // 使用更简单的毛玻璃效果
                VisualEffectView(material: .hudWindow, blendingMode: .behindWindow)
                    .mask {
                        RoundedRectangle(cornerRadius: 8)
                    }
                
                // 简化边框
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(Color.gray.opacity(0.3), lineWidth: 1)
                
                // 使用系统主题色边框
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.accentColor, lineWidth: 4)
            }
            .padding(4)
        }
    }
}

// 优化毛玻璃效果视图
struct VisualEffectView: NSViewRepresentable {
    let material: NSVisualEffectView.Material
    let blendingMode: NSVisualEffectView.BlendingMode
    
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.material = material
        view.blendingMode = blendingMode
        view.state = .active
        return view
    }
    
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        // 只在必要时更新属性
        if nsView.material != material {
            nsView.material = material
        }
        if nsView.blendingMode != blendingMode {
            nsView.blendingMode = blendingMode
        }
    }
} 
