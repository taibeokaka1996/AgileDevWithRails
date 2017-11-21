config.action_mailer.delivery_method = :smtp

DepotApp::Application.configure do
    config.action_mailer.delivery_method = :test 

    config.action_mailer.smtp_settings = {
        address: "smtp.gmail.com",
        port: 587,
        domain: "domain.of.sender.net",
        authentication: "plain",
        user_name: "dave",
        password: "secret",
        enable_starttls_auto: true 
    }
end