import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Profile")
                .font(.title2)
                .bold()
                .foregroundStyle(.gray)
                .padding(.horizontal)
            
            VStack {
                HStack {
                    // Profile Image
                    Image("profile") // Replace with actual image name
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.green, lineWidth: 4)
                        )
                    
                    VStack(alignment: .leading) {
                        Text("Aditiya")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                        
                        Text("55 y")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("Male")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Divider()
                
                // Grid Layout
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ProfileItem(icon: "person.2.fill", title: "Weight", value: "62 kg")
                    ProfileItem(icon: "drop.fill", title: "Oxygen", value: "55 y.o.")
                    ProfileItem(icon: "cross.fill", title: "Sugar", value: "300mg/dl")
                    ProfileItem(icon: "arrow.up.and.down", title: "Height", value: "163 cm")
                    ProfileItem(icon: "heart.fill", title: "Heartbeat", value: "94 per/min")
                    ProfileItem(icon: "waveform.path.ecg", title: "BP", value: "80mm hg")
                }
                .padding()
            }
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            )
            .padding()
        }
    }
}

struct ProfileItem: View {
    var icon: String
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray)
                .frame(width: 30, height: 30)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(value)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.black)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}
