require 'yaml'

def load_library(yml)
  yml = YAML.load_file("./lib/emoticons.yml")
  yml

  emoticons = {"get_meaning":{}, "get_emoticon":{}}
  yml.each do |meaning, translation|
    eng, jap = translation
    emoticons["get_meaning"][jap] = meaning
    emoticons["get_emoticon"][eng] = jap
  end

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
