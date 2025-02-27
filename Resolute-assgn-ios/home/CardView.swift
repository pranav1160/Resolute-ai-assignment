import SwiftUI

struct CardView: View {
    let title: String
    let value: String
    let icon: String
    let currScore: Int
    let goal: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundColor(.white)
            .frame(width: 120, height: 150)
            .shadow(color: Color.black.opacity(0.2), radius: 4)
            .overlay {
                ZStack {
                    CircleProgressView(
                        myColor: .appred,
                        currScore: .constant(currScore),
                        goal: goal
                    )
                    .frame(width: 130, height: 130)

                    VStack {
                        Image(systemName: icon)
                            .font(.title)
                            .foregroundStyle(.appred)

                        Text(title)
                            .font(.subheadline)

                        Text(value)
                            .font(.caption)
                    }
                }
                .padding(8)
            }
    }
}
