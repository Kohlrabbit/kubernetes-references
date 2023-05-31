module KubernetesReferences
  class ObjectReference < KubernetesReferences::API
    attr_accessor :api_version
    attr_accessor :field_path
    attr_accessor :kind
    attr_accessor :name
    attr_accessor :namespace
    attr_accessor :resource_version
    attr_accessor :uid

    def initialize(obj)
      _set!(obj)
    end
  end
end