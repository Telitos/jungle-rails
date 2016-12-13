require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it "should save if all fields are filled" do

      @category = Category.create({
        name: "All"})

      @product = @category.products.create({
        name: "Iron",
        price: 34.2,
        quantity: 2,
        })
      expect(@product).to be_valid

    end

    it "should not save without a name" do
      @category = Category.create({
        name: "All"})

      @product = @category.products.create({
        name: nil,
        price: 34.2,
        quantity: 2,
        })
      puts(@product.errors.full_messages)
      expect(@product).to be_invalid
    end

    it "should not save without a price" do
      @category = Category.create({
        name: "All"})

      @product = @category.products.create({
        name: "JumboShrimp",
        price: nil,
        quantity: 2,
        })
      puts(@product.errors.full_messages)
      expect(@product).to be_invalid
    end

    it "should not save without a quantity" do
      @category = Category.create({
        name: "All"})

      @product = @category.products.create({
        name: "JumboShrimp",
        price: nil,
        quantity: nil,
        })
      puts(@product.errors.full_messages)
      expect(@product).to be_invalid
    end

    it "should not save without a category" do

      @product = Product.create({
        name: "JumboShrimp",
        price: nil,
        quantity: 2,
        category: nil
        })
      puts(@product.errors.full_messages)
      expect(@product).to be_invalid
    end
  end
end
