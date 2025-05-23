//
//  EditProspectView.swift
//  HotProspects
//
//  Created by Zoltan Vegh on 23/05/2025.
//

import SwiftUI

struct EditProspectView: View {
    @Bindable var prospect: Prospect
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section("Contact Info") {
                TextField("Name", text: $prospect.name)
                TextField("Email Address", text: $prospect.emailAddress)
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
            }
        }
        .navigationTitle("Edit Prospect")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    EditProspectView(prospect: Prospect(name: "Zoltan", emailAddress: "zoltan@apple.com", isContacted: false))
}
