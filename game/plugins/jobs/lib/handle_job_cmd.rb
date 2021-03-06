module AresMUSH
  module Jobs
    class HandleJobCmd
      include SingleJobCmd
      
      attr_accessor :assignee
      
      def initialize
        self.required_args = ['number']
        self.help_topic = 'jobs'
        super
      end
      
      def want_command?(client, cmd)
        cmd.root_is?("job") && (cmd.switch_is?("handle") || cmd.switch_is?("assign"))
      end
      
      def crack!
        if (cmd.args =~ /\=/)
          cmd.crack_args!(CommonCracks.arg1_equals_arg2)
          self.number = trim_input(cmd.args.arg1)
          self.assignee = trim_input(cmd.args.arg2)
        else
          self.number = trim_input(cmd.args)
          self.assignee = client.name
        end
      end
      
      def handle
        Jobs.with_a_job(client, self.number) do |job|
          ClassTargetFinder.with_a_character(self.assignee, client) do |target|
            if (!Jobs.can_access_jobs?(target))
              client.emit_failure t('jobs.cannot_handle_jobs')
              return
            end
            job.assigned_to = target
            job.status = "OPEN"
            job.save
            notification = t('jobs.job_assigned', :number => job.number, :title => job.title, :assigner => client.name, :assignee => target.name)
            Jobs.notify(job, notification, client.char)
          end
        end
      end
    end
  end
end
