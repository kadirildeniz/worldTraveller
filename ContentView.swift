//
//  ContentView.swift
//  worldTraveler
//
//  Created by Kadir İldeniz on 13.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State var fahrenheitValue: String =  ""
    let numberFormatter : NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
    }()
    func convertToCelcius() -> String {
        
        if let value = Double(fahrenheitValue){
            let fahrenheit = Measurement<UnitTemperature>(value: value, unit: .fahrenheit)
            let celciusValue = fahrenheit.converted(to: .celsius)
            
            return numberFormatter.string(from: NSNumber(value: celciusValue.value)) ?? "???"
            
        }
        else{
            return "?"
        }
        
    }
    
    var body: some View {
        VStack{
            TextField("Value", text:$fahrenheitValue).padding(.all).font(Font.system(size: 62)).multilineTextAlignment(.center).keyboardType(.decimalPad).font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
            Text("Fahrenheit")
            Text("is acctualy").foregroundColor(.black)
            Text(convertToCelcius())
            
            Text("deggress celcius 🔥").foregroundColor(.red)
            Spacer()
            
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.orange)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
