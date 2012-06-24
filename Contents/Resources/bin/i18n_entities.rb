# get current i18n entity description

require 'yaml'
require 'open-uri'


def process_block(yaml, keyword)
  result = []
  yaml.each do |lang, obj|
    obj.each do |key, val|
      if key == keyword
        result += val.split("|")
      end
    end
  end
  result = result.map{|x| Regexp.escape(x) }
  result.uniq!
  puts '<!ENTITY ' + keyword.upcase + ' "' + result.join("|") + '">'
end

def process_step(yaml, keyword)
  result = []
  yaml.each do |lang, obj|
    obj.each do |key, val|
      if key == keyword
        result += val.split("|")
      end
    end
  end
  result = result.map{|x| (Regexp.escape(x) + "\\s").sub(/<\\s$/,"")}
  result.uniq!
  puts '<!ENTITY ' + keyword.upcase + ' "' + result.join("|") + '">'
end

def process_yaml(yaml)
  process_block(yaml, "feature")
  process_block(yaml, "background")
  process_block(yaml, "scenario")
  process_block(yaml, "scenario_outline")
  process_block(yaml, "examples")
  process_step(yaml, "given")
  process_step(yaml, "when")
  process_step(yaml, "then")
  process_step(yaml, "and")
  process_step(yaml, "but")
end

open("https://raw.github.com/cucumber/gherkin/master/lib/gherkin/i18n.yml") do |io|
  YAML.load_documents(io) do |y|
	process_yaml(y)
  end
end
