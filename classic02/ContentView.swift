//
//  ContentView.swift
//  classic02
//
//  Created by kai wen chen on 2021/9/3.
//
import SwiftUI

struct ContentView: View {
    
    @State var title = "學習如何Git版控"  //因為title放字串所以他會被定義成String型別
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators:false) {
            HStack {
                ForEach(Sections){ sec in
                    GeometryReader { geometry in
                        SectionView(section: sec)
                            .rotation3DEffect(Angle(degrees:
                                Double(geometry.frame(in: .global).minX - 30) / -20
                            ), axis: (x: 0, y: 10, z: 0))
                    }
                    .frame(width: 275, height: 275)
                }
            }
        }
    }
}

struct card : View {
    
    @Binding var title:String
    
    var body: some View{
        VStack {
            Text(title)
                .font(.headline)
                .padding(.top,40)
            Spacer()//填充空白
            Text(title)
                .padding(.bottom,40)
        }
        .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .frame(maxWidth:.infinity)
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
        .cornerRadius(16)
        .padding()
    }
    
}

struct SectionView: View {
    var section: Section
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                Image(section.logo)
            }
            
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: 275, height: 275)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: Image
    var color: Color
}

let Sections = [
    Section(title: "我要學好Swift UI", text: "打好基礎", logo: "Good Stdudent", image: Image(systemName: "rectangle.and.pencil.and.ellipsis"), color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))),
    Section(title: "我是第二筆資料", text: "好好認真", logo: "精神飽滿", image: Image(systemName: "highlighter"), color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))),
    Section(title: "我是第三筆資料", text: "好好認真", logo: "精神飽滿", image: Image(systemName: "highlighter"), color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))),
    Section(title: "我是第四筆資料", text: "好好認真", logo: "精神飽滿", image: Image(systemName: "highlighter"), color: Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
]

