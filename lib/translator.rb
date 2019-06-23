# require modules here
require "yaml"
# as per the translator_spec.rb there is one arg, "the file path"
def load_library(path)
  emoticons = YAML.load_file(path)
  emoHash = Hash.new 
  emoHash["get_emoticon"]= Hash.new 
  emoHash["get_meaning"]= Hash.new
  emoticons.each do |word, img|
    emoHash["get_emoticon"][img.first]= img.last 
    emoHash["get_meaning"][img.last]= word
  end
  emoHash
end

def get_japanese_emoticon (path, emoticon)
 emoHash= load_library(path)
 result= emoHash["get_emoticon"][emoticon]
 if result == nil 
   "Sorry, that emoticon was not found"
end
result

def get_english_meaning
  # code goes here
end