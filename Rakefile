#!/usr/bin/env rake
# frozen_string_literal: true

require "bundler/gem_tasks"

task default: :spec

desc "Run the test suite"
task :spec do
  ruby "-S rspec"
end

namespace :version do
  # Internal helper that reads the version string from lib/agentic/version.rb
  # and yields the captured major, minor, patch integers.
  def current_semver
    file = File.expand_path("lib/agentic/version.rb", __dir__)
    contents = File.read(file)
    semver_match = contents.match(/VERSION\s*=\s*"(\d+)\.(\d+)\.(\d+)"/)
    raise "Unable to locate version string in #{file}" unless semver_match

    major, minor, patch = semver_match.captures.map(&:to_i)
    yield(major, minor, patch, file, contents)
  end

  desc "Bump the minor version (x.y.z → x.(y+1).0) and update lib/agentic/version.rb"
  task :bump_minor do
    current_semver do |major, minor, _patch, file, contents|
      minor += 1
      new_version = "#{major}.#{minor}.0"

      new_contents = contents.sub(/VERSION\s*=\s*"\d+\.\d+\.\d+"/,
                                  "VERSION = \"#{new_version}\"")

      File.write(file, new_contents)

      sh "git add #{file}" if system("git rev-parse --is-inside-work-tree > /dev/null 2>&1")

      puts "Bumped minor version to #{new_version}"
    end
  end
end
