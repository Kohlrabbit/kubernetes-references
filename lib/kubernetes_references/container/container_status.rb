module KubernetesReferences
  class ContainerStatus < KubernetesReferences::API
    # @dynamic container_id, container_id=
    attr_accessor :container_id
    # @dynamic image, image=
    attr_accessor :image
    # @dynamic image_id, image_id=
    attr_accessor :image_id
    # @dynamic last_state, last_state=
    attr_accessor :last_state
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic ready, ready=
    attr_accessor :ready
    # @dynamic restart_count, restart_count=
    attr_accessor :restart_count
    # @dynamic started, started=
    attr_accessor :started
    # @dynamic state, state=
    attr_accessor :state

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        containerID: @container_id,
        image: @image,
        imageID: @image_id,
        lastState: @last_state.schema,
        name: @name,
        ready: @ready,
        restartCount: @restart_count,
        started: @started,
        state: @state.schema
      }
    end
  end
end