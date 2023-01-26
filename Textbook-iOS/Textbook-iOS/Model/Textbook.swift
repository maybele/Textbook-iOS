//
//  Textbook.swift
//  Textbook-iOS
//
//  Created by FDCBele on 1/26/23.
//

import Foundation

struct Textbook{
    var title: String
    var list: [Subcategory] = []
}

struct Subcategory{
    let subcategory: String
}

//struct Subcategory{
//    let subcategory: [Chapter]
//}
//
//struct Chapter{
//    let chapter: String
//}
