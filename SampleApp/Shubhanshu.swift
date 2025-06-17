import SwiftUI

struct Profile {
    let name: String
    let email: String
    let phone: String
    let avatar: String
    let bio: String
    let location: String
    let portfolio: String
    let socials: [String: String]
}

let profile = Profile(
    name: "Shubhanshu Barnwal",
    email: "connect@shubhanshubb.dev",
    phone: "+918809848399",
    avatar: "https://shubhanshubb.dev/_next/image?url=%2Fassets%2FSB_Avatar.png&w=640&q=75",
    bio: "Mobile Application Developer | iOS | React Native",
    location: "Bengaluru,KA, IN",
    portfolio: "https://shubhanshubb.dev",
    socials: [
        "github": "https://github.com/shubhanshubb",
        "linkedin": "https://www.linkedin.com/in/shubhanshubb/",
        "twitter": "https://twitter.com/shubhanshubb"
    ]
)

struct Shubhanshu: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            Theme.background
                .ignoresSafeArea(.container, edges: .all)
            VStack(spacing: 0) {
                CustomHeader(title: "Shubhanshu's Profile", onBack: { dismiss() })
                ScrollView {
                    VStack(alignment: .center, spacing: 12) {
                        AsyncImage(url: URL(string: profile.avatar)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 112, height: 112)
                        .clipShape(Circle())
                        .padding(.top, 24)

                        Text(profile.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Theme.maroon)

                        Text(profile.email)
                            .foregroundColor(.gray)

                        Text(profile.phone)
                            .foregroundColor(.blue)
                            .underline()
                            .onTapGesture {
                                if let url = URL(string: "tel:\(profile.phone)") {
                                    UIApplication.shared.open(url)
                                }
                            }

                        HStack(spacing: 4) {
                            Image(systemName: "location.fill")
                                .foregroundColor(.gray)
                                .font(.system(size: 14))
                            Text(profile.location)
                                .foregroundColor(.gray)
                            Text("|")
                                .foregroundColor(.gray)
                            Image(systemName: "globe")
                                .foregroundColor(.blue)
                                .font(.system(size: 14))
                            Text("Portfolio")
                                .foregroundColor(.blue)
                                .underline()
                                .onTapGesture {
                                    if let url = URL(string: profile.portfolio) {
                                        UIApplication.shared.open(url)
                                    }
                                }
                        }

                        Text(profile.bio)
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            .padding(.horizontal)

                        Text("Socials:")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top, 16)

                        HStack(spacing: 24) {
                            Text("Github")
                                .foregroundColor(Theme.black)
                                .underline()
                                .foregroundColor(.black)
                                .onTapGesture {
                                    if let url = URL(string: profile.socials["github"]!) {
                                        UIApplication.shared.open(url)
                                    }
                                }
                            Text("LinkedIn")
                                .foregroundColor(Theme.blue)
                                .underline()
                                .onTapGesture {
                                    if let url = URL(string: profile.socials["linkedin"]!) {
                                        UIApplication.shared.open(url)
                                    }
                                }
                            Text("X")
                                .foregroundColor(Theme.black)
                                .underline()
                                .foregroundColor(.black)
                                .onTapGesture {
                                    if let url = URL(string: profile.socials["twitter"]!) {
                                        UIApplication.shared.open(url)
                                    }
                                }
                        }
                        .padding(.bottom, 24)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct Shubhanshu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Shubhanshu()
        }
    }
}
