class AdminMailer < ApplicationMailer
  
  
  def admin_order_email(user, order)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user
    @order = order

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: 'lucas.lensi@gmail.com', subject: 'un user vient de faire une commande chez nous !')
  end
end
