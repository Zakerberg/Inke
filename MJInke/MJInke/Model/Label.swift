//
//	Label.swift
//
//	Create by Michael 柏 on 1/8/2017
//	Copyright © 2017. All rights reserved.


import Foundation

struct Label{

	var cl : [Int]!
	var tabKey : String!
	var tabName : String!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		cl = dictionary["cl"] as? [Int]
		tabKey = dictionary["tab_key"] as? String
		tabName = dictionary["tab_name"] as? String
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if cl != nil{
			dictionary["cl"] = cl
		}
		if tabKey != nil{
			dictionary["tab_key"] = tabKey
		}
		if tabName != nil{
			dictionary["tab_name"] = tabName
		}
		return dictionary
	}

}
