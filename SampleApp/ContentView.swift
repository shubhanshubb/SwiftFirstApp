import SwiftUI

struct GreetingView: View {
    @State private var inputText: String = ""
    var body: some View {
        VStack {
            Image(.gift)
                .resizable()
                .foregroundColor(Theme.blue)
                .frame(width: 200, height: 200)
            Text("A game changing journery!")
                .font(.title)
                .foregroundColor(Theme.maroon)
                .padding(.top, 20)
            TextField("Write your name...", text: $inputText)
                .padding(.all, 12)
                .background(Theme.black)
                .foregroundColor(Theme.white)
                .cornerRadius(8)
                .accentColor(Theme.white)
                .padding(.horizontal, 24)
                .padding(.top, 16)
            
            Text("You name: \(inputText)")
                .foregroundColor(Theme.grayText)
                .padding()
                
            NavigationLink(destination: Shubhanshu()) {
                Text("Shubhanshu's Profile")
                    .font(.headline)
                    .padding()
                    .background(Theme.primary)
                    .foregroundColor(Theme.white)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
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
}

#Preview {
    ContentView()
}
