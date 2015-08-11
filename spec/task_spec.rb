require('rspec')
require('task')

describe(Task) do
  describe('#description') do
    it('returns the description of the task') do
      task = Task.new("this is a description")
      expect(task.description()).to(eq("this is a description"))
    end
  end
end
