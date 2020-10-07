# frozen_string_literal: true

require 'grape'
require "json"

class KantoTrainApi < Grape::API
  format :json
  get '/' do
    { 'hello': 'world', 'params': params }
  end

  format :json
  get '/toyoko' do
    [
      {
        "name": "渋谷",
        "code": "TY01"
      },
      {
        "name": "代官山",
        "code": "TY02"
      },
      {
        "name": "中目黒",
        "code": "TY03"
      },
      {
        "name": "祐天寺",
        "code": "TY04"
      },
      {
        "name": "学芸大学",
        "code": "TY05"
      },
      {
        "name": "都立大学",
        "code": "TY06"
      },
      {
        "name": "自由が丘",
        "code": "TY07"
      },
      {
        "name": "田園調布",
        "code": "TY08"
      },
      {
        "name": "多摩川",
        "code": "TY09"
      },
      {
        "name": "新丸子",
        "code": "TY10"
      },
      {
        "name": "武蔵小杉",
        "code": "TY11"
      },
      {
        "name": "元住吉",
        "code": "TY12"
      },
      {
        "name": "日吉",
        "code": "TY13"
      },
      {
        "name": "綱島",
        "code": "TY14"
      },
      {
        "name": "大倉山",
        "code": "TY15"
      },
      {
        "name": "菊名",
        "code": "TY16"
      },
      {
        "name": "妙蓮寺",
        "code": "TY17"
      },
      {
        "name": "白楽",
        "code": "TY18"
      },
      {
        "name": "東白楽",
        "code": "TY19"
      },
      {
        "name": "反町",
        "code": "TY20"
      },
      {
        "name": "横浜",
        "code": "TY21"
      }
    ]
  end
end
