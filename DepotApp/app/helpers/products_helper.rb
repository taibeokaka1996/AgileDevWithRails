module ProductsHelper
    def truncate_abc(text, length, truncate_string ="...")
        truncate(strip_tags(text),length: length)
    end 
end
