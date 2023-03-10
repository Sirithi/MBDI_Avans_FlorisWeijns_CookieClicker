import SwiftUI

struct ContentView: View {
    @State var timesClicked = 0
    @State var isShowingSheet = false
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                Text("Cookie Clicker")
                Button(
                    action: {
                        print("Clicked cookie")
                        timesClicked = timesClicked + 1
                    },
                    label: {
                        Image("cookie")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                })
                Text("You clicked the cookie " + String(timesClicked) + " times")
                Spacer()
                HStack{
                    NavigationLink(destination: CreditsView()) {
                        Text("Credits")
                    }
                    Spacer()
                    NavigationLink(destination: StoreView(timesClicked: $timesClicked)) {
                        Text("Store")
                    }
                    
                }
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("Cookie Clicker")
            .sheet(
                isPresented: $isShowingSheet,
                content: {StoreView(timesClicked: $timesClicked)}
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
