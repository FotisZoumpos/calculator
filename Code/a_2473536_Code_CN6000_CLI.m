clc;
clear;

global pi e g c faraday F;

pi = 3.141592653589793;
e = 2.718281828459045;
g = 9.80665;
c = 299792458;
faraday = 96485.33212;
F = faraday;

while true
    fprintf('  Επιστημονικό Κομπιουτεράκι\n');
    fprintf('---------------\n');
    fprintf('1. Βασικές Πράξεις\n');
    fprintf('2. Αριθμητικές Λειτουργίες\n');
    fprintf('3. Τριγωνομετρικές Συναρτήσεις\n');
    fprintf('4. Υπερβολικές Συναρτήσεις\n');
    fprintf('5. Έξοδος\n');
try
        main_input = input('Επιλέξτε κατηγορία (1-5): ', 's');
        main_choice = str2double(main_input);

        if isnan(main_choice) || ~ismember(main_choice, 1:5)
            fprintf('Μη έγκυρη επιλογή. Πληκτρολογήστε αριθμό από 1 έως 5.\n');
            continue;
        end

        if main_choice == 5
            fprintf('Έξοδος από το πρόγραμμα.\n');
            break;
        end

        if main_choice == 1
            while true
                fprintf('\n-- Βασικές Πράξεις --\n');
                fprintf('a. Πρόσθεση\nb. Αφαίρεση\nc. Πολλαπλασιασμός\nd. Διαίρεση\n');
                fprintf('e. Τετραγωνική Ρίζα\nf. Τετράγωνο\ng. Υπόλοιπο Διαίρεσης\nh. Ύψωση σε δύναμη\n');
                fprintf('z. Επιστροφή\n');

                sub_choice = input('Επιλέξτε πράξη: ', 's');
                switch sub_choice
                    case 'a', addition();
                    case 'b', subtraction();
                    case 'c', multiplication();
                    case 'd', division();
                    case 'e', square_root();
                    case 'f', square();
                    case 'g', modulus();
                    case 'h', power();
                    case 'z', break;
                    otherwise
                        fprintf('Μη έγκυρη επιλογή. Προσπαθήστε ξανά.\n');
                end
            end

        elseif main_choice == 2
            while true
                fprintf('\n-- Αριθμητικές Λειτουργίες --\n');
                fprintf('a. Παραγοντικό\nb. Ανάλυση σε Πρώτους Παράγοντες\nc. Διαιρέτες\n');
                fprintf('d. Ελάχιστο Κοινό Πολλαπλάσιο\ne. Μέγιστος Κοινός Διαιρέτης\n');
                fprintf('f. e^x\ng. ln(x)\nh. log10(x)\ni. Εξίσωση Β'' Βαθμού\n');
                fprintf('z. Επιστροφή\n');

                sub_choice = input('Επιλέξτε λειτουργία: ', 's');
                switch sub_choice
                    case 'a', factorial_calc();
                    case 'b', prime_factors();
                    case 'c', divisors();
                    case 'd', lcm();
                    case 'e', gcd();
                    case 'f', exponential();
                    case 'g', natural_log();
                    case 'h', log_custom();
                    case 'i', quadratic_equation();
                    case 'z', break;
                    otherwise
                        fprintf('Μη έγκυρη επιλογή. Προσπαθήστε ξανά.\n');
                end
            end

        elseif main_choice == 3
            while true
                fprintf('\n-- Τριγωνομετρικές Συναρτήσεις --\n');
                fprintf('a. Ημίτονο\nb. Συνημίτονο\nc. Εφαπτομένη\nd. Συνεφαπτομένη\ne. Τέμνουσα\nf. Συντέμνουσα\n');
                fprintf('g. Τόξο Ημιτόνου\nh. Τόξο Συνημιτόνου\ni. Τόξο Εφαπτομένης\nj. Τόξο Τεμνούσας\nk. Τόξο Συντέμνουσας\n');
                fprintf('z. Επιστροφή\n');

                sub_choice = input('Επιλέξτε συναρτηση: ', 's');
                switch sub_choice
                    case 'a', sine();
                    case 'b', cosine();
                    case 'c', tangent();
                    case 'd', cotangent();
                    case 'e', secant();
                    case 'f', csc();
                    case 'g', arcsin();
                    case 'h', arccos();
                    case 'i', arctan();
                    case 'j', arcsec();
                    case 'k', arccsc();
                    case 'z', break;
                    otherwise
                        fprintf('Μη έγκυρη επιλογή. Προσπαθήστε ξανά.\n');
                end
            end

        elseif main_choice == 4
            while true
                fprintf('\n-- Υπερβολικές Συναρτήσεις --\n');
                fprintf('a. Υπερβολικό Ημίτονο\nb. Υπερβολικό Συνημίτονο\nc. Υπερβολική Εφαπτομένη\nd. Υπερβολική Συνεφαπτομένη\n');
                fprintf('e. Υπερβολική Τέμνουσα\nf. Υπερβολική Συντέμνουσα\n');
                fprintf('g. Τόξο Υπερβολικού Ημιτόνου\nh. Τόξο Υπερβολικού Συνημιτόνου\n');
                fprintf('i. Τόξο Υπερβολικής Εφαπτομένης\nj. Τόξο Υπερβολικής Συνεφαπτομένης\n');
                fprintf('k. Τόξο Υπερβολικής Τεμνούσας\nl. Τόξο Υπερβολικής Συντέμνουσας\n');
                fprintf('z. Επιστροφή\n');

                sub_choice = input('Επιλέξτε συναρτηση: ', 's');
                switch sub_choice
                    case 'a', sinh();
                    case 'b', cosh();
                    case 'c', tanh();
                    case 'd', coth();
                    case 'e', sech();
                    case 'f', csch();
                    case 'g', arsinh();
                    case 'h', arcosh();
                    case 'i', artanh();
                    case 'j', arcoth();
                    case 'k', arsech();
                    case 'l', arcsch();
                    case 'z', break;
                    otherwise
                        fprintf('Μη έγκυρη επιλογή. Προσπαθήστε ξανά.\n');
                end
            end
        end

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

