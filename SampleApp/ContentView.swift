import SwiftUI

extension Color {
init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")
    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)
    let r = Double((rgb >> 16) & 0xFF) / 255
    let g = Double((rgb >> 8) & 0xFF) / 255
    let b = Double(rgb & 0xFF) / 255
    self.init(red: r, green: g, blue: b)
}
}

struct GreetingView: View {
    var body: some View {
        
        Image(.gift)
            .resizable()
            .foregroundColor(Color(hex: "#2665A3"))
            .frame(width: 200, height: 200)
        Text("A game changing journery!")
            .font(.title)
            .foregroundColor(Theme.maroon)
            .padding(.top, 20)
        Image(.update)
            .resizable()
            .foregroundColor(Color(hex: "#2665A3"))
            .frame(width: 300, height: 300)
            .padding(.top, 20)
        Spacer()
            
    }
    
}


struct ContentView: View {
    var body: some View {
        ZStack {
            Theme.background
                .ignoresSafeArea()
            VStack {
                Text("Welcome to SwiftUI!")
                    .font(.title)
                    .padding()
                    .foregroundColor(Theme.primary)
                Spacer()
                GreetingView()
            }
        }
        .statusBar(hidden: false)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
