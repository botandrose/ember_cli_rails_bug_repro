# ember_cli_rails_bug_repro

Repo to reproduce bug mentioned in https://github.com/phusion/passenger/issues/1677

Environment:

* Ubuntu 15.04
* Apache 2.4 and Passenger 5.0.21 (from deb)
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
7. Configure Passenger to load app
8. Open app in your browser and observe "Hello World"
8. Wait until the preloader times out due to idle (PassengerMaxPreloaderIdleTime -- defaults to 300 seconds)
9. Reload the page and observe no "Hello World" and the following 404s:

```
GET http://localhost:9292/javascripts/exam_builder/assets/vendor.js 404 (Not Found)
GET http://localhost:9292/javascripts/exam_builder/assets/exam-builder.js 404 (Not Found)
```

Note that you can also observe the presense or absense of `tmp/ember-cli-[some-uuid]` directory.
