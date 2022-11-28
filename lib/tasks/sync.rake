# frozen_string_literal: true

namespace :radio do
  task run: :environment do
    filenames = Dir.children('audiofiles')
    filenames.each do |filename|
      t = Transmitter.create!(name: filename)
      t.audio.attach(io: File.open("audiofiles/#{filename}"), filename: filename)
      system("rm audiofiles/#{filename}")
    end
  end
end
