//
//  LandmarkList.swift
//  Landmark
//
//  Created by OakHost Customer on 10/03/2022.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var brands = [Brands]()
    
    var body: some View {
        NavigationView {            
            List(brands) { brand in
            //List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(brand: brand)
                } label: {
                    LandmarkRow(brand: brand)
                }
            }
            .navigationTitle("Brands")
        }
        .navigationViewStyle(.stack) // Fix für NavigationView
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
