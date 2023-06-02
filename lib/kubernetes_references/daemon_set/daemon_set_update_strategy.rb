# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#daemonsetupdatestrategy-v1-apps
  class DaemonSetUpdateStrategy < KubernetesReferences::API
    # @dynamic rolling_update, rolling_update=
    attr_accessor :rolling_update
    # @dynamic type, type=
    attr_accessor :type

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        rollingUpdate: @rolling_update.schema,
        type: @type
      }
    end
  end
end
