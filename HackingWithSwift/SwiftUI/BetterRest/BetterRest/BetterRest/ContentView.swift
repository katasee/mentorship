//
//  ContentView.swift
//  BetterRest
//
//  Created by Katasee on 22/10/2024.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    @State private var showingAlert = false
    @State private var sleepTime = ""
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }

    
    var body: some View {
        NavigationStack {
            Form {
                Section ("When do you want to wake up?") {
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        
                }
                
                Section("Describe amount of sleep") {
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                }
                
                Section ("Daily coffee intake") {
                    Picker ("^[Please enter a cup](inflect: true)", selection: $coffeeAmount) {
                        ForEach(0..<20) {
                            Text($0,format: .number)
                        }
                    }
                }
                Section("Calculate") {
                    Text(sleepTime)
                }
                
            }
            .navigationTitle("BetterRest")
            .toolbar {
               
            }
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK") {}
            } message: {
                Text(alertMessage)
            }
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
