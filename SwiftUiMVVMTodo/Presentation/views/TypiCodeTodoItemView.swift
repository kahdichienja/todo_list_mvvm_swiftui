//
//  TypiCodeTodoItemView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//
import MapKit
import SwiftUI

struct TypiCodeTodoItemView: View {
    @ObservedObject var viewModel: TypiCodeViewModel = TypiCodeViewModel()
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 1.98876,
            longitude: 38.98765
        ),
        latitudinalMeters: 30000,
        longitudinalMeters: 30000
    )
    var body: some View {
            Form{
                Section(header: Text("\(viewModel.typicodeUser?.username ?? "") Info")){
                    VStack(spacing: 5){
                        HStack{
                            Text("Name: \(viewModel.typicodeUser?.name ?? "")")
                            Spacer()
                            Image(systemName: "person.2.fill")
                        }
                        HStack{
                            Text("Email Address: \(viewModel.typicodeUser?.email ?? "")")
                            Spacer()
                            Image(systemName: "envelope.fill")
                        }
                        HStack{
                            Text("Phone: \(viewModel.typicodeUser?.phone ?? "")")
                            Spacer()
                            Image(systemName: "phone.fill")
                        }
                        HStack{
                            Text("Website: \(viewModel.typicodeUser?.website ?? "")")
                            Spacer()
                            Image(systemName: "link")
                        }
                    }
                }
                Section(header: Text("Address")){
                    VStack(spacing: 5){
                        HStack{
                            Text("Street: \(viewModel.typicodeUser?.address.street ?? "")")
                            Spacer()
                            Image(systemName: "globe")
                            
                        }
                        HStack{
                            Text("City: \(viewModel.typicodeUser?.address.city ?? "")")
                            Spacer()
                            Image(systemName: "personalhotspot")
                        }
                        HStack{
                            Text("Zip Code: \(viewModel.typicodeUser?.address.zipcode ?? "")")
                            Spacer()
                            Image(systemName: "rosette")
                        }

                    }
                }
                Section(header: Text("Company")){
                    VStack(alignment: .leading, spacing: 5){
                       Text("Name: \(viewModel.typicodeUser?.company.name ?? "")")
                       Text("Catch Phrase: \(viewModel.typicodeUser?.company.catchPhrase ?? "")")
                    }
                }
                Section(header: Text("Todo")){
                    VStack(alignment: .leading, spacing: 5){
                        Text(viewModel.todoItem?.title ?? "")
                    }
                }
                Map(
                    coordinateRegion:$region
                )
                .frame(height: 300).ignoresSafeArea()
                
                
            }
    }
}

//struct TypiCodeTodoItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TypiCodeTodoItemView(
//            userId: 1, item: TypicodeTodo(id: 1, userId: 1, title: "Title", completed: false)
//        )
//    }
//}