%Main functions

function addition()
    global pi e g c faraday F;

    show_constants();

    expr = input('Αριθμοί για πρόσθεση (π.χ. 7 + F + 9,5 + pi): ', 's');

    if contains(expr, '.')
        fprintf('Για δεκαδικούς αριθμούς χρησιμοποιήστε κόμμα (,).\n');
        return;
    end

    expr = comma_replace(expr);

    pattern = '^[\d\s\+\.\(\)a-zA-Z]*$';

    if isempty(regexp(expr, pattern, 'once'))
        fprintf('Μη επιτρεπτοί χαρακτήρες.\n');
        return;
    end

    if isempty(strfind(expr, '+'))
        fprintf('Πρέπει να περιέχει τουλάχιστον μία πράξη πρόσθεσης (+).\n');
        return;
    end

    if contains(expr, '++')
        fprintf('Δεν επιτρέπονται συνεχόμενα σύμβολα +.\n');
        return;
    end

    try
        result = eval(expr);
        display_result(result);
    catch
        fprintf('Σφάλμα: Μη έγκυρη αριθμητική έκφραση.\n');
    end
end

function subtraction()
    global pi e g c faraday F;

    show_constants();

    expr = input('Αριθμοί για αφαίρεση (π.χ. 10 - 3,5 - pi - F): ', 's');

    if contains(expr, '.')
        fprintf('Για δεκαδικούς αριθμούς χρησιμοποιήστε κόμμα (,).\n');
        return;
    end

    expr = comma_replace(expr);

    pattern = '^[\d\s\-\.\(\)]*(pi|e|g|c|faraday|F)?[\d\s\-\.\(\)pi|e|g|c|faraday|F]*$';

    if isempty(regexp(expr, pattern, 'once'))
        fprintf('Μη επιτρεπτοί χαρακτήρες.\n');
        return;
    end
     
    if isempty(strfind(expr, '-'))
        fprintf('Πρέπει να περιέχει τουλάχιστον μία πράξη αφαίρεσης (-).\n');
        return;
    end
    
    if contains(expr, '--')
        fprintf('Δεν επιτρέπονται συνεχόμενα σύμβολα -.\n');
        return;
    end
    
    try
        result = eval(expr); 
        display_result(result);
    catch
        fprintf('Σφάλμα: Μη έγκυρη αριθμητική έκφραση.\n');
    end
end

