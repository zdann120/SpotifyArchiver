require "rails_helper"

RSpec.describe PlaylistMailer, type: :mailer do
  describe "weekly" do
    let(:mail) { PlaylistMailer.weekly }

    it "renders the headers" do
      expect(mail.subject).to eq("Weekly")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
