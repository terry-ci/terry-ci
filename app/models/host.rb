class Host < ActiveRecord::Base
    has_many :repositories
    validates_presence_of :url, :docker_port, :docker_protocol

    enum docker_protocol: { http: "http", https: "https"}
end
