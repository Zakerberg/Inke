//
//	Extra.swift
//
//	Create by Michael 柏 on 1/8/2017
//	Copyright © 2017. All rights reserved.


import Foundation

struct Extra{

	var cover : AnyObject!
	var label : [Label]!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		cover = dictionary["cover"] as? AnyObject
		label = [Label]()
		if let labelArray = dictionary["label"] as? [NSDictionary]{
			for dic in labelArray{
				let value = Label(fromDictionary: dic)
				label.append(value)
			}
		}
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if cover != nil{
			dictionary["cover"] = cover
		}
		if label != nil{
			var dictionaryElements = [NSDictionary]()
			for labelElement in label {
				dictionaryElements.append(labelElement.toDictionary())
			}
			dictionary["label"] = dictionaryElements
		}
		return dictionary
	}

}
