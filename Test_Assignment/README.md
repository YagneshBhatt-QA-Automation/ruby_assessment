# Automation framework with Ruby
> A basic ruby appium framework with cucumber flavor on Vivino Android app

## Highlights
- Added a complete end-to-end scenario from `user registration -> login` 
- Included cucumber version `cucumber 8.0.1 (latest)`
- Provision for execution on  `browserstack` and `local` environments 
- Applied Ruby standards through-out the framework and tests
- Cleared Rubocop `Linter` check through Github actions

## Steps before Run
> 
>
> ```
> curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --ruby
> source ~/.rvm/bin/rvm
> bash --login
> brew install allure
> ```
> **Note:** ensure `RVM` and `Ruby` installed on prior; install `allure cli` (Optional) 

- Create a gem profile 
```
rvm gemset create vivino
rvm gemset use vivino
```

- Install ruby libraries
```
gem install bundler
bundle install
```

## Runners

| Action         | Command            |
| -------------- | ---------          |
| Bash runner    | `bundle exec bash runner/prod/local.sh` |
| Default        | `bundle exec rake vivino:run` |

**Note:** currently using local_device for running tests 