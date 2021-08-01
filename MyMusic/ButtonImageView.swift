//
//  ButtonImageView.swift
//  MyMusic
//
//  Created by 青島智明 on 2021/08/01.
//

import SwiftUI

struct ButtonImageView: View {
    // 画像ファイル名
    let imageName: String
    
    var body: some View {
        // 画像を表示する
        Image(imageName)
            //ボタン内の画像をカラー画像となる様に指定する
            .renderingMode(.original)
    } //bodyここまで
}

struct ButtonImageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImageView(imageName: "cymbal")
    }
}
