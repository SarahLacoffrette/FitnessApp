//
//  test.swift
//  FitnessApp
//
//  Created by Sarah Lacoffrette on 21/05/2023.
//

import SwiftUI

struct test: View {
    @State private var selectedNumber = 0
        let numbers = Array(0...20)

        var body: some View {
            VStack {
                HStack{
                    Text("Nombre sélectionné:")
                    Picker(selection: $selectedNumber, label: Text("Sélectionner un nombre")) {
                        ForEach(0..<numbers.count) {
                            Text(String(numbers[$0]))
                        }
                    }
                }
                Button(action: {
                    // ici vous pouvez ajouter l'action que vous voulez lors du clic sur le bouton
                }) {
                    Text("Confirmer le nombre")
                }

                
            }
        }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
