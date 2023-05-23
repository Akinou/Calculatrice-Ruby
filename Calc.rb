loop do
    puts "=== Calculatrice avancée by ChatGPT ==="
    puts "Opérations disponibles :"
    puts "1. Addition"
    puts "2. Soustraction"
    puts "3. Multiplication"
    puts "4. Division"
    puts "5. Puissance"
    puts "6. Logarithme"
    puts "7. Sinus"
    puts "8. Cosinus"
    puts "9. Tangente"
    puts "10. Opération secrète"
    puts "11. Calculer la dérivée d'une fonction"
    puts "12. Résoudre une équation du premier degré"
    puts "13. Résoudre une équation du deuxième degré"
    puts "14. Calculatrice de pourcentage"
    puts "15. Conversion d'unités"
    puts "16. Calculatrice de prêt ou d'hypothèque"
    puts "17. Calculatrice de temps"
    puts "18. Calculatrice de statistiques"
    puts "19. Calculatrice de fractions"
    puts "20. Calculatrice de matrices"
    puts "21. Calculatrice de conversions monétaires"
    puts "22. Calculatrice de géométrie"
    puts "23. Calculatrice de résistance"
    puts "0. Quitter"
  
    print "Choisissez une opération (0-23) : "
    choice = gets.chomp.to_i
  
    case choice
    when 1..5
      print "Entrez le premier nombre : "
      num1 = gets.chomp.to_f
      print "Entrez le deuxième nombre : "
      num2 = gets.chomp.to_f
  
      result = case choice
               when 1
                 num1 + num2
               when 2
                 num1 - num2
               when 3
                 num1 * num2
               when 4
                 num1 / num2.to_f
               when 5
                 num1**num2
               end
  
      puts "Résultat : #{result}"
    when 6
      print "Entrez le nombre : "
      num = gets.chomp.to_f
  
      result = Math.log(num)
      puts "Résultat : #{result}"
    when 7..9
      print "Entrez l'angle en radians : "
      angle = gets.chomp.to_f
  
      result = case choice
               when 7
                 Math.sin(angle)
               when 8
                 Math.cos(angle)
               when 9
                 Math.tan(angle)
               end
  
      puts "Résultat : #{result}"
    when 10
      puts "Félicitations ! Vous avez découvert l'opération secrète."
      puts "ChatGPT est ravi de vous informer que vous avez gagné... absolument rien !"
    when 11
      print "Entrez la fonction : "
      function = gets.chomp
  
      # Calculer la dérivée de la fonction
      derivative = # Code pour calculer la dérivée de la fonction
  
      puts "La dérivée de la fonction #{function} est #{derivative}"
    when 12
      print "Entrez le coefficient a : "
      a = gets.chomp.to_f
      print "Entrez le coefficient b : "
      b = gets.chomp.to_f
  
      # Résoudre l'équation du premier degré ax + b = 0
      if a == 0
        puts "L'équation n'est pas du premier degré."
      else
        x = -b / a
        puts "La solution de l'équation #{a}x + #{b} = 0 est x = #{x}"
      end
    when 13
      print "Entrez le coefficient a : "
      a = gets.chomp.to_f
      print "Entrez le coefficient b : "
      b = gets.chomp.to_f
      print "Entrez le coefficient c : "
      c = gets.chomp.to_f
  
      # Résoudre l'équation du deuxième degré ax^2 + bx + c = 0
      discriminant = b**2 - 4 * a * c
  
      if discriminant > 0
        x1 = (-b + Math.sqrt(discriminant)) / (2 * a)
        x2 = (-b - Math.sqrt(discriminant)) / (2 * a)
        puts "Les solutions de l'équation #{a}x^2 + #{b}x + #{c} = 0 sont x1 = #{x1} et x2 = #{x2}"
      elsif discriminant == 0
        x = -b / (2 * a)
        puts "L'équation a une seule solution : x = #{x}"
      else
        puts "L'équation n'a pas de solution réelle."
      end
    when 14
      print "Entrez la valeur : "
      value = gets.chomp.to_f
      print "Entrez le pourcentage : "
      percentage = gets.chomp.to_f
  
      result = (value * percentage) / 100
      puts "Le pourcentage de #{value} est #{result}"
    when 15
      loop do
        puts "Sélectionnez une conversion d'unités :"
        puts "1. Kilomètres en miles"
        puts "2. Degrés Celsius en degrés Fahrenheit"
        puts "0. Retour au menu précédent"
        print "Choisissez une conversion (0-2) : "
        conversion_choice = gets.chomp.to_i
  
        case conversion_choice
        when 0
          break
        when 1
          print "Entrez la valeur en kilomètres : "
          km = gets.chomp.to_f
  
          miles = km * 0.621371
          puts "#{km} kilomètres équivalent à #{miles} miles."
        when 2
          print "Entrez la valeur en degrés Celsius : "
          celsius = gets.chomp.to_f
  
          fahrenheit = (celsius * 9/5) + 32
          puts "#{celsius} degrés Celsius équivalent à #{fahrenheit} degrés Fahrenheit."
        else
          puts "Conversion invalide."
        end
      end
    when 16
      loop do
        print "Entrez le montant du prêt : "
        principal = gets.chomp.to_f
        print "Entrez le taux d'intérêt annuel en pourcentage : "
        interest_rate = gets.chomp.to_f
        print "Entrez le nombre de mois : "
        months = gets.chomp.to_i
  
        monthly_interest_rate = interest_rate / 100 / 12
        numerator = monthly_interest_rate * (1 + monthly_interest_rate)**months
        denominator = (1 + monthly_interest_rate)**months - 1
  
        monthly_payment = principal * (numerator / denominator)
        total_payment = monthly_payment * months
        total_interest = total_payment - principal
  
        puts "Le paiement mensuel est de : #{monthly_payment.round(2)} $"
        puts "Le paiement total sur #{months} mois est de : #{total_payment.round(2)} $"
        puts "Le montant total des intérêts payés est de : #{total_interest.round(2)} $"
  
        print "Effectuer un autre calcul de prêt ou d'hypothèque ? (Oui/Non) : "
        answer = gets.chomp.downcase
        break unless answer == "oui"
      end
    when 17
      print "Entrez la durée en secondes : "
      seconds = gets.chomp.to_i
  
      minutes = seconds / 60
      hours = minutes / 60
      days = hours / 24
  
      puts "Le temps équivaut à :"
      puts "#{days} jour(s)"
      puts "#{hours % 24} heure(s)"
      puts "#{minutes % 60} minute(s)"
      puts "#{seconds % 60} seconde(s)"
    when 18
      loop do
        print "Entrez les données séparées par des espaces : "
        data = gets.chomp.split.map(&:to_f)
  
        sum = data.sum
        mean = sum / data.length
        variance = data.map { |x| (x - mean)**2 }.sum / data.length
        standard_deviation = Math.sqrt(variance)
        median = data.sort[data.length / 2]
        min = data.min
        max = data.max
  
        puts "Somme : #{sum}"
        puts "Moyenne : #{mean}"
        puts "Variance : #{variance}"
        puts "Écart-type : #{standard_deviation}"
        puts "Médiane : #{median}"
        puts "Minimum : #{min}"
        puts "Maximum : #{max}"
  
        print "Effectuer un autre calcul de statistiques ? (Oui/Non) : "
        answer = gets.chomp.downcase
        break unless answer == "oui"
      end
    when 19
      loop do
        print "Entrez la première fraction (sous la forme a/b) : "
        fraction1 = gets.chomp.split("/").map(&:to_i)
        print "Entrez la deuxième fraction (sous la forme a/b) : "
        fraction2 = gets.chomp.split("/").map(&:to_i)
  
        numerator1, denominator1 = fraction1
        numerator2, denominator2 = fraction2
  
        result_addition = [(numerator1 * denominator2) + (numerator2 * denominator1), denominator1 * denominator2]
        result_subtraction = [(numerator1 * denominator2) - (numerator2 * denominator1), denominator1 * denominator2]
        result_multiplication = [numerator1 * numerator2, denominator1 * denominator2]
        result_division = [numerator1 * denominator2, denominator1 * numerator2]
  
        puts "Addition : #{result_addition.join("/")}"
        puts "Soustraction : #{result_subtraction.join("/")}"
        puts "Multiplication : #{result_multiplication.join("/")}"
        puts "Division : #{result_division.join("/")}"
  
        print "Effectuer une autre opération avec des fractions ? (Oui/Non) : "
        answer = gets.chomp.downcase
        break unless answer == "oui"
      end
    when 20
      loop do
        print "Entrez la taille des matrices (lignes colonnes) : "
        rows, columns = gets.chomp.split.map(&:to_i)
  
        matrix1 = []
        matrix2 = []
  
        puts "Entrez les éléments de la première matrice :"
        rows.times do |i|
          print "Ligne #{i + 1} : "
          matrix1 << gets.chomp.split.map(&:to_i)
        end
  
        puts "Entrez les éléments de la deuxième matrice :"
        rows.times do |i|
          print "Ligne #{i + 1} : "
          matrix2 << gets.chomp.split.map(&:to_i)
        end
  
        result_addition = []
        result_subtraction = []
        result_multiplication = []
  
        rows.times do |i|
          addition_row = []
          subtraction_row = []
          multiplication_row = []
  
          columns.times do |j|
            addition_row << matrix1[i][j] + matrix2[i][j]
            subtraction_row << matrix1[i][j] - matrix2[i][j]
  
            element_multiplication = 0
            matrix2_rows = matrix2.length
  
            matrix2_rows.times do |k|
              element_multiplication += matrix1[i][k] * matrix2[k][j]
            end
  
            multiplication_row << element_multiplication
          end
  
          result_addition << addition_row
          result_subtraction << subtraction_row
          result_multiplication << multiplication_row
        end
  
        puts "Addition des matrices :"
        result_addition.each do |row|
          puts row.join(" ")
        end
  
        puts "Soustraction des matrices :"
        result_subtraction.each do |row|
          puts row.join(" ")
        end
  
        puts "Multiplication des matrices :"
        result_multiplication.each do |row|
          puts row.join(" ")
        end
  
        print "Effectuer une autre opération avec des matrices ? (Oui/Non) : "
        answer = gets.chomp.downcase
        break unless answer == "oui"
      end
    when 21
      loop do
        print "Entrez le montant en devise de départ : "
        amount = gets.chomp.to_f
        print "Entrez la devise de départ : "
        currency_from = gets.chomp.upcase
        print "Entrez la devise de destination : "
        currency_to = gets.chomp.upcase
  
        rates = {
          "USD_TO_EUR" => 0.84,
          "EUR_TO_USD" => 1.19,
          # Ajoutez ici d'autres taux de conversion nécessaires
        }
  
        conversion_rate = rates["#{currency_from}_TO_#{currency_to}"]
        converted_amount = amount * conversion_rate
  
        puts "#{amount} #{currency_from} équivalent à #{converted_amount} #{currency_to}"
  
        print "Effectuer une autre conversion monétaire ? (Oui/Non) : "
        answer = gets.chomp.downcase
        break unless answer == "oui"
      end
    when 22
      loop do
        puts "Sélectionnez une forme géométrique :"
        puts "1. Carré"
        puts "2. Rectangle"
        puts "3. Triangle"
        puts "4. Cercle"
        puts "0. Retour au menu précédent"
        print "Choisissez une forme (0-4) : "
        shape_choice = gets.chomp.to_i
  
        case shape_choice
        when 0
          break
        when 1
          print "Entrez la longueur du côté : "
          side_length = gets.chomp.to_f
  
          area = side_length**2
          perimeter = 4 * side_length
  
          puts "Aire du carré : #{area}"
          puts "Périmètre du carré : #{perimeter}"
        when 2
          print "Entrez la longueur : "
          length = gets.chomp.to_f
          print "Entrez la largeur : "
          width = gets.chomp.to_f
  
          area = length * width
          perimeter = 2 * (length + width)
  
          puts "Aire du rectangle : #{area}"
          puts "Périmètre du rectangle : #{perimeter}"
        when 3
          print "Entrez la base : "
          base = gets.chomp.to_f
          print "Entrez la hauteur : "
          height = gets.chomp.to_f
  
          area = 0.5 * base * height
          puts "Aire du triangle : #{area}"
        when 4
          print "Entrez le rayon : "
          radius = gets.chomp.to_f
  
          area = Math::PI * radius**2
          circumference = 2 * Math::PI * radius
  
          puts "Aire du cercle : #{area}"
          puts "Circonférence du cercle : #{circumference}"
        else
          puts "Forme invalide."
        end
      end
    when 23
      loop do
        print "Entrez la valeur de la résistance en ohms (Ω) : "
        resistance = gets.chomp.to_f
  
        print "Entrez la valeur de la tension en volts (V) : "
        voltage = gets.chomp.to_f
  
        print "Entrez la valeur de l'intensité en ampères (A) : "
        current = gets.chomp.to_f
  
        case resistance
        when 0
          current = voltage / resistance
          puts "L'intensité du courant est de #{current} A"
        when Float::INFINITY
          voltage = current * resistance
          puts "La tension est de #{voltage} V"
        else
          current = voltage / resistance
          puts "L'intensité du courant est de #{current} A"
          voltage = current * resistance
          puts "La tension est de #{voltage} V"
        end
  
        print "Effectuer une autre opération avec la résistance ? (Oui/Non) : "
        answer = gets.chomp.downcase
        break unless answer == "oui"
      end
    when 0
      break
    else
      puts "Opération invalide."
    end
  
    print "Appuyez sur Entrée pour revenir au menu..."
    gets
  end
  
