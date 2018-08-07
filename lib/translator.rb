# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  emoticons_library = {
    "get_emoticon" => {}, 
    "get_meaning" => {}
  }
  
  emoticons.each do |emotion, emoticons|
    eng = emoticons[0]
    jpn = emoticons[1]
    emoticons_library["get_emoticon"][eng] = jpn
    emoticons_library["get_meaning"][jpn] = eng
  end
  emoticons_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end