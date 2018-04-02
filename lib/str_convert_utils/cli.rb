require "str_convert_utils"
require "thor"

module StrConvertUtils
  class CLI < Thor
    # see https://qiita.com/kumagi/items/04edfb73fd2f5a060510

    desc "camelize", "convert {snake_case_string} to {camelCaseString}"
    def camelize(str)
      puts str.split("_").map{|w| w[0] = w[0].upcase; w}.join
    end

    desc "snake", "convert {camelCaseString} to {snake_case_string}"
    def snake(str)
      puts str
        .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
        .gsub(/([a-z\d])([A-Z])/, '\1_\2')
        .tr("-", "_")
        .downcase
    end
  end
end
