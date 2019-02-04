require 'yaml'

def load_library(yml)
  yml = YAML.load_file("./lib/emoticons.yml")
  yml

  emoticons = {"get_meaning":{}, "get_emoticon":{}}
  yml.each do |eng, jap|
    emoticons

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