function multiplication()
    global pi e g c faraday F;

    show_constants();

    expr = input('Αριθμοί για πολλαπλασιασμό (π.χ. 2 * e * 3,5 * pi): ', 's');

    if contains(expr, '.')
        fprintf('Για δεκαδικούς αριθμούς χρησιμοποιήστε κόμμα (,).\n');
        return;
    end

    expr = comma_replace(expr);

    pattern = '^[\d\s\*\.\(\)\-]*(pi|e|g|c|faraday|F)?[\d\s\*\.\(\)\-pi|e|g|c|faraday|F]*$';

    if isempty(regexp(expr, pattern, 'once'))
        fprintf('Μη επιτρεπτοί χαρακτήρες.\n');
        return;
    end

    if isempty(strfind(expr, '*'))
        fprintf('Πρέπει να περιέχει τουλάχιστον μία πράξη πολλαπλασιασμού (*).\n');
        return;
    end

    try
        result = eval(expr);
        display_result(result);
    catch
        fprintf('Σφάλμα: Μη έγκυρη αριθμητική έκφραση.\n');
    end
end

function division()
    global pi e g c faraday F;

    show_constants();

    expr = input('Αριθμοί για διαίρεση (π.χ. 10 / 3,5 / pi): ', 's');

    if contains(expr, '.')
        fprintf('Για δεκαδικούς αριθμούς χρησιμοποιήστε κόμμα (,).\n');
        return;
    end

    expr = comma_replace(expr);

    pattern = '^[\d\s\/\.\-\(\)]*(pi|e|g|c|faraday|F)?[\d\s\/\.\-\(\)pi|e|g|c|faraday|F]*$';

    if isempty(regexp(expr, pattern, 'once')) 
        fprintf('Μη επιτρεπτοί χαρακτήρες.\n');
        return;
    end

    if isempty(strfind(expr, '/'))
        fprintf('Πρέπει να περιέχει τουλάχιστον μία πράξη διαίρεσης (/).\n');
        return;
    end

    try
        result = eval(expr);

        if ~isfinite(result)
            fprintf('Σφάλμα: Διαίρεση με το μηδέν.\n');
            return;
        end

        display_result(result);

    catch
        fprintf('Σφάλμα: Μη έγκυρη αριθμητική έκφραση.\n');
    end
end

