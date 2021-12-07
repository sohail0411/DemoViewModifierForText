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
  var font:Font
  var backgroundColor:Color
  var width:CGFloat
  var height:CGFloat
  var alignment:Alignment
  var cornerRadius:CGFloat

public  init(font: Font, backgroundColor: Color, width: CGFloat,height:CGFloat,alignment:Alignment,cornerRadius:CGFloat) {
           self.font = font
           self.backgroundColor = backgroundColor
           self.width = width
           self.height = height
           self.alignment = alignment
           self.cornerRadius = cornerRadius

       }
 
public func body(content: Content) -> some View {
    content
      .font(font)
      .frame(width: width, height: height, alignment: alignment)
      .padding([.leading,.trailing], 5.0)
      .background(backgroundColor)
      .cornerRadius(5.0)
  }
}





@available(iOS 13.0, *)
extension View {
    @available(iOS 13.0, *)
    func e2eHiringTextModifier(with font: Font,backgroundColor:Color,width:CGFloat,height:CGFloat,alignment:Alignment,cornerRadius:CGFloat) -> some View {
        
        modifier(CustomeViewModifierForText(font: font, backgroundColor: backgroundColor, width: width, height: height, alignment: alignment, cornerRadius: cornerRadius))
    }
}
