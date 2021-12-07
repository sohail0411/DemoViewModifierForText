//
//  CustomeViewModifierForText.swift
//  ViewModifier-Demo
//
//  Created by Sohail Shaik on 06/12/21.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public struct CustomeViewModifierForText: ViewModifier {
  let font:Font
  let backgroundColor:Color
  let width:CGFloat
  let height:CGFloat
  let alignment:Alignment
  let cornerRadius:CGFloat
    
 
public func body(content: Content) -> some View {
    content
      .font(font)
      .frame(width: width, height: height, alignment: alignment)
      .padding([.leading,.trailing], 5.0)
      .background(backgroundColor)
      .cornerRadius(5.0)
  }
}
