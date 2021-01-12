//
//  LandmarkList.swift
//  SUTutorials
//
//  Created by 長谷川瞬哉 on 2021/01/11.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
