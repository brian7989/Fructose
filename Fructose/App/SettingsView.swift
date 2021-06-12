//
//  SettingsView.swift
//  Fructose
//
//  Created by Brian Lee on 2021/06/12.
//

import SwiftUI


struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView(content: {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle"), content: {
                        Divider().padding(.vertical, 4)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium and much more.")
                                .font(.footnote)
                        }
                    })
                    
                    // MARK: - SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggling the switch in this box. This will restart the onboarding process and you’ll be abale to see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        GroupBox{
                            Toggle(isOn: $isOnboarding, label: {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            })
                        }
                    })
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        Divider().padding(.vertical, 4)
                        SettingsRowView(key: "Developer", value: "Brian Lee")
                        SettingsRowView(key: "Designer", value: "Brian Lee")
                        SettingsRowView(key: "Compatibility", value: "iOS 15")
                        SettingsRowView(key: "Facebook", linkLabel: "Facebook", linkDestination: "www.facebook.com/brian.ts.lee.0907")
                        SettingsRowView(key: "Github", linkLabel: "GitHub", linkDestination: "www.github.com/brian7989")
                        SettingsRowView(key: "SwiftUI", value: "2.0")
                        SettingsRowView(key: "Version", value: "1.0.0")
                    })
                }
            }
            .navigationTitle("Settings")
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
            .padding()
        })
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
