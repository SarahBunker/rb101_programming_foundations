def prompt(message)
  puts "=> #{message}"
end

prompt "What is the bill?"
bill = gets.chomp.to_f
prompt "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip_money = (tip_percent / 100 * bill).round(2)
total = tip_money + bill.round(2)

prompt("The tip is $#{tip_money}")
prompt "The total is $#{total}"

#didn't complete further exploration