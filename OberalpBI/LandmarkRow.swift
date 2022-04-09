//
//  LandmarkRow.swift
//  Landmark
//
//  Created by OakHost Customer on 10/03/2022.
//

import SwiftUI

struct LandmarkRow: View {
    var brand: Brands

    var body: some View {
            HStack {
                
                Text(brand.brandname)

                Spacer()
            }
        }
    }

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(brand: "Salewa")
    }
}
