# ember_cli_rails_bug_repro

Dependencies:

* Ruby 2.2.2
* Node.js 0.10.25
* Npm 1.4.21

Steps to reproduce:

1. git clone https://github.com/botandrose/ember_cli_rails_bug_repro
2. cd ember_cli_rails_bug_repro/
3. bundle install
4. cd exam_builder
5. npm install && bin/bower install
6. cd ..
7. bundle exec rackup

Then open http://localhost:9292 in your browser and observe the 404s:
```
GET http://localhost:9292/javascripts/exam_builder/assets/vendor.js 404 (Not Found)
GET http://localhost:9292/javascripts/exam_builder/assets/exam-builder.js 404 (Not Found)
```
