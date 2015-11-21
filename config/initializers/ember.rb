EmberCLI.configure do |c|
  c.app :exam_builder,
    bower_path: "bin/bower",
    exclude_ember_deps: ["jquery", "handlebars"]
end
