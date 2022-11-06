import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("profile")
                .resizable()
                .frame(width: 200.0, height: 220.0)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
            
            VStack(alignment: .center, spacing: 7) {
                Text("Apiphoom Chuenchompoo")
                    .font(.system(size: 25, weight: .bold))
                HStack{
                    Image(systemName: "birthday.cake")
                    Text("23 December 2004")
                        .font(.system(size: 16, weight: .bold))
                        
                }
                Divider()
                Text("Yesterday is history, tomorrow is a mystery, but today is a gift. That’s why it is called the present")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.white)
            .padding()
            
        }.background(
            Image("profileBG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .brightness(-0.3)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
