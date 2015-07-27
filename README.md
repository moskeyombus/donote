== README

#### Setup

* Clone the repo
* Install postgresql
* Put database defaults in place
    ```
    cp config/database.yml.default config/database.yml
    ```
* Install gems

    ```
    bundle install
    ```
* Create the database
    ```
    bundle exec rake db:create
    
    bundle exec rake db:schema:load
    ```

#### Testing

Run with ```bundle exec rspec```
(Currently no actual tests to run)

#### TODO

* Generate controllers
* Build out initial user auth (Devise is set up but prob doesn't work)
* Model unit testing
* Add uploaders for artist/album image and song audio file
* Decide on frontend pipeline (JS libs/framework? - gulp/karma/etc, SASS?)
* Set up ActiveMerchant within Merchant Service libs
* Swap out .erb for HAML or something

#### Other ideas
* Email service (I like Sendgrid)
* Build API-based controller endpoints?
