# модуль контейнер
module ItemContainer
    
    module ClassMethods
        
        MIN_COUNT_IMAGES = 1

        def min_count_images
          MIN_COUNT_IMAGES
        end

    end
    
    module InstanceMethods

        def add_item(item)
            if item.images.length() >= self.min_count_images()
                @items.push(item)
            end
        end

        def remove_item(item)
            @items.pop(item)
        end

        def delete_items(items)
            items.each do |item|
                @items.pop(item)
            end
        end
    end

    def self.included(class_instance)
        class_instance.extend(ClassMethods)
        class_instance.extend(InstanceMethods)
        #class_instance.class_eval { include InstanceMethods }
    end
    
end