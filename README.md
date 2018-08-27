# Penumbra: UIView/UIButton Subclass to create perfect, magical diffused drop shadows.
#### *pe•num•bra*
**/pəˈnəmbrə/**

*noun*

the partially shaded outer region of the shadow cast by an opaque object.

<p align="center">
  <img src="https://i.imgur.com/Jg0V9q6.png">
</p>

This repo is inspired by this [blog post](http://blog.invisionapp.com/how-to-make-the-perfect-diffused-drop-shadow/) from InVision which taught me to make these amazing, fluffy drop shadows in Sketch 3. It is a spin off of the work of [bennibrightside](https://github.com/bennibrightside) called [ShadowView](https://github.com/bennibrightside/ShadowView).


[![CI Status](http://img.shields.io/travis/Caleb Stultz/Penumbra.svg?style=flat)](https://travis-ci.org/Caleb Stultz/Penumbra)
[![Version](https://img.shields.io/cocoapods/v/Penumbra.svg?style=flat)](http://cocoapods.org/pods/Penumbra)
[![License](https://img.shields.io/cocoapods/l/Penumbra.svg?style=flat)](http://cocoapods.org/pods/Penumbra)
[![Platform](https://img.shields.io/cocoapods/p/Penumbra.svg?style=flat)](http://cocoapods.org/pods/Penumbra)

## Usage

Penumbra views can be used with in Interface Builder or be build programatically. The properties for `cornerRadius`, `shadowOffset`, `shadowRadius`, `shadowOpacity` and `shadowColor` can be modified via Interface Builder.

## Installation

To install Penumbra, clone this repository and drag the `Penumbra` folder into your Xcode project.

## Steps

1.) Create a UIView or UIButton in Interface Builder.

2.) Change the UIView/UIButton's identity to inherit from PenumbraView/PenumbraButton depending on what element you're trying to modify.

3.) In the Attributes Inspector, feel free to tweak any settings you'd like thanks to @IBInspectable.

![Screenshot](https://github.com/kalub92/Penumbra/blob/master/@IBInspectable.png)

4.) Enjoy the magical diffused drop shadows! 🔮

## Author

Caleb Stultz, kalub92@gmail.com

## License

Penumbra is available under the MIT license. See the LICENSE file for more info.
=======
