//
//  CreditsView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Floris Weijns on 10/03/2023.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        NavigationView(){
            VStack{
                Spacer()
                Spacer()
                Text("Credits")
                Spacer()
                Text("Floris Weijns")
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            .navigationBarTitle("Credits", displayMode: .inline)
        }
        
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
