# README

## DB Architecture

### Book Table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|text|null: false|

#### Association
- belongs_to :author
- has_many :reviews
