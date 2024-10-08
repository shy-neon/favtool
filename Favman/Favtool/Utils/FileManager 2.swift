//
//  FileManager.swift
//  Favtool
//
//  Created by Nicola Di Gregorio on 16/11/22.
//

import Foundation
import AppKit

//partial Paths
let library = FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask)
let imagePath = "Safari/Touch Icons Cache/Images/"
let touchIconPath = "Safari/Touch Icons Cache/"
let dbPath =  "Safari/Touch Icons Cache/TouchIconCacheSettings.db"
let readingList = "Safari/ReadingListArchives"

//Paths
let imageFolder = library.first?.appendingPathComponent(imagePath)
let touchIconFolder = library.first?.appendingPathComponent(touchIconPath);
let touchIconCacheSettings = library.first?.appendingPathComponent(dbPath)
let readingListFolder = library.first?.appendingPathComponent(readingList)
let safari = library.first?.appendingPathComponent("Safari")

func showSavePanel(path: URL) {
    let openPanel = NSOpenPanel()
    openPanel.title = "authorize image access"
    openPanel.directoryURL = path
    openPanel.canChooseDirectories = true
    openPanel.message = ""
    openPanel.prompt = "Authorize"
    openPanel.title = "Authorize access to file"
    openPanel.showsTagField = false
    openPanel.runModal()
}

func copyImage (_ from : URL, for site : Site) {
    let fileManager = FileManager.default
    let destination = imageFolder!.appendingPathComponent(site.md5 + ".png");
    do{
        try? fileManager.removeItem(at: destination);
        try fileManager.copyItem(at: from, to: destination);
        NSSound.blow?.play()
    } catch {
        print("error copying file");
        NSSound.basso?.play()
    }
}

func ImageFolderIsLocked (_ state : Bool) {
    do {
        try FileManager()
            .setAttributes([FileAttributeKey.immutable: state], ofItemAtPath: imageFolder!.path)
    } catch {
        print(error)
        NSSound.basso?.play()
    }
}

func createFolder (path: URL){
    do {
        try FileManager.default.createDirectory(atPath: path.absoluteString, withIntermediateDirectories: true, attributes: nil)
    } catch {
        print(error)
    }
}


func removeItems (path: URL){
    do {
        try FileManager().removeItem(at: path)
    } catch {
        print(error)
    }
}
