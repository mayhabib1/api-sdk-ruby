Qordoba
=================
Qordoba’s Java SDK offers platform-specific features that make the Qordoba implementation much simpler. The SDKs are open-source, and can be forked at the links below. Once forked, you can integrate our API into your application.

How To Configure:
=================
The code might need to be configured with your API credentials. To do that,
provide the credentials and configuration values as a constructor parameters for the controllers

How To Build: 
=============
The code uses a Ruby gem namely 'unirest'. The reference to this gem is
already added in the gemspec. Therefore, you will need internet access to resolve
this dependency.

How To Use:
===========
The code can be used to build gem, which can then be distributed online.
Otherwise, you can include The code in your project to use directly.

Use the following steps to build a gem and use locally

    1. Run the build command
        ```
        gem build qordoba.gemspec
        ```

    2. Run the install command  
        ```
        gem install ./qordoba-1.0.gem
        ```

    3. In your Gemfile add this line
        ```
        gem 'qordoba', '~> 1.0'
        ```

    4. Now create an instance and use the instance methods, like following.

        ```
        ctl = Qordoba::QordobaController.new params
        ctl.post_projects params
        ```
