//
//  mapView.swift
//  worldTraveler
//
//  Created by Kadir İldeniz on 15.01.2021.
//

import SwiftUI
import MapKit

struct mapView: View {
    @State var region: MKCoordinateRegion = MKCoordinateRegion(center: <#T##CLLocationCoordinate2D#>(latitute), span: <#T##MKCoordinateSpan#>)
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView()
    }
}
