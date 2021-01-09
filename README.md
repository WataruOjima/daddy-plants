## users テーブル
| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |
| url       | string |             |
| name      | string | null: false |
| profile   | text   |             |

### Association
- has_many: posts
- has_many: comments

## posts テーブル
| Column    | Type          | Options     |
| --------  | ----------    | ----------- |
| title     | string        | null: false |
| catch_copy| text          | null: false |
| concept   | text          | null: false |
| image     | ActiveStorage | null: false |
| user      | reference     | null: false |

### Association
- belongs_to: user
- has_many: comments

## comment テーブル
| Column    | Type      | Options     |
| --------  | --------  | ----------- |
| text      | text      | null: false |
| user      | reference | null: false |
| profile   | reference | null: false |

### Association
- belongs_to: post
- belongs_to: user