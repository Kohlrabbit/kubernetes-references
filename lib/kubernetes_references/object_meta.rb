module KubernetesReferences
  class ObjectMeta < KubernetesReferences::API
    attr_accessor :annotations
    attr_accessor :cluster_name
    attr_accessor :creation_timestamp
    attr_accessor :deletion_grace_period_seconds
    attr_accessor :deletion_timestamp
    attr_accessor :finalizers
    attr_accessor :generate_name
    attr_accessor :generation
    attr_accessor :labels
    attr_accessor :managed_fields
    attr_accessor :name
    attr_accessor :namespace
    attr_accessor :owner_references
    attr_accessor :resource_version
    attr_accessor :self_link
    attr_accessor :uid

    def initialize(obj)
      _set!(obj)
    end
  end
end