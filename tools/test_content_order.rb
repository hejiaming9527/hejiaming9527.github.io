# frozen_string_literal: true

require "minitest/autorun"
require "yaml"
require "date"

class ContentOrderTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)

  def test_homepage_sorts_updates_newest_first_before_limiting_to_three
    source = File.read(File.join(ROOT, "index.html"), encoding: "UTF-8")

    assert_includes source, '{% assign sorted_project_updates = site.data.project_updates | sort: "date" | reverse %}'
    assert_includes source, "{% for update in sorted_project_updates limit: 3 %}"
  end

  def test_timeline_sorts_entries_newest_first
    source = File.read(File.join(ROOT, "_tabs", "timeline.md"), encoding: "UTF-8")

    assert_includes source, '{% assign sorted_timeline = site.data.timeline | sort: "date" | reverse %}'
    assert_includes source, "{% for item in sorted_timeline %}"
  end

  def test_new_review_is_the_first_item_for_its_date
    updates = YAML.safe_load(
      File.read(File.join(ROOT, "_data", "project_updates.yml"), encoding: "UTF-8"),
      permitted_classes: [Date, Time],
      aliases: true
    )
    timeline = YAML.safe_load(
      File.read(File.join(ROOT, "_data", "timeline.yml"), encoding: "UTF-8"),
      permitted_classes: [Date, Time],
      aliases: true
    )

    assert_equal "完成证据优先的独立监督审查", updates.first.fetch("title")
    assert_equal "完成 V0.5 证据优先的独立监督审查", timeline.first.fetch("title")
  end

  def test_rendered_pages_place_the_review_before_other_same_day_updates
    updates = YAML.safe_load(
      File.read(File.join(ROOT, "_data", "project_updates.yml"), encoding: "UTF-8"),
      permitted_classes: [Date, Time],
      aliases: true
    )
    timeline = YAML.safe_load(
      File.read(File.join(ROOT, "_data", "timeline.yml"), encoding: "UTF-8"),
      permitted_classes: [Date, Time],
      aliases: true
    )
    home_html = File.read(File.join(ROOT, "_site", "index.html"), encoding: "UTF-8")
    timeline_html = File.read(File.join(ROOT, "_site", "timeline", "index.html"), encoding: "UTF-8")

    assert_equal 3, home_html.scan('class="portfolio-activity-item"').length
    assert_operator home_html.index(updates.first.fetch("title")), :<, home_html.index(updates[1].fetch("title"))
    assert_operator timeline_html.index(timeline.first.fetch("title")), :<, timeline_html.index(timeline[1].fetch("title"))
  end
end
