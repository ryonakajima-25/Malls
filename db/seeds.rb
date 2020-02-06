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
  image:           open("#{Rails.root}/db/default_images/raizu.jpg"),
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

image2 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/ion.png"),
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

image3 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/tama.png"),
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

image4 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/koredo.jpg"),
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

image5 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/ga-denzu.jpeg"),
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

image6 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/gurahuro.png"),
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

image7 = Image.create!(
  image:           open("#{Rails.root}/db/default_images/ion.png"),
  space_id:        "7"
)

brand1 = Brand.create!(
  name:             "無印良品",
  category_large:   "物販店舗",
  category_small:   "生活雑貨",
  target_sex:       "不問",
  target_age:       "20代,30代,40代",
  area_max:         "1000",
  area_min:         "200",
  sales_record:     "",
  user_id:         "8",
)

image8 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/muji.jpg"),
  brand_id:        "1"
)

brand2 = Brand.create!(
  name:             "アダムエロペ",
  category_large:   "物販店舗",
  category_small:   "レディスファッション",
  target_sex:       "女性",
  target_age:       "20代,30代",
  area_max:         "120",
  area_min:         "60",
  sales_record:     "新宿店：年商4.5億",
  user_id:         "7",
)

image9 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/adam.jpg"),
  brand_id:        "2"
)


brand3 = Brand.create!(
  name:             "京樽",
  category_large:   "飲食店舗",
  category_small:   "寿司・海鮮",
  target_sex:       "不問",
  target_age:       "不問",
  area_max:         "20",
  area_min:         "10",
  sales_record:     "丸の内店：年商2億",
  user_id:         "5",
)

image10 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/kyoutaru.jpg"),
  brand_id:        "3"
)

brand4 = Brand.create!(
  name:             "ユニクロ",
  category_large:   "物販店舗",
  category_small:   "カジュアルファッション",
  target_sex:       "不問",
  target_age:       "〜10代,20代,30代,40代,50代〜",
  area_max:         "1200",
  area_min:         "200",
  sales_record:     "",
  user_id:         "6",
)

image11 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/yunikuro.jpg"),
  brand_id:        "4"
)

brand5 = Brand.create!(
  name:             "セオリー",
  category_large:   "物販店舗",
  category_small:   "SPAファッション",
  target_sex:       "不問",
  target_age:       "30代,40代,50代〜",
  area_max:         "200",
  area_min:         "60",
  sales_record:     "",
  user_id:         "6",
)

image12 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/theory.jpg"),
  brand_id:        "5"
)

brand6 = Brand.create!(
  name:             "PLST",
  category_large:   "物販店舗",
  category_small:   "SPAファッション",
  target_sex:       "不問",
  target_age:       "20代,30代",
  area_max:         "200",
  area_min:         "60",
  sales_record:     "",
  user_id:         "6",
)

image13 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/plst.jpg"),
  brand_id:        "6"
)

brand7 = Brand.create!(
  name:             "スターバックスコーヒー",
  category_large:   "飲食店舗",
  category_small:   "カフェ",
  target_sex:       "不問",
  target_age:       "不問",
  area_max:         "200",
  area_min:         "80",
  sales_record:     "非公開",
  user_id:         "5",
)

image14 = Image.create!(
  image:            open("#{Rails.root}/db/default_images/sytaba.jpg"),
  brand_id:        "7"
)

like1 = Like.create!(
  user_id:   "1",
  space_id:  "4"
)

like2 = Like.create!(
  user_id:   "2",
  space_id:  "3"
)

like3 = Like.create!(
  user_id:   "3",
  space_id:  "1"
)

like4 = Like.create!(
  user_id:   "4",
  space_id:  "7"
)

like5 = Like.create!(
  user_id:   "5",
  space_id:  "7"
)

like6 = Like.create!(
  user_id:   "5",
  space_id:  "5"
)

like7 = Like.create!(
  user_id:   "5",
  space_id:  "3"
)

like8 = Like.create!(
  user_id:   "6",
  space_id:  "3"
)

like9 = Like.create!(
  user_id:   "6",
  space_id:  "4"
)

like10 = Like.create!(
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
