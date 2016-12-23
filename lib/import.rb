require 'nokogiri'
module Import
  def run data, template
    document = Nokogiri::XML(data)
    template = Nokogiri::XSLT(template)
    template.transform(document)
  end
  module_function :run
end
