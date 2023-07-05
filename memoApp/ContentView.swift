// Xcode 14.3.1
// 疎結合低凝集


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        memolist()

    }
}


func memoCell() -> some View{
    // 変数(メモ分)
    List(1..<20){ memo in
        // NavigationLinkでリンク先(遷移先)のviewを定義
        NavigationLink(destination: Text("\(memo)番目のview")){
            // 遷移前のものここにメモの見出しと日時を表示させる
            HStack{
                Image(systemName: "play")
                VStack{
                    Text("見出し")
                    Text("日時")
                }
            }
        }
    }
}
// @Viewbuilderは複数のviewを返すときに使う。がなくても返せそう。本来どこで使用すべきなのかわからない。
//@ViewBuilder
func content() -> some View {
    VStack{
        Button(action: {}){
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width:50,height: 50)
            
        }
        .offset(y:10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
