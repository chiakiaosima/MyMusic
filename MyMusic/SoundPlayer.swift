//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 青島智明 on 2021/07/31.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // シンバルの音源のデータを読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    // シンバル用のプレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
        // シンバル用のプレイヤーに、音源データを指定
        cymbalPlayer = try AVAudioPlayer(data: cymbalData)
        
        //　シンバルの音源再生
        cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }  //cymbalPlay　ここまで
}
