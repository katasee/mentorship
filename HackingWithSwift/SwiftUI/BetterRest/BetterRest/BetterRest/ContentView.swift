//
//  ContentView.swift
//  BetterRest
//
//  Created by Katasee on 22/10/2024.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp: Date = defaultWakeTime
    @State private var sleepAmount: Double = 8.0
    @State private var coffeeAmount: Int = 1
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    @State private var showingAlert: Bool = false
    @State private var sleepTime: String = ""
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }

    var body: some View {
        NavigationStack {
            Form {
                datePicker
                sleepAmountStepper
                coffeeAmountPicker
                calculate
            }
            .navigationTitle("BetterRest")
        }
    }
    
    var datePicker: some View{
        Section ("When do you want to wake up?") {
            DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
        }
        .onChange(of: wakeUp) {_ in
            calculateBedTime()
        }
    }
    
    var sleepAmountStepper: some View {
        Section("Describe amount of sleep") {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        }
        .onChange(of: sleepAmount) {_ in
            calculateBedTime()
        }
    }
    
    var coffeeAmountPicker: some View {
        Section ("Daily coffee intake") {
            Picker ("^[Please enter a cup](inflect: true)", selection: $coffeeAmount) {
                ForEach(0..<20) {
                    Text($0,format: .number)
                }
            }
        }
        .onChange(of: coffeeAmount) {_ in
            calculateBedTime()
        }
    }
    
    var calculate: some View {
        Section("Calculate") {
            HStack {
                 Text("Your ideal bedtime is")
                 Spacer()
                 Text("\(sleepTime)")
             }
            .font(.title2)
         }
    }
     
 func calculateBedTime () {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let  calculatedSleepTime = wakeUp - prediction.actualSleep
            sleepTime = calculatedSleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtimes"
        }
        
        showingAlert = true
    }
}

#Preview {
    ContentView()
}
