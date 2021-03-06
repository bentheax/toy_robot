require 'toy_robot/unplaced_robot'
require 'toy_robot/command_interpreter'
require 'toy_robot/tokenizer'

module ToyRobot
  class Session
    def initialize(command_interpreter: nil)
      @robot = UnplacedRobot.new
      @command_interpreter = command_interpreter || CommandInterpreter.new
    end

    def process_line(line)
      command = @command_interpreter.process(line)
      result = command.perform(@robot)

      @robot = result.robot
      result.output
    end
  end
end
