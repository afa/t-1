require 'nokogiri'
require 'active_support/core_ext/hash'
ActiveSupport::XmlMini.backend = 'Nokogiri'
module Import
  def run data, template
    document = Nokogiri::XML(data)
    document.remove_namespaces!
    template = Nokogiri::XSLT(template)
    Hash.from_xml template.apply_to(document)
  end
  module_function :run
end
