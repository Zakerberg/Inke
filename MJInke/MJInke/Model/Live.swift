//
//	Live.swift
//
//	Create by Michael 柏 on 1/8/2017
//	Copyright © 2017. All rights reserved.


import Foundation

struct Live{

	var actInfo : ActInfo!
	var city : String!
	var creator : Creator!
	var extra : Extra!
	var group : Int!
	var id : String!
	var image : String!
	var landscape : Int!
	var like : [AnyObject]!
	var link : Int!
	var liveType : String!
	var multi : Int!
	var name : String!
	var onlineUsers : Int!
	var optimal : Int!
	var pubStat : Int!
	var roomId : Int!
	var rotate : Int!
	var shareAddr : String!
	var slot : Int!
	var status : Int!
	var streamAddr : String!
	var tagId : String!
	var token : String!
	var version : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let actInfoData = dictionary["act_info"] as? NSDictionary{
				actInfo = ActInfo(fromDictionary: actInfoData)
			}
		city = dictionary["city"] as? String
		if let creatorData = dictionary["creator"] as? NSDictionary{
				creator = Creator(fromDictionary: creatorData)
			}
		if let extraData = dictionary["extra"] as? NSDictionary{
				extra = Extra(fromDictionary: extraData)
			}
		group = dictionary["group"] as? Int
		id = dictionary["id"] as? String
		image = dictionary["image"] as? String
		landscape = dictionary["landscape"] as? Int
		like = dictionary["like"] as? [AnyObject]
		link = dictionary["link"] as? Int
		liveType = dictionary["live_type"] as? String
		multi = dictionary["multi"] as? Int
		name = dictionary["name"] as? String
		onlineUsers = dictionary["online_users"] as? Int
		optimal = dictionary["optimal"] as? Int
		pubStat = dictionary["pub_stat"] as? Int
		roomId = dictionary["room_id"] as? Int
		rotate = dictionary["rotate"] as? Int
		shareAddr = dictionary["share_addr"] as? String
		slot = dictionary["slot"] as? Int
		status = dictionary["status"] as? Int
		streamAddr = dictionary["stream_addr"] as? String
		tagId = dictionary["tag_id"] as? String
		token = dictionary["token"] as? String
		version = dictionary["version"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if actInfo != nil{
			dictionary["act_info"] = actInfo.toDictionary()
		}
		if city != nil{
			dictionary["city"] = city
		}
		if creator != nil{
			dictionary["creator"] = creator.toDictionary()
		}
		if extra != nil{
			dictionary["extra"] = extra.toDictionary()
		}
		if group != nil{
			dictionary["group"] = group
		}
		if id != nil{
			dictionary["id"] = id
		}
		if image != nil{
			dictionary["image"] = image
		}
		if landscape != nil{
			dictionary["landscape"] = landscape
		}
		if like != nil{
			dictionary["like"] = like
		}
		if link != nil{
			dictionary["link"] = link
		}
		if liveType != nil{
			dictionary["live_type"] = liveType
		}
		if multi != nil{
			dictionary["multi"] = multi
		}
		if name != nil{
			dictionary["name"] = name
		}
		if onlineUsers != nil{
			dictionary["online_users"] = onlineUsers
		}
		if optimal != nil{
			dictionary["optimal"] = optimal
		}
		if pubStat != nil{
			dictionary["pub_stat"] = pubStat
		}
		if roomId != nil{
			dictionary["room_id"] = roomId
		}
		if rotate != nil{
			dictionary["rotate"] = rotate
		}
		if shareAddr != nil{
			dictionary["share_addr"] = shareAddr
		}
		if slot != nil{
			dictionary["slot"] = slot
		}
		if status != nil{
			dictionary["status"] = status
		}
		if streamAddr != nil{
			dictionary["stream_addr"] = streamAddr
		}
		if tagId != nil{
			dictionary["tag_id"] = tagId
		}
		if token != nil{
			dictionary["token"] = token
		}
		if version != nil{
			dictionary["version"] = version
		}
		return dictionary
	}

}
