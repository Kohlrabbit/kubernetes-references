module KubernetesReferences
  class DeploymentStatus < KubernetesReferences::API
    # @dynamic available_replicas, available_replicas=
    attr_accessor :available_replicas
    # @dynamic collision_count, collision_count=
    attr_accessor :collision_count
    # @dynamic conditions, conditions=
    attr_accessor :conditions
    # @dynamic observed_generation, observed_generation=
    attr_accessor :observed_generation
    # @dynamic ready_replicas, ready_replicas=
    attr_accessor :ready_replicas
    # @dynamic replicas, replicas=
    attr_accessor :replicas
    # @dynamic unavailable_replicas, unavailable_replicas=
    attr_accessor :unavailable_replicas
    # @dynamic updated_replicas, updated_replicas=
    attr_accessor :updated_replicas

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        availableReplicas: @available_replicas,
        collisionCount: @collision_count,
        conditions: @conditions.map{|r| r.schema},
        observedGeneration: @observed_generation,
        readyReplicas: @ready_replicas,
        replicas: @replicas,
        unavailableReplicas: @unavailable_replicas,
        updatedReplicas: @updated_replicas
      }
    end
  end
end