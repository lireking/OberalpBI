//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by OakHost Customer on 10/03/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var currentday = [Currentday]()
       
    var body: some View {
        ScrollView  {
            //MapView(coordinate: landmark.locationCoordinate)
            //    .ignoresSafeArea(edges: .top)
            //    .frame(height: 300)

            //CircleImage(image: landmark.image)
            //    .offset(y: -130)
            //    .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(currentday.totalamount)
                    .font(.title)

                HStack {
                    Text(currentday.brandline)
                    Spacer()
                    Text(brand.brandname)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                //Text("About \(brand.brandname)")
                //    .font(.title2)
                //Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(currentday.brandname)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(brand: "Salewa")
    }
}
