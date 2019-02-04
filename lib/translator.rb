require 'yaml'

def load_library(yml)
  yml = YAML.load_file("./lib/emoticons.yml")
  #yml
  emoticons = {"get_meaning"=>{}, "get_emoticon"=>{}}
  yml.each do |meaning, translation|
    eng, jap = translation
    emoticons["get_meaning"][jap] = meaning
    emoticons["get_emoticon"][eng] = jap
  end
  emoticons
end

def get_japanese_emoticon(yml, emoticon)
  yml = YAML.load_file("./lib/emoticons.yml")
  load_library(yml)
  answer = emoticons["get_emoticon"][emoticon]
  #answer ? answer : return "Sorry, that emoticon was not found"
  if answer
    answer
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end
