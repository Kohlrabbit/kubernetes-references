# frozen_string_literal: true

require 'yaml'
require 'json'
require 'json/add/symbol'
require 'kubernetes_references/errors'

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#-strong-api-overview-strong-
  class API
    def to_hash
      schema
    end

    def schema
      _schema.select { |_k, v| v }
    end

    def _set!(obj)
      obj.each do |k, v|
        raise InvalidObjectFieldError, k unless respond_to?(k)

        instance_variable_set("@#{k}", v)
      end
    end
  end
end
