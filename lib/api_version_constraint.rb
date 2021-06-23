class ApiVersionConstraint
    def initialize(options)
        @version = options[:version]
        @default = oprtion[:default]
    end

    def matches?(req)
        @default || req.headers['Accept'].include?("application/vnd.todolist.v#{@version}")
    end
end
    