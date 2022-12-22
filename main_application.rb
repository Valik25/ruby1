# клас з налаштуваннями додатку, поля = операційна система, шлях до файлів json та csv
class MainApplication
    attr_accessor :path_csv, :path_json, :os
    def initialize(path_csv=nil, path_json=nil, os=nil)
        @path_csv = path_csv
        @path_json = path_json
        @os = os
    end
end