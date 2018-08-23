class AdminMailer < ApplicationMailer
  default from: 'support@siopy.fr'
  layout 'mailer'

  def new_user_waiting_for_approval(email)
    @email = email
    mail(to: 'vourronjocelyn@protonmail.com', subject: "Nouvel utilisateur en attente de l'approbation de l'administrateur")
  end
end
