# frozen_string_literal: true

  class UserTasks
    def self.all
      query = "{
        tasks(query: { state: CREATED })
        {
          id
          taskDefinitionId
          name
          taskState
          assignee
          taskState
          isFirst
          formKey
          processDefinitionId
          completionTime
          processName
          variables {
            name
            value
          }
        }
      }"
      Beez::GraphQl.post(query: query)['data']['tasks']
    end

    def self.run_mutation(mutation)
      Beez::GraphQl.post(query: mutation)
    end
  end
end