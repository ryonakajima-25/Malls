FactoryBot.define do

  factory :user do
    company               {"サンプル不動産"}
    genre                 {1}
    name                  {"sample"}
    work_location         {"大阪府大阪市北区天神橋七丁目4-2"}
    email                 {"sample@gmail.com"}
    phone_number          {"08055550000"}
    password              {"sample2020"}
    password_confirmation {"sample2020"}
  end

end