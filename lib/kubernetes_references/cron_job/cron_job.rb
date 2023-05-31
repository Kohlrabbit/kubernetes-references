module KubernetesReferences
  class CronJob < KubernetesReferences::API

    attr_accessor :api_version
    attr_accessor :kind
    attr_accessor :metadata
    attr_accessor :spec
    attr_accessor :status

    def initialize(obj)
      _set!(obj)
    end
  end
end