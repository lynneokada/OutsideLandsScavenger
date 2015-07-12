//
//  GNHelper.swift
//  OutsideLandsScavenger
//
//  Created by Andrew Brandt on 7/11/15.
//  Copyright (c) 2015 Lynne Okada. All rights reserved.
//

let CLIENTID = "8315136"
let CLIENTTAG = "CF99A8AD5C8A9C3A21501252ABD68EB3"
let LICENSESTRING = "-- BEGIN LICENSE v1.0 3D88402F --\r\nname: \r\nnotes: Gracenote Open Developer Program\r\nstart_date: 0000-00-00\r\nclient_id: 8315136\r\nmusicid_file: enabled\r\nmusicid_text: enabled\r\nmusicid_stream: enabled\r\nmusicid_cd: enabled\r\nplaylist: enabled\r\nvideoid: enabled\r\nvideo_explore: enabled\r\nlocal_images: enabled\r\nlocal_mood: enabled\r\nvideoid_explore: enabled\r\nacr: enabled\r\nepg: enabled\r\n-- SIGNATURE 3D88402F --\r\nlAADAgAedY/BBHCd7nzzu5Osl5LeKXHxCw68dDxtj1QYXKX0AB8BZB9oJOGUKHV3V7yPfKqJclp+B7mwWebUKStnvuyb\r\n-- END LICENSE 3D88402F --\r\n"

class GNHelper: NSObject {
    
    var gnManager: GnManager
    var gnUser: GnUser
    
    override init() {
        gnManager = GnManager(license: LICENSESTRING, licenseInputMode: kLicenseInputModeString)
        var gnUserStore = GnUserStore()
        gnUser = GnUser(gnUserStoreDelegate: gnUserStore, clientId: CLIENTID, clientTag: CLIENTTAG, applicationVersion: "1.0.0")
        
    }
    
    func doLookupByArtist(artistName: String) {
    
        var musicId = GnMusicId(gnUser: gnUser, statusEventsDelegate: self)
        var error = NSError()
        
        //let response = musicId.findAlbumsWithAlbumTitle("", trackTitle: "", albumArtistName: artistName, trackArtistName: "", composerName: "", error: &error)
        
        var response = musicId.findAlbumsWithAlbumTitle("", trackTitle: "", albumArtistName: artistName, trackArtistName: "", composerName: "", error: error)
        
        for album in response.albums {
        
        }
    }
    
}

extension GNHelper: GnStatusEventsDelegate {

    func statusEvent(status: GnStatus, percentComplete: UInt, bytesTotalSent: UInt, bytesTotalReceived: UInt, cancellableDelegate canceller: GnCancellableDelegate!) {
    
    

    }

}
