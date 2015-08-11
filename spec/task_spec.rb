require('rspec')
require('task')

describe(Task) do

  before() do
    Task.clear()
  end
  describe('#description') do
    it('returns the description of the task') do
      task = Task.new("this is a description")
      expect(task.description()).to(eq("this is a description"))
    end
  end

  describe('.all') do
    it('should be empty by default') do
      expect(Task.all()).to(eq([]))
    end
  end
  describe('.save') do
    it('adds task to array of saved tasks') do
      test_task = Task.new("Do something else")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe('.clear') do
    it('empties out the array of saved tasks') do
      test_task = Task.new("another thing")
      test_task.save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end
