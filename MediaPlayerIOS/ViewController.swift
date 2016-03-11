//
//  ViewController.swift
//  MediaPlayerIOS
//
//  Created by Usuário Convidado on 10/03/16.
//  Copyright © 2016 Thiago Nogueira. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var musicPlayer:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let musicPath: NSURL = NSURL(string: NSBundle.mainBundle().pathForResource("musica", ofType: "mp3")!)!
        print(musicPath)

        do {
            self.musicPlayer = try AVAudioPlayer(contentsOfURL: musicPath)
        } catch {
            print("erro ao iniciar o som com o arquivo especificado")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAudio(sender: UIBarButtonItem) {
        print("play audio acionado")
        self.musicPlayer!.play()
    }

    @IBAction func pauseAudio(sender: AnyObject) {
        print("pause audio acionado")
        if (self.musicPlayer!.playing) {
            self.musicPlayer!.pause()
        }
    }

    @IBAction func stopAudio(sender: UIBarButtonItem) {
        print("stop audio acionado")
        if (self.musicPlayer!.playing) {
            self.musicPlayer!.stop()
        }
    }
}

