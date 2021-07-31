//
//  ContentView.swift
//  MyMusic
//
//  Created by 青島智明 on 2021/07/30.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundplayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack {
            // 背景画像を指定する
            Image("background")
            // リサイズする
                .resizable()
            // 画面いっぱいになる様にセーフエリア外までいっぱいになる様に指定
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            // アスペクト比（縦横比）を維持して短辺基準に収まる様にする
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            // 水平にレイアウト（横方向にレイアウト）
            HStack {
                //　シンバルボタン
                Button(action: {
                    // ボタンをタップした時のアクション
                    // シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                }) {
                    //　画像を表示する
                    Image("cymbal")
                    // ボタン内の画像をカラー画像となる様に指定する
                        .renderingMode(.original)
                } //シンバルボタンここまで
                
                // ギターボタン
                Button(action: {
                    //　ボタンをタップした時のアクション
                    // ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                }) {
                    //　画像を表示する
                    Image("guitar")
                    //　ボタン内の画像をカラー画像となる様に指定する
                        .renderingMode(.original)
                } //ギターボタン　ここまで
            } //Hstack　ここまで
        }  // ZStack　ここまで
    }  // body　ここまで

}  // ContentViewここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
