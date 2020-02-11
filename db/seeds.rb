user = User.create!(
  company:        "サンプル不動産",
  genre:          "developer",
  name:           "サンプル太郎",
  work_location:  "東京都港区1-1",
  email:          "sample@gmail.com",
  phone_number:   "08011112222",
  password:       "sample2020",
)

user2 = User.create!(
  company:        "坂ビル",
  genre:          "developer",
  name:           "坂口健太",
  work_location:  "東京都港区1-2",
  email:          "saka@gmail.com",
  phone_number:   "08033334444",
  password:       "sakasaka",
)

user3 = User.create!(
  company:        "四井戸不動産",
  genre:          "developer",
  name:           "松田翔",
  work_location:  "東京都港区1-3",
  email:          "matu@gmail.com",
  phone_number:   "08088885555",
  password:       "matumatu",
)

user4 = User.create!(
  company:        "JT東日本開発",
  genre:          "developer",
  name:           "小倉俊",
  work_location:  "東京都港区1-4",
  email:          "ogu@gmail.com",
  phone_number:   "08022228888",
  password:       "oguogu",
)

user5 = User.create!(
  company:        "サンプル商事",
  genre:          "tenant",
  name:           "サンプル花子",
  work_location:  "東京都港区1-5",
  email:          "sample2@gmail.com",
  phone_number:   "08022223333",
  password:       "sample2020",
)


user6 = User.create!(
  company:        "セカンドリテイリング",
  genre:          "tenant",
  name:           "佐藤三郎",
  work_location:  "東京都港区1-6",
  email:          "sato@gmail.com",
  phone_number:   "08044445555",
  password:       "satosato",
)

user7 = User.create!(
  company:        "ジュングループ",
  genre:          "tenant",
  name:           "栗山百秋",
  work_location:  "東京都港区1-7",
  email:          "kuri@gmail.com",
  phone_number:   "08066667777",
  password:       "kurikuri",
)

user8 = User.create!(
  company:        "良物計画",
  genre:          "tenant",
  name:           "阿部貢",
  work_location:  "東京都港区1-8",
  email:          "abe@gmail.com",
  phone_number:   "08077774444",
  password:       "abeabe",
)

space1 = Space.create!(
  location:        "東京都世田谷区1-1",
  mall_name:       "二子玉川ライズ",
  floor:           "2",
  block_number:    "203",
  area:            "158.60",
  rent:            "38000",
  sector:          "retail",
  user_id:         "1",
)

image1 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-1_1.jpg"),
  space_id:        "1"
)

image2 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-1_2.jpg"),
  space_id:        "1"
)

image3 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-1_3.jpg"),
  space_id:        "1"
)

space2 = Space.create!(
  location:        "千葉県幕張市1-1",
  mall_name:       "イオンモール幕張",
  floor:           "1",
  block_number:    "102",
  area:            "180.80",
  rent:            "20000",
  sector:          "retail",
  user_id:         "3",
)

image4 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-2_1.jpg"),
  space_id:        "2"
)

image5 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-2_2.jpg"),
  space_id:        "2"
)

space3 = Space.create!(
  location:        "東京都世田谷区1-1",
  mall_name:       "たまプラーザテラス",
  floor:           "3",
  block_number:    "302",
  area:            "170.40",
  rent:            "26000",
  sector:          "retail",
  user_id:         "2",
)

image6 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-3_1.jpg"),
  space_id:        "3"
)

image7 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-3_2.jpg"),
  space_id:        "3"
)

space4 = Space.create!(
  location:        "東京都品川区1-1",
  mall_name:       "アトレ品川",
  floor:           "3",
  block_number:    "322",
  area:            "90.30",
  rent:            "48000",
  sector:          "food",
  user_id:         "1",
)

image8 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-4_1.jpg"),
  space_id:        "4"
)

image9 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-4_2.jpg"),
  space_id:        "4"
)

space5 = Space.create!(
  location:        "兵庫県西宮市1-1",
  mall_name:       "西宮ガーデンズ",
  floor:           "2",
  block_number:    "222",
  area:            "160.80",
  rent:            "39000",
  sector:          "retail",
  user_id:         "4",
)

