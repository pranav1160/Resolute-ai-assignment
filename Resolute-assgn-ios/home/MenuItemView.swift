import SwiftUI

struct MenuItemView: View {
    let title: String
    let badgeCount: Int
    let destination: AnyView

    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Spacer()
                
                // Badge Count
                if badgeCount > 0 {
                    Text("\(badgeCount)")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(6)
                        .background(Circle().fill(Color.red))
                }
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 2)
        }
    }
}
