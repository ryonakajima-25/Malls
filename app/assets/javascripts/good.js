// $("#good-3").html('#{j(render("brands/good", brand: @brand))}')

$("#good-3").html("#{j(render partial: 'brands/good', locals: { brands: @brands, goods: @goods, good: @good})}")