Rails.application.routes.draw do
  mount_ember_app :exam_builder, to: "/", controller: "application", action: "index"
end

