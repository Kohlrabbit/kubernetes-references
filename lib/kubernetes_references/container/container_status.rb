module KubernetesReferences
  class ContainerStatus < KubernetesReferences::API
    attr_accessor :container_id
    attr_accessor :image
    attr_accessor :image_id
    attr_accessor :last_state
    attr_accessor :name
    attr_accessor :ready
    attr_accessor :restart_count
    attr_accessor :started
    attr_accessor :state

    def initialize(obj)
      _set!(obj)
    end
  end
end