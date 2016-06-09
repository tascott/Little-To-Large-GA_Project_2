module SubcategoriesHelper

  def num_to_currency price
    "£#{price.to_i.round(2)}"+"#{(price % 1.0)}"[2..3]
  end

end
