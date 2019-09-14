require 'yaml'

def load_library(file_path='emoticons.yml')
  library = YAML.load_file(file_path)
  results = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    results["get_meaning"][emoticons[1]] = meaning
    results["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  results
end


def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
    if library["get_emoticon"].include?(emoticon)
      library["get_emoticon"][emoticon]
    else
      "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, japanese)
  # code goes here
  library = load_library(file_path)
    if library["get_meaning"].include?(japanese)
      library["get_meaning"][japanese]
    else
      "Sorry, that emoticon was not found"
  end
end
