// Xcode 14.3.1

import SwiftUI

struct ContentView: View {

    @State private var memolist = ["今日のメモ","Todo"]
    @State private var  memolistSub = ["aa","bb","cc"]
 //   @State var editMode: Editmode = .inactive
    var body: some View {
        
        // 参考: https://capibara1969.com/2266/
        
        NavigationView{
            // ForEachを用いた動的リスト
            List{
                Section {
                    
                    ForEach(0 ..< memolist.count) { index in
                        Text(memolist[index])
                    }
                    .onDelete(perform: rowRemove)
                } header: {
                    Text("TODO")
                }
                
                // Section
                Section {
                    
                    Text("aaa")
                }header: {
                    Text("memo")
                }
                //   Spacer(minLength: 20) // 空白 size:minLength
            }
            // Editボタン
            .toolbar{
              EditButton()
            }
            .listStyle(.insetGrouped)

            
            // 削除はできなくなるがこの書き方もできる
            /*
             List(memolistSub, id: \.self){ memo in
             Text(memo)
             }
             .listStyle(.plain) // Listのスタイル何も指定しない場合はDefaultListStyle()
             */
            
        }
    }
    
    func rowRemove(offsets: IndexSet) {
        memolist.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
