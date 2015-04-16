require "factories/collection_factory"

class HttpHealthChecksFactory < CollectionFactory
  def initialize
    @subject = Fog::Compute[:google].http_health_checks
    super
  end

  def params
    {:name => test_name}
  end
end