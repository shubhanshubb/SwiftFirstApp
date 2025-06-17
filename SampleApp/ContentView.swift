import SwiftUI

struct GreetingView: View {
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
//            Image(.update)
//                .resizable()
//                .foregroundColor(Theme.black)
//                .frame(width: 300, height: 300)
//                .padding(.top, 20)
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
