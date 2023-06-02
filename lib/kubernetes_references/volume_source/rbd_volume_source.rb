# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#rbdvolumesource-v1-core
  class RBDVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic image, image=
    attr_accessor :image
    # @dynamic keyring, keyring=
    attr_accessor :keyring
    # @dynamic monitors, monitors=
    attr_accessor :monitors
    # @dynamic pool, pool=
    attr_accessor :pool
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref
    # @dynamic user, user=
    attr_accessor :user

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        fsType: @fs_type,
        image: @image,
        keyring: @keyring,
        monitors: @monitors,
        pool: @pool,
        readOnly: @read_only,
        secretRef: @secret_ref.schema,
        user: @user
      }
    end
  end
end
