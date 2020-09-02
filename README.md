# README

## usersテーブル
|column|type|options|
|------|----|-------|
|nickname|string|null: false|
|e-mail|string|null: false|
|password|string|null: false|
### Association
has_many :seminars
has_many :trainings
has_many :Short_courses
has_many :studys
has_many :sns


## adminテーブル
|column|type|options|
|------|----|-------|
|name|string|null: false|
|password|string|null: false|
### Association
belongs_to :seminar
belongs_to :training
belongs_to :Short_course
belongs_to :study


## seminarテーブル
|column|type|options|
|------|----|-------|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|postal_code|integer|null: false|
|prefecture|integer|null: false|
|city|string|null :false|
|block|string|null :false|
|building|string||
|phone_number|integer|null :false|
|company_name|string|null :false|
|company_phone|integer|null :false|
|user_id|integer|null :false,foreign_key:true|
|admin_id|integer|null :false,foreign_key:true|
### Association
belongs_to :user
belongs_to :admin


## trainingテーブル
|column|type|options|
|------|----|-------|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|postal_code|integer|null: false|
|prefecture|integer|null: false|
|city|string|null :false|
|block|string|null :false|
|building|string||
|phone_number|integer|null :false|
|company_name|string|null :false|
|company_phone|integer|null :false|
|user_id|integer|null :false,foreign_key:true|
|admin_id|integer|null :false,foreign_key:true|
### Association
belongs_to :user
belongs_to :admin


## short_courseテーブル
|column|type|options|
|------|----|-------|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|postal_code|integer|null: false|
|prefecture|integer|null: false|
|city|string|null :false|
|block|string|null :false|
|building|string||
|phone_number|integer|null :false|
|company_name|string|null :false|
|company_phone|integer|null :false|
|user_id|integer|null :false,foreign_key:true|
|admin_id|integer|null :false,foreign_key:true|
### Association
belongs_to :user
belongs_to :admin


## studyテーブル
|column|type|options|
|------|----|-------|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|postal_code|integer|null: false|
|prefecture|integer|null: false|
|city|string|null :false|
|block|string|null :false|
|building|string||
|phone_number|integer|null :false|
|company_name|string|null :false|
|company_phone|integer|null :false|
|user_id|integer|null :false,foreign_key:true|
|admin_id|integer|null :false,foreign_key:true|
### Association
belongs_to :user
belongs_to :admin


## snsテーブル
|column|type|options|
|------|----|-------|
|provider|string|null: false|
|uid|string|null: false|
### Association
belogs_to :user