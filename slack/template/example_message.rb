module Slack
  module Template
    class ExampleMessage

      def initialize(issue: nil, administrators: [])
        @issue = issue
        @administrators = administrators
      end

      def self.format(issue: nil, administrators: [])
        self.new(issue, administrators).format
      end

      # See: https://api.slack.com/docs/message-attachments
      def format
        {
          text: header,
          attachmets: [
            {
              fallback: pretext,
              color: '#36a64f',
              pretext: "#{mentions} \n #{pretext}",
              author_name: "",
              author_link: "",
              title: "Slack API Documentation",
              titile_link: "https://api.slack.com/",
              text: "",
              fields: [
                {
                  title: "Priority",
                  value: "Higher",
                  short: false
                }
              ],
              footer: "Slack API",
              footer_icon: "https://platform.slack-edge.com/img/default_application_icon.png",
              ts: Time.zone.now.to_i
            }
          ]
        }
      end

      private

      def header
        "some header message"
      end

      def pretext
        "some pretext message"
      end

      def mentions
        @administrators.map { |administrator| "<@#{administrator.try(:slack_id)}>" }.join(" ")
      end
    end
  end
end
