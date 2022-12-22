# клас для елементів парсингу
class Item
    
    # поля: ціна, заголовок, наявність, код продукту, картинки, посилання
    attr_accessor :price, :title, :availability, :product_code, :images, :link
    
    # конструктор
    def initialize(price=nil, title=nil, availability=nil, product_code=nil,
        images = nil, link=nil)
        @price = price
        @title = title
        @availability = availability
        @product_code = product_code
        @images = images
        @link = link
    end

    # для методу puts
    def to_s()
        "price=#@price, title=#@title, availibility=#@availability, product=#@product_code,
         link=#@link, images=#@images"
    end

    # хеш
    def to_h()
        {'price' => @price, 'title'=> @title, 'availibility' => @availability, 
            'product_code' => @product_code, 'link' => @link, 'images' => @images}
    end

    # приймає блок
    def info()
        yield
    end

end