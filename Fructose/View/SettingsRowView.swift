//
//  SettingsRowView.swift
//  Fructose
//
//  Created by Brian Lee on 2021/06/12.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var key: String
    var value: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    // MARK: - BODY
    var body: some View {
        HStack{
            Text(key).foregroundColor(Color.gray)
            Spacer()
            if let safeValue = value {
                Text(safeValue)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square")
                    .foregroundColor(.pink)
            } else {
                EmptyView()
            }
        }
        Divider().padding(.vertical, 4)
    }
}

// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(key: "Developer", value: nil, linkLabel: "Google", linkDestination: "www.google.com").preferredColorScheme(.dark).previewLayout(.fixed(width: 375, height: 60)).padding()
        }
    }
}
