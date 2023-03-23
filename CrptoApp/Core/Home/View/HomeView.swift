//
//  HomeView.swift
//  CrptoApp
//
//  Created by suraj kumar on 24/03/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortFolio: Bool = false
    
    var body: some View {
        ZStack {
            ///background layer
            Color.theme.background
                .edgesIgnoringSafeArea(.all)
            
            ///Content Layer
            VStack {
                headerView
                    
                Spacer(minLength: 0)
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
        
    }
}


extension HomeView {
    
    private var headerView: some View {
        HStack {
            CircleButtonView(iconName: showPortFolio ? "info" : "plus")
                .background(
                    CircleButtonAnimation(animate: $showPortFolio)
                )
                .animation(.none)
            Spacer()
            Text(showPortFolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortFolio ? 180: 0))
                .onTapGesture {
                    showPortFolio.toggle()
                }
        }
        .padding(.horizontal)
    }
}