function square_root()
    try
        user_input = input('Πληκτρολογήστε έναν αριθμό (με κόμμα για δεκαδικά): ', 's');

        if contains(user_input, '.')
            error('Για δεκαδικούς αριθμούς χρησιμοποιήστε κόμμα (,).');
        end

        user_input = comma_replace(user_input);

        x = str2double(user_input);

        if isnan(x)
            error('Σφάλμα: Πληκτρολογήστε έγκυρο αριθμό.');
        end

        if x < 0
            error('Σφάλμα: Η τετραγωνική ρίζα υπάρχει μόνο για θετικούς αριθμούς.');
        end

        result = sqrt(x);
        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function square()
    try
        user_input = input('Εισάγετε έναν αριθμό (με κόμμα για δεκαδικά): ', 's');

        if contains(user_input, '.')
            error('Για δεκαδικούς αριθμούς χρησιμοποιήστε κόμμα (,).');
        end

        user_input = comma_replace(user_input);

        y = str2double(user_input);

        if isnan(y)
            error('Σφάλμα: Πληκτρολογήστε έγκυρο αριθμό.');
        end

        result = y^2;
        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function modulus()
    try
        x_str = input('Πρώτος αριθμός. Για δεκαδικό (χρησιμοποιήστε κόμμα): ', 's');
        y_str = input('Δεύτερος αριθμός. Για δεκαδικό (χρησιμοποιήστε κόμμα): ', 's');

        if contains(x_str, '.') || contains(y_str, '.')
            error('Χρησιμοποιήστε κόμμα (,) για δεκαδικούς αριθμούς, όχι τελεία (.).');
        end

        x_str = comma_replace(x_str);
        y_str = comma_replace(y_str);

        x = str2double(x_str);
        y = str2double(y_str);

        if isnan(x) || isnan(y)
            error('Σφάλμα: Και οι δύο τιμές πρέπει να είναι έγκυροι αριθμοί.');
        end

        if y == 0
            error('Σφάλμα: Δεν επιτρέπεται διαίρεση με το μηδέν.');
        end

        result = mod(x, y);

        if result == 0
            result = abs(result);
        end

        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function power()
    try
        x_str = input('Εισάγετε τη βάση (χρησιμοποιήστε κόμμα για δεκαδικά): ', 's');

        if contains(x_str, '.')
            error('Για δεκαδικούς αριθμούς χρησιμοποιήστε κόμμα (,).');
        end

        x_str = comma_replace(x_str);
        x = str2double(x_str);

        if isnan(x)
            error('Η βάση πρέπει να είναι αριθμός.');
        end

        y_str = input('Εισάγετε τον εκθέτη (χρησιμοποιήστε κόμμα για δεκαδικά): ', 's');

        if contains(y_str, '.')
            error('Χρησιμοποιήστε κόμμα (,) αντί για τελεία (.) για δεκαδικούς αριθμούς.');
        end

        y_str = comma_replace(y_str);
        y = str2double(y_str);

        if isnan(y)
            error('Ο εκθέτης πρέπει να είναι αριθμός.');
        end

        result = x^y;
        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function factorial_calc()
    try
        x_str = input('Εισάγετε έναν αριθμό: ', 's');

        if contains(x_str, ',') || contains(x_str, '.')
            error('Δεν επιτρέπονται οι δεκαδικοί.');
        end

        x = str2double(x_str);
        if isnan(x)
            error('Σφάλμα: Εισάγετε έγκυρο αριθμό.');
        end

        if x < 0 || floor(x) ~= x
            error('Το παραγοντικό ορίζεται μόνο για θετικούς ακέραιους.');
        end

        result = factorial(x);
        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function prime_factors()
    x_str = input('Εισάγετε έναν αριθμό: ', 's');
    x = str2double(x_str);

    if isnan(x) || x <= 1 || floor(x) ~= x || contains(x_str, ',')
        fprintf('Σφάλμα: Εισάγετε έναν θετικό ακέραιο μεγαλύτερο από 1.\n');
        return;
    end

    fprintf('Οι πρώτοι παράγοντες του %d είναι: ', x);
    
    first = true;

    count = 0;
    while mod(x, 2) == 0
        count = count + 1;
        x = x / 2;
    end
    if count > 0
        if ~first, fprintf(' × '); end
        if count == 1
            fprintf('2');
        else
            fprintf('2^%d', count);
        end
        first = false;
    end

    for i = 3:2:sqrt(x)
        count = 0;
        while mod(x, i) == 0
            count = count + 1;
            x = x / i;
        end
        if count > 0
            if ~first, fprintf(' × '); end
            if count == 1
                fprintf('%d', i);
            else
                fprintf('%d^%d', i, count);
            end
            first = false;
        end
    end

    if x > 2
        if ~first, fprintf(' × '); end
        fprintf('%d', x);
    end

    fprintf('\n');
end

function divisors()
    x = input('Εισάγετε θετικό ακέραιο αριθμό: ', 's'); 
    num = str2double(x); 

    if isnan(num) || num <= 0 || floor(num) ~= num || contains(x, ',')
        fprintf('Σφάλμα: Επιτρέπεται μόνο θετικός ακέραιος!\n');
        return;
    end
    
    fprintf('Οι διαιρέτες του %d είναι: ', num);
    for i = 1:num
        if mod(num, i) == 0
            fprintf('%d ', i);
        end
    end
    fprintf('\n');
end

