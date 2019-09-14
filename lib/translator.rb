require 'yaml'

def load_library(file_path='emoticons.yml')
  lib = YAML.load_file(file_path)
  results = {"get_meaning" => {}, "get_emoticon" => {}}
  lib.each do |meaning, emoticons|
    results["get_meaning"][emoticons[1]] = meaning
    results["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  results
end


def get_japanese_emoticon(file_path, emoticon)
  results = load_library(file_path)
    if results["get_emoticon"].include?(emoticon)
      results["get_emoticon"][emoticon]
    else
      "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, japanese)
  # code goes here
  results = load_library(file_path)
    if results["get_meaning"].include?(japanese)
      results["get_meaning"][japanese]
    else
      "Sorry, that emoticon was not found"
  end
end
