require 'yaml'

def load_library(path)
  path = YAML.load_file("./lib/emoticons.yml")
  emoticons = {"get_meaning"=>{}, "get_emoticon"=>{}}
  path.each do |meaning, translation|
    eng, jap = translation
    emoticons["get_meaning"][jap] = meaning
    emoticons["get_emoticon"][eng] = jap
  end
  emoticons
end

def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  answer = emoticon_hash["get_emoticon"][emoticon]
  answer == nil ? "Sorry, that emoticon was not found" : answer
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  answer = emoticon_hash["get_meaning"][emoticon]
  answer == nil ? "Sorry, that emoticon was not found" : answer
end
