**Database Design**

**Users table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    name    |   string    |  null:false  |
|    email   |   string    |  null:false  |
|  password  |   string    |  null:false  |

**User association**

*has_many :groups, through::group_users
*has_many :massages

------------------------------------------------

**Groups table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    name    |   string    |index,null:false|

**Group association**

*has_many :users, through::group_users
*has_many :massages, through::users

------------------------------------------------

**Group_users table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|   user_id  |   integer   |  t.references :users, null:false  |
|  group_id  |   integer   |  t.references :groups, null:false  |

**Group_user association**

------------------------------------------------

**Massages table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    body    |    text     |  null:false  |
|    image   |   string    |              |
|  user_id   |  integer    |  null:false  |
|  group_id  |  integer    |  null:false  |

**Massage association**

*belongs_to :user
*has_one :group, through::user

------------------------------------------------
