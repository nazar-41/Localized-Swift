# Localized-Swift

A lightweight Swift package designed to effortlessly localize your SwiftUI project.



https://github.com/nazar-41/Localized-Swift/assets/89843408/28f4b00f-f6b9-4fdd-9d67-d7ba7a2a0487



## Installation  (Swift Package Manager)

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

```swift
dependencies: [
    .Package(url: "https://github.com/nazar-41/Localized-Swift", branch: .main)
]
```
## Simple Integration

First thing is to import the framework and wrap your main view with `LocalizedView`

```swift
import Localized_Swift
import SwiftUI

@main
struct ExampleProjectApp: App {
    var body: some Scene {
        WindowGroup{
            LocalizedView { // wrap main view
                ContentView()
            }
        }
    }
}
```
## Localize Text

#### Method 1

To localize text, simply replace 

```swift
Text("Hello World")
```

 with
 
```swift
LText("Hello World")
```
#### Method 2

Use the .localized extension on a string:

```swift
Text("Hello World".localized)
```

#### ✅ Both methods are equally effective. Use whichever you find easier


## Language Switching

To change the language anywhere in your app, simply call:


```swift
LocalizationService.setLanguage(newLanguage)
```
## Demo

[Example Project](https://github.com/nazar-41/Localized-Swift/tree/main/Example)



```swift
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
            LocalizationService.setLanguage(newLanguage)
        }
    }
}
```
## 

Feel free to explore more about Localized-Swift in the [example](https://github.com/nazar-41/Localized-Swift/tree/main/Example) repository.

If you have any questions, feedback, or issues, please [raise an issue](https://github.com/nazar-41/Localized-Swift/issues/new). Contributions are welcome!
