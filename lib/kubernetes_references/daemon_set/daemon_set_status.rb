module KubernetesReferences
  class DaemonSetStatus < KubernetesReferences::API
    # @dynamic collision_count, collision_count=
    attr_accessor :collision_count
    # @dynamic conditions, conditions=
    attr_accessor :conditions
    # @dynamic current_number_scheduled, current_number_scheduled=
    attr_accessor :current_number_scheduled
    # @dynamic desired_number_scheduled, desired_number_scheduled=
    attr_accessor :desired_number_scheduled
    # @dynamic number_available, number_available=
    attr_accessor :number_available
    # @dynamic number_misscheduled, number_misscheduled=
    attr_accessor :number_misscheduled
    # @dynamic number_ready, number_ready=
    attr_accessor :number_ready
    # @dynamic number_unavailable, number_unavailable=
    attr_accessor :number_unavailable
    # @dynamic observed_generation, observed_generation=
    attr_accessor :observed_generation
    # @dynamic updated_number_scheduled, updated_number_scheduled=
    attr_accessor :updated_number_scheduled

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        colisionCount: @collision_count,
        conditions: @conditions.map{|r| r.schema},
        currentNumberScheduled: @current_number_scheduled,
        desiredNumberScheduled: @desired_number_scheduled,
        numberAvailable: @number_available,
        numberMisscheduled: @number_misscheduled,
        numberReady: @number_ready,
        numberUnavailable: @number_unavailable,
        observedGeneration: @observed_generation,
        updatedNumberScheduled: @updated_number_scheduled
      }
    end
  end
end