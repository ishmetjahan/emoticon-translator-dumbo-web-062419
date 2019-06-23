# require modules here
require "yaml"
require "pry"
# as per the translator_spec.rb there is one arg, "the file path"
def load_library(path)
  emoticons = YAML.load_file(path)
  emoHash = Hash.new 
  emoHash["get_emoticon"]= Hash.new 
  emoHash["get_meaning"]= Hash.new
  emoticons.each do |word, img|
    emoHash["get_emoticon"][img.first]= img.last 
    emoHash["get_meaning"][img.first]= word
  end
  emoHash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end