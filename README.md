# README

## DB Architecture

## Table List

- books
- users
- reviews
- shelves
- tags
- categories
- authors
- tags_reviews
- categories_reviews


### books Table
|Column|Type|Options|
|------|----|-------|
|name|string|unique: true, null: false, index: true|
|description|text||
|publisher|string||
|released_on|date||
|type|integer||
|amazon_url|text|null: false|
|author_id|references|foreign_key: true|

#### Association
- belongs_to :author
- has_many :reviews


### users Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false, index: true, unique: true|
|email|string|null: false|
|gendar|integer|null: false|
|birth_date|date|null: false|
|description|text||
|occupation|string||
|address|string||
|avatar|string||
|website_url|string||

#### Association
- has_many :reviews
- has_many :categories
- has_one :shelf
- has_many :shelves, through: :follows

### reviews Table
|Column|Type|Options|
|------|----|-------|
|body|text||
|book_id|references|foreign_key: true|
|user_id|references|foreign_key: true|
|rate|integer||
|reading_status|integer||
|read_on|date||
|comment|text||
|is_public|integer||
|is_spoiler|integer||

#### Association
- belongs_to :book
- belongs_to :user
- has_many :tags, through: :tags_reviews
- has_many :categories, through: :categories_reviews

### shelves Table
|Column|Type|Options|
|------|----|-------|
|name|text||
|user_id|references|foreign_key: true|
|description|text||
|type|integer||
|design|integer||
|is_public|integer||

#### Association
- belongs_to :user
- has_many :users, through: :follows

### tags Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

#### Association
- has_may :reviews, through: :tags_reviews

### categories Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|references|foreign_key: true|

#### Association
- belongs_to :user
- has_many :reviews

### authors Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|description|text||

#### Association
- has_many :books

### tags_reviews Table
|Column|Type|Options|
|------|----|-------|
|tag_id|references|foreign_key: true|
|review_id|references|foreign_key: true|

#### Association
- belongs_to :tag
- belongs_to :review

### categories_reviews Table
|Column|Type|Options|
|------|----|-------|
|category_id|references|foreign_key: true|
|review_id|references|foreign_key: true|

#### Association
- belongs_to :category
- belongs_to :review

### follows Table
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|shelf_id|references|foreign_key: true|

#### Association
- belongs_to :user
- belongs_to :shelf