image10 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-5_1.jpeg"),
  space_id:        "5"
)

image11 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-5_2.jpg"),
  space_id:        "5"
)

space6 = Space.create!(
  location:        "埼玉県さいたま市1-1",
  mall_name:       "コクーンシティ",
  floor:           "1",
  block_number:    "180",
  area:            "270.58",
  rent:            "21000",
  sector:          "retail",
  user_id:         "2",
)

image12 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-6_1.jpg"),
  space_id:        "6"
)

image13 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-6_2.jpg"),
  space_id:        "6"
)

space7 = Space.create!(
  location:        "千葉県柏市1-1",
  mall_name:       "ららぽーと柏の葉",
  floor:           "3",
  block_number:    "340",
  area:            "400.72",
  rent:            "24000",
  sector:          "retail",
  user_id:         "2",
)

image14 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-7_1.jpg"),
  space_id:        "7"
)

image15 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/s-7_2.jpg"),
  space_id:        "7"
)

brand1 = Brand.create!(
  name:             "無印良品",
  category_large:   "物販店舗",
  category_small:   "生活雑貨",
  target_sex:       "不問",
  target_age:       ["〜10代", "20代", "30代", "40代", "50代", "60代〜"],
  area_max:         "1000",
  area_min:         "200",
  sales_record:     "非公開",
  user_id:         "8",
)

image16 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-1_1.jpg"),
  brand_id:        "1"
)

image17 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-1_2.jpg"),
  brand_id:        "1"
)

brand2 = Brand.create!(
  name:             "アダムエロペ",
  category_large:   "物販店舗",
  category_small:   "レディスファッション",
  target_sex:       "女性",
  target_age:       [ "20代", "30代"],
  area_max:         "120",
  area_min:         "60",
  sales_record:     "新宿店：年商4.5億",
  user_id:         "7",
)

image18 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-2_1.jpg"),
  brand_id:        "2"
)

image19 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-2_2.jpg"),
  brand_id:        "2"
)


brand3 = Brand.create!(
  name:             "京樽",
  category_large:   "飲食店舗",
  category_small:   "寿司・海鮮",
  target_sex:       "不問",
  target_age:       ["不問"],
  area_max:         "20",
  area_min:         "10",
  sales_record:     "丸の内店：年商2億",
  user_id:         "5",
)

image20 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-3_1.jpg"),
  brand_id:        "3"
)

image21 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-3_2.jpg"),
  brand_id:        "3"
)

brand4 = Brand.create!(
  name:             "ユニクロ",
  category_large:   "物販店舗",
  category_small:   "カジュアルファッション",
  target_sex:       "不問",
  target_age:       ["〜10代", "20代", "30代", "40代", "50代", "60代〜"],
  area_max:         "1200",
  area_min:         "200",
  sales_record:     "非公開",
  user_id:         "6",
)

image22 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-4_1.jpg"),
  brand_id:        "4"
)

image23 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-4_2.jpg"),
  brand_id:        "4"
)

brand5 = Brand.create!(
  name:             "セオリー",
  category_large:   "物販店舗",
  category_small:   "SPAファッション",
  target_sex:       "不問",
  target_age:       ["30代", "40代", "50代"],
  area_max:         "200",
  area_min:         "60",
  sales_record:     "非公開",
  user_id:         "6",
)

image24 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-5_1.jpg"),
  brand_id:        "5"
)

image25 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-5_2.jpg"),
  brand_id:        "5"
)

brand6 = Brand.create!(
  name:             "PLST",
  category_large:   "物販店舗",
  category_small:   "SPAファッション",
  target_sex:       "不問",
  target_age:       ["20代", "30代", "40代"],
  area_max:         "200",
  area_min:         "60",
  sales_record:     "非公開",
  user_id:         "6",
)

image26 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-6_1.jpg"),
  brand_id:        "6"
)

image27 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-6_2.jpeg"),
  brand_id:        "6"
)

