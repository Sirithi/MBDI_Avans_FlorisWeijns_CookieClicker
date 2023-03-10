//
//  StoreView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Floris Weijns on 10/03/2023.
//

import SwiftUI

struct StoreView: View {
    @Binding var timesClicked: Int
    var body: some View {
        NavigationView(){
            VStack{
                HStack{
                    Spacer()
                    Text("Clicks: " + String(timesClicked))
                }
                Spacer()
                Text("Store")
                Spacer()
            }
            .navigationBarTitle("Store")
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView(timesClicked: .constant(0))
    }
}
