
import SwiftUI

func memolist() -> some View{
    NavigationView{
        memoCell()
        .navigationTitle("メモ")
        .navigationBarTitleDisplayMode(.large)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {}){
                    Image(systemName: "magnifyingglass")
                }
            }
            ToolbarItem(placement: .bottomBar){
                content()
            }
        }
    }
}