function lcm()
    try
        str = input('Εισάγετε ακέραιο/ους αριθμό/αριθμούς χωρισμένους με κόμμα: ', 's');

        numStrings = strsplit(str, ',');
        numbers = str2double(strtrim(numStrings));

        if any(isnan(numbers)) || any(numbers <= 0) || any(floor(numbers) ~= numbers) 
            error('Σφάλμα: Εισάγετε μόνο θετικούς ακέραιους αριθμούς.');
        end

        lcm_result = numbers(1);
        for i = 2:length(numbers)
            lcm_result = lcm(lcm_result, numbers(i));
        end

        fprintf('Το Ελάχιστο Κοινό Πολλαπλάσιο των [%s] είναι: ', str);
        display_result(lcm_result); 

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function gcd()
    try
        str = input('Εισάγετε θετικό ή θετικούς ακέραιους αριθμούς χωρισμένους με κόμμα: ', 's');

        numStrings = strsplit(str, ',');
        numbers = str2double(strtrim(numStrings)); 

        if any(isnan(numbers)) || any(numbers <= 0) || any(floor(numbers) ~= numbers)
            error('Σφάλμα: Εισάγετε μόνο θετικούς ακέραιους αριθμούς.');
        end

        gcd_result = numbers(1);
        for i = 2:length(numbers)
            gcd_result = gcd(gcd_result, numbers(i));
        end

        fprintf('Ο Μέγιστος Κοινός Διαιρέτης των [%s] είναι: ', str);
        display_result(gcd_result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function exponential()
    try
        x = input('Εισάγετε τον εκθέτη(x) για e^x: ', 's');   
        num = str2double(x);                       
        if isnan(num)
            error('Σφάλμα: Πρέπει να εισάγετε έναν αριθμό!');
        end
        if(contains(x,',') || contains(x,'.'))
            error('Σφάλμα: Επιτρέπονται μόνο ακέραιοι αριθμοί')
        end
                       
        result = exp(num);                          
        display_result(result);                     

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function natural_log()
    try
        str = input('Εισάγετε έναν αριθμό. Δεκαδικοί αριθμοί με κόμμα(,): ', 's');

        if contains(str, '.')
            error('Δεν επιτρέπεται η τελεία. Χρησιμοποιήστε κόμμα για δεκαδικά.');
        end

       str = comma_replace(str);

        x = str2double(str);

        if isnan(x)
            error('Μη έγκυρος αριθμός.');
        end

        if x <= 0
            error('Ο φυσικός λογάριθμος ορίζεται μόνο για θετικούς αριθμούς.');
        end

         result = log(x);
        fprintf('ln(%s) = ', strrep(sprintf('%g', x), '.', ','));
        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function log_custom()
    try
        user_input = input('Εισάγετε έναν αριθμό (με κόμμα για δεκαδικά): ', 's');

        if contains(user_input, '.')
            error('Δεν επιτρέπεται η τελεία. Χρησιμοποιήστε κόμμα για δεκαδικά.');
        end

        user_input = comma_replace(user_input);
        x = str2double(user_input);

        if isnan(x)
            error('Σφάλμα: Η είσοδος δεν είναι έγκυρος αριθμός.');
        end

        if x <= 0
            error('Σφάλμα: Ο λογάριθμος με βάση 10 ορίζεται μόνο για x > 0.');
        end

        result = log10(x);
        fprintf('log(%s) = ', strrep(sprintf('%g', x), '.', ','));
        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function quadratic_equation()
    try
       coeffs = input(['Εισάγετε τους συντελεστές a, b, c (χωρισμένους με κόμμα).' newline ...
                'Για δεκαδικούς αριθμούς κάνετε χρήση της τελείας (.)' newline ...
                'Είσοδος αριθμών a , b , c : '], 's');

        values = str2double(strsplit(coeffs, ','));
    
        if length(values) ~= 3 || any(isnan(values))
            error('Σφάλμα: Εισάγετε τρεις αριθμούς χωρισμένους με κόμμα.');
        end
     
        a = values(1);
        b = values(2);
        c = values(3);
 
        if a == 0
            error('Σφάλμα: Ο συντελεστής a δεν μπορεί να είναι μηδέν.');
        end
 
        delta = b^2 - 4*a*c;

        format_output = @(num) sprintf('%g', num); 
 
        if delta > 0
            x1 = (-b + sqrt(delta)) / (2*a);
            x2 = (-b - sqrt(delta)) / (2*a);
            fprintf('Δύο πραγματικές λύσεις:\n x1 = ');
            display_result(x1);
            fprintf(' x2 = ');
            display_result(x2);
        elseif delta == 0
            x = -b / (2*a);
            fprintf('Μία διπλή πραγματική λύση: x = ');
            display_result(x);
        else
            real_part = -b / (2*a);
            imag_part = sqrt(-delta) / (2*a);
            fprintf('Δύο μιγαδικές λύσεις: x1 = %s + %si, x2 = %s - %si\n', ...
                format_output(real_part), format_output(imag_part), ...
                format_output(real_part), format_output(imag_part));
        end
        
    catch ME
        fprintf('%s\n', ME.message);
    end
end

function sine()
    try
        x = angle_in_degrees();
        result = sind(x);
        fprintf('sin(%g°) = ', x);
        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function cosine()
      try
        x = angle_in_degrees();
        result = cosd(x);
        fprintf('cos(%g°) = ', x);
        display_result(result);

    catch ME
        fprintf('%s\n', ME.message);
    end
end

function tangent()
   try
        x = angle_in_degrees();
        result = tand(x);
        fprintf('tan(%g°) = ', x);
        display_result(result);
    catch ME
        fprintf('%s\n', ME.message);
    end
end

function cotangent()
   try
        x = angle_in_degrees();  

        if mod(x, 180) == 0
            error('Η συνεφαπτομένη δεν ορίζεται για γωνία 180°.');
        end

        result = 1 / tand(x); 
        fprintf('cot(%g°) = ', x);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function secant()
    try
        x = angle_in_degrees(); 

        if mod(x, 180) == 90
            error('Η τέμνουσα δεν ορίζεται για γωνία 90 μοιρών.');
        end

        result = 1 / cosd(x);  
        fprintf('sec(%g°) = ', x);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function cosecant()
    try
        x = angle_in_degrees();

        if mod(x, 180) == 0
            error('Η συντέμνουσα δεν ορίζεται για γωνία 180°.');
        end

        result = 1 / sind(x);
        fprintf('csc(%g°) = ', x);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arcsin()
    try
        number = input('Εισαγωγή αριθμού για τόξο ημιτόνου: ', 's');

        if contains(number, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        user_input = comma_replace(number);
        x = str2double(user_input);

        if isnan(x)
            error('Επιτρέπονται μόνο αριθμοί.');
        end

        if numel(x) ~= 1
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if x < -1 || x > 1
            error('Η τιμή πρέπει να είναι μεταξύ -1 και 1.');
        end

        result = asind(x);
        fprintf('arcsin(%s) = ', number);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arccos()
    try
        number = input('Εισαγωγή αριθμού για τόξο συνημιτόνου: ', 's');

        if contains(number, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(number);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπονται μόνο αριθμοί.');
        end

        if numel(x) ~= 1
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if x < -1 || x > 1
            error('Η τιμή πρέπει να είναι μεταξύ -1 και 1.');
        end

        result = acosd(x);
        fprintf('arccos(%s) = ', number); 
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arctan()
    try
        number = input('Εισαγωγή αριθμού για τόξο εφαπτομένης: ', 's');

        if contains(number, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        user_input = comma_replace(number);
        x = str2double(user_input);

        if isnan(x)
            error('Επιτρέπονται μόνο αριθμοί.');
        end

        if numel(x) ~= 1
           error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        result = atand(x); 
        fprintf('arctan(%s) = ', number);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arcsec()
    try
        number = input('Εισαγωγή αριθμού για τόξο τέμνουσας: ', 's');

        if contains(number, '.')
             error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        user_input = comma_replace(number);
        x = str2double(user_input);

        if isnan(x)
            error('Επιτρέπονται μόνο αριθμοί.');
        end

        if numel(x) ~= 1
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if abs(x) < 1
            error('Η τέμνουσα ορίζεται μόνο για |x| ≥ 1.');
        end

        result = rad2deg(acos(1 / x));
        fprintf('arcsec(%s) = ', number);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arccsc()
    try
        number = input('Εισαγωγή αριθμού για τόξο συντέμνουσας: ', 's');

        if contains(number, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        user_input = comma_replace(number);
        x = str2double(user_input);

        if isnan(x)
            error('Επιτρέπονται μόνο αριθμοί.');
        end

        if numel(x) ~= 1
             error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if abs(x) < 1
            error('Η συντέμνουσα ορίζεται μόνο για |x| ≥ 1.');
        end

        result = rad2deg(asin(1 / x));

        fprintf('arccsc(%s) = ', number);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function sinh()
    try
        user_input = input('Εισαγωγή αριθμού για το υπερβολικό ημίτονο: ', 's');

        if contains(user_input, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        result = sinh(x);
        fprintf('sinh(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function cosh()
    try
        user_input = input('Εισαγωγή αριθμού για το υπερβολικό συνημίτονο: ', 's');

        if contains(user_input, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        result = cosh(x);

        fprintf('cosh(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function tanh()
    try
        user_input = input('Εισάγετε έναν αριθμό για την υπερβολική εφαπτομένη (tanh): ', 's');

        if contains(user_input, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        result = tanh(x);

        fprintf('tanh(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function coth()
    try
        user_input = input('Εισαγωγή αριθμού για υπερβολική συνεφαπτομένη: ', 's');

        if contains(user_input, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if x == 0
            error('Η υπερβολική συνεφαπτομένη δεν ορίζεται για x = 0.');
        end

        result = 1 / tanh(x);
        fprintf('coth(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function sech()
    try
        user_input = input('Εισαγωγή αριθμού για υπερβολική τεμνούσα:', 's');

        if contains(user_input, '.')
            error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        result = 1 / cosh(x);
        fprintf('sech(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function csch()
    try
        user_input = input('Εισαγωγή αριθμού για την υπερβολική συντέμνουσα: ', 's');

        if contains(user_input, '.')
             error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if x == 0
            error('Η υπερβολική συντέμνουσα δεν ορίζεται για x = 0.');
        end

        result = 1 / sinh(x);
        fprintf('csch(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arsinh()
    try
        user_input = input('Εισαγωγή αριθμού για το τόξο του υπερβολικού ημιτόνου: ', 's');

        if contains(user_input, '.')
             error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        result = asinh(x);
        fprintf('arsinh(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arcosh()
    try
        user_input = input('Εισαγωγή αριθμού για το τόξο του υπερβολικού συνημιτόνου: ', 's');

        if contains(user_input, '.')
             error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if x < 1
            error('Το τόξο του υπερβολικού συνημιτόνου ορίζεται μόνο για x ≥ 1.');
        end

        result = acosh(x);
        fprintf('arcosh(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function artanh()
    try
        user_input = input('Εισαγωγή αριθμού για το τόξο της υπερβολικής εφαπτομένης: ', 's');

        if contains(user_input, '.')
             error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if abs(x) >= 1
            error('Το τόξο της υπερβολικής εφαπτομένης ορίζεται μόνο για -1 < x < 1.');
        end

        result = atanh(x);
        fprintf('artanh(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arcoth()
    try
        user_input = input('Εισαγωγή αριθμού για το τόξο της υπερβολικής συνεφαπτομένης: ', 's');

        if contains(user_input, '.')
             error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if abs(x) <= 1
            error('Το τόξο της υπερβολικής συνεφαπτομένης ορίζεται μόνο για |x| > 1.');
        end

        result = acoth(x);
        fprintf('arcoth(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arsech()
    try
        user_input = input('Εισαγωγή αριθμού για το τόξο της υπερβολικής τεμνούσας: ', 's');

        if contains(user_input, '.')
             error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if x <= 0 || x > 1
            error('Το τόξο της υπερβολικής τέμνουσας ορίζεται μόνο για 0 < x ≤ 1.');
        end

        result = asech(x);
        fprintf('arsech(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end

function arcsch()
    try
        user_input = input('Εισαγωγή αριθμού για το τόξο της υπερβολικής συντέμνουσας: ', 's');

        if contains(user_input, '.')
             error('Κάνε χρήση του κόμμα για δεκαδικό (,).');
        end

        input_modified = comma_replace(user_input);
        x = str2double(input_modified);

        if isnan(x)
            error('Επιτρέπεται μόνο ένας αριθμός.');
        end

        if x == 0
            error('Το τόξο της υπερβολικής συντέμνουσας δεν ορίζεται για x = 0.');
        end

        result = acsch(x);
        fprintf('arcsch(%s) = ', user_input);
        display_result(result);

    catch ME
        fprintf('Σφάλμα: %s\n', ME.message);
    end
end
    
%Helper functions

function display_result(result)
    if mod(result, 1) == 0
        fprintf('%.0f\n', result);
    else
        formatted_result = strrep(sprintf('%.15f', result), '.', ',');
        formatted_result = regexprep(formatted_result, '0+$', '');
        formatted_result = regexprep(formatted_result, ',$', '');
        fprintf('%s\n', formatted_result);
    end
end

function x = angle_in_degrees()
    x_str = input('Γωνία σε μοίρες: ', 's');

    if contains(x_str, '.')
        error('Για δεκαδικό χρησιμοποίησε κόμμα (,).');
    end

    if ~isempty(regexp(x_str, '[^0-9,-]', 'once'))
        error('Εισήγαγε αριθμό (π.χ. 5 ή -20,5).');
    end

    x_str = comma_replace(x_str);
    x = str2double(x_str);

    if isnan(x) || isempty(x)
        error('Άκυρη είσοδος.');
    end
end

function show_constants()
    fprintf('Διαθέσιμες σταθερές: pi, e, g, c, F (faraday)\n');
end

function result = comma_replace(x)
    result = strrep(x , ',' , '.');
end
