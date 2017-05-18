**Database Design**

**Users table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    name    |   string    |index,null:false,unique :true|
|    email   |   string    |index,null:false,unique :true|
|  password  |   string    |  null:false  |

**Association**

* has_many :group_users

* has_many :groups, through: :group_users

* has_many :massages

------------------------------------------------

**Groups table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    name    |   string    |index,null:false,unique :true|

**Association**

* has_many :group_users

* has_many :users, through: :group_users

* has_many :massages

------------------------------------------------

**Group_users table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|   user_id  |   integer   |  t.references :users, null:false  |
|  group_id  |   integer   |  t.references :groups, null:false  |

**Association**

* belongs_to :user

* belongs_to :group

------------------------------------------------

**Massages table**

|   column   |    type     |    option    |
|:-----------|------------:|:------------:|
|    body    |    text     |index,null:false|
|    image   |   string    |              |
|  user_id   |  integer    |  null:false  |
|  group_id  |  integer    |  null:false  |

**Association**

* belongs_to :user

* belongs_to :group

------------------------------------------------
