//
//  TimeString.swift
//  Week5-EggTimer
//
//  Created by Mehmet Salih ÇELİK on 13.10.2021.
//

import Foundation

struct TimeString {
    static func beautify(sec time: Int) -> String {
        let minutes = time / 60 % 60
        let seconds = time % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
}
