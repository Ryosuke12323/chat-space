**Database Design**

**Users table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    name    |   string    |index,null:false|
|    email   |   string    |null:false,unique :true|
|  password  |   string    |  null:false  |

**Association**

* has_many :groups, through::group_users

* has_many :massages

------------------------------------------------

**Groups table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    name    |   string    |index,null:false|

**Association**

* has_many :users, through::group_users

* has_many :massages, through::users

------------------------------------------------

**Group_users table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|   user_id  |   integer   |  t.references :users, null:false  |
|  group_id  |   integer   |  t.references :groups, null:false  |

**Association**

------------------------------------------------

**Massages table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    body    |    text     |  null:false  |
|    image   |   string    |              |
|  user_id   |  integer    |index,null:false|
|  group_id  |  integer    |index,null:false|

**Association**

* belongs_to :user

* has_one :group, through::user

------------------------------------------------
