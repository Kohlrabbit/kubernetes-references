require "yaml"
require "json"
require 'json/add/symbol'
require "kubernetes_references/errors"

module KubernetesReferences
  class API
    def to_hash
      schema
    end

    def schema
      _schema.select{|k, v| v}
    end

    def _set!(obj)
      obj.each do |k, v|
        if self.respond_to?(k)
          instance_variable_set("@#{k}", v)
        else
          raise InvalidObjectFieldError, k
        end
      end
    end
  end
end