brand7 = Brand.create!(
  name:             "スターバックスコーヒー",
  category_large:   "飲食店舗",
  category_small:   "カフェ",
  target_sex:       "不問",
  target_age:       ["不問"],
  area_max:         "200",
  area_min:         "80",
  sales_record:     "非公開",
  user_id:         "5",
)

image28 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-7_1.jpg"),
  brand_id:        "7"
)

image29 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/b-7_2.png"),
  brand_id:        "7"
)

like = Like.create!(
  user_id:   "1",
  space_id:  "4"
)

like = Like.create!(
  user_id:   "2",
  space_id:  "3"
)

like = Like.create!(
  user_id:   "3",
  space_id:  "1"
)

like = Like.create!(
  user_id:   "4",
  space_id:  "7"
)

like = Like.create!(
  user_id:   "5",
  space_id:  "7"
)

like = Like.create!(
  user_id:   "5",
  space_id:  "5"
)

like = Like.create!(
  user_id:   "5",
  space_id:  "3"
)

like = Like.create!(
  user_id:   "6",
  space_id:  "3"
)

like = Like.create!(
  user_id:   "6",
  space_id:  "4"
)

like = Like.create!(
  user_id:   "6",
  space_id:  "1"
)

like = Like.create!(
  user_id:   "7",
  space_id:  "2"
)

like = Like.create!(
  user_id:   "7",
  space_id:  "4"
)

like = Like.create!(
  user_id:   "7",
  space_id:  "7"
)

like = Like.create!(
  user_id:   "8",
  space_id:  "6"
)

like = Like.create!(
  user_id:   "8",
  space_id:  "5"
)

like = Like.create!(
  user_id:   "8",
  space_id:  "2"
)

like = Like.create!(
  user_id:   "1",
  brand_id:  "1"
)

like = Like.create!(
  user_id:   "1",
  brand_id:  "5"
)

like = Like.create!(
  user_id:   "1",
  brand_id:  "3"
)

like = Like.create!(
  user_id:   "2",
  brand_id:  "2"
)

like = Like.create!(
  user_id:   "2",
  brand_id:  "3"
)

like = Like.create!(
  user_id:   "2",
  brand_id:  "6"
)

like = Like.create!(
  user_id:   "3",
  brand_id:  "5"
)

like = Like.create!(
  user_id:   "3",
  brand_id:  "3"
)

like = Like.create!(
  user_id:   "3",
  brand_id:  "1"
)

like = Like.create!(
  user_id:   "4",
  brand_id:  "1"
)

like = Like.create!(
  user_id:   "4",
  brand_id:  "5"
)

like = Like.create!(
  user_id:   "4",
  brand_id:  "4"
)

like = Like.create!(
  user_id:   "5",
  brand_id:  "6"
)

like = Like.create!(
  user_id:   "6",
  brand_id:  "5"
)

like = Like.create!(
  user_id:   "7",
  brand_id:  "2"
)

like = Like.create!(
  user_id:   "8",
  brand_id:  "5"
)

conversation = Conversation.create!()

entry = Entry.create!(
  user_id:           "5",
  conversation_id:   "1"
)

entry = Entry.create!(
  user_id:           "1",
  conversation_id:   "1"
)

message = Message.create!(
  user_id:           "5",
  conversation_id:   "1",
  content:           "お世話になっております。サンプル商事のサンプル花子です。"
)

message = Message.create!(
  user_id:           "5",
  conversation_id:   "1",
  content:           "御社所有の商業施設「アトレ品川」において、もし募集区画があればご紹介お願いできないでしょうか。"
)

message = Message.create!(
  user_id:           "5",
  conversation_id:   "1",
  content:           "主力業態は、海鮮の京樽、カフェのスターバックスコーヒーです。"
)

message = Message.create!(
  user_id:           "1",
  conversation_id:   "1",
  content:           "ご連絡いただき有難うございます。"
)

message = Message.create!(
  user_id:           "1",
  conversation_id:   "1",
  content:           "施設紹介ページ記載の条件でよろしければ、ご案内が可能です。"
)

message = Message.create!(
  user_id:           "1",
  conversation_id:   "1",
  content:           "ご検討のほど宜しくお願いいたします。"
)
