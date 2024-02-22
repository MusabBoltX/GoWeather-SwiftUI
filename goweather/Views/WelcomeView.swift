//
//  WelcomeView.swift
//  goweather
//
//  Created by Syed Musab on 21/02/2024.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack {
            Spacer() // Add Spacer to center the content vertically
            VStack(spacing: 20) {
                Text("Welcome to the Go Weather")
                    .bold()
                    .font(.title)
                Text("Please grant your current location to find weather status in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            Spacer() // Add Spacer to center the content vertically
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    WelcomeView()
}
