//
//  ContentView.swift
//  ExampleProject
//
//  Created by Nazar Velkakayev on 17.06.2024.
//

import SwiftUI
import Localized_Swift

struct ContentView: View {
    @State private var selectedLanguage: String = "en"

    var languages = ["en", "ru", "fr"]

    var body: some View {
        VStack {
            List{
                Picker("Select Your Language", selection: $selectedLanguage) {
                    ForEach(languages, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                
                Section(header: Text("**LText**")) {
                    LText("welcome_message")
                    LText("login_button")
                    LText("error_message")
                }
                .textCase(nil)
                
                Section(header: Text("**.localized**")){
                    Text("welcome_message".localized)
                    Text("login_button".localized)
                    Text("error_message".localized)
                }
                .textCase(nil)

            }
        }
        .onChange(of: selectedLanguage) { newLanguage in
            DispatchQueue.main.async{
                LocalizationService.setLanguage(newLanguage)
            }
        }
    }
}

#Preview {
    ContentView()
}
