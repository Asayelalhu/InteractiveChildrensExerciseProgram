#!/bin/bash

echo "Hello, my friend!"
echo "Welcome to the Interactive Children's Exercise Program!"
echo "**"
echo "This program will help you practice arithmetic, language, ethics, and technology exercises."
echo "Please enter your information to get started."

read -p "Name: " name
read -p "Age: " age


if ! echo "$age" | grep -Eq "^[3-9]$|^1[0-2]$"; then
    echo "Sorry, the age is not available for this program."
    exit 1
fi

if [ "$age" -ge 3 ] && [ "$age" -le 5 ]; then
    category="3-5"
elif [ "$age" -ge 6 ] && [ "$age" -le 9 ]; then
    category="6-9"
elif [ "$age" -ge 10 ] && [ "$age" -le 12 ]; then
    category="10-12"
fi

echo "**"
echo "Hello $name, my friend!"
echo "Welcome to the exercise program for the age group $category."
echo "We will now provide you with the suitable exercises."

# Function to display a colored question
print_question() {
  local question=$1
  local color=$2
  echo -e "\e[${color}m${question}\e[0m"
}

# Function to display colored options
print_options() {
  local options=("$@")
  local color=$1
  for option in "${options[@]}"; do
    echo -e "\e[${color}m${option}\e[0m"
  done
}
case "$category" in
    "3-5")
        math_exercise=$(tput setaf 6)"Choose the correct answer letter : Sum of 5 apples + 3 apples ="$(tput sgr0)
        math_options=("A) 8" "B) 9" "C) 2")
        correct_answer="A"
        language_exercise=$(tput setaf 6)"Choose the correct answer letter : Which word means the opposite of 'big'?"$(tput sgr0)
        language_options=("A) Small" "B) Large" "C) Huge")
        correct_language_answer="A"
        ethics_exercise=$(tput setaf 6)"Choose the correct answer letter : What trait do you consider important in a friend?"$(tput sgr0)
        ethics_options=("A) Stealing" "B) Lying" "C) Honesty")
        correct_ethics_answer="C"
        tech_exercise=$(tput setaf 6)"Choose the correct answer letter : Where do you watch cartoons?"$(tput sgr0)
        tech_options=("A) Book" "B) TV" "C) Bag")
        correct_tech_answer="B"
        ;;"6-9")
        math_exercise=$(tput setaf 6)"Choose the correct answer letter : Sum of 132 grapes + 8 grapes ="$(tput sgr0)
        math_options=("A) 150" "B) 140" "C) 141")
        correct_answer="B"
        language_exercise=$(tput setaf 6)"Choose the correct answer letter : Complete the sentence: The boy go ...."$(tput sgr0)
        language_options=("A) to school" "B) on school" "C) at school")
        correct_language_answer="A"
        ethics_exercise="$(tput setaf 6)Choose the correct answer letter : What would you do if you saw someone being bullied?"$(tput sgr0)
        ethics_options=("A) Join in" "B) Ignore it" "C) Tell an adult")
        correct_ethics_answer="C"
        tech_exercise=$(tput setaf 6)"Choose the correct answer letter : Which of these applications is used for solving homework?"$(tput sgr0)
        tech_options=("A) Roblox" "B) Madrasati" "C) Snapchat")
        correct_tech_answer="B"
        ;;
    "10-12")
        math_exercise=$(tput setaf 6)"Choose the correct answer letter : 20 potatoes x 8 potatoes ="$(tput sgr0)
        math_options=("A) 123" "B) 155" "C) 160")
        correct_answer="C"
        language_exercise=$(tput setaf 6)"Choose the correct answer letter : Identify the adjective in the sentence: 'The big, blue boat sailed quickly.'"$(tput sgr0)
        language_options=("A) big" "B) blue" "C) quickly")
        correct_language_answer="B"
        ethics_exercise=$(tput setaf 6)"Choose the correct answer letter : What does 'integrity' mean?"$(tput sgr0)
        ethics_options=("A) Being honest and having strong moral principles" "B) Being sneaky" "C) Being popular")
        correct_ethics_answer="A"
        tech_exercise=$(tput setaf 6)"Choose the correct answer letter : What is an example of a programming 
        language?"$(tput sgr0)
        tech_options=("A) English" "B) Java" "C) Spanish")
        correct_tech_answer="B"
        ;;
esac

echo "**"


echo "Math exercises:"
echo "$math_exercise"
for option in "${math_options[@]}"; do
    echo "$option"
done

read -p "Choose the correct answer for the math exercise: " user_answer

user_answer=$(echo "$user_answer" | sed 's/./\U&/g')
if [ "$user_answer" == "$correct_answer" ]; then
    echo -e "\e[32mCorrect answer,Well done! Keep up the good work!\e[0m"
else
    echo -e "\e[31mWrong answer,Try again! You'll improve with practice.\e[0m"
fi

echo "**"
6-9")
        math_exercise=$(tput setaf 6)"Choose the correct answer letter : Sum of 132 grapes + 8 grapes ="$(tput sgr0)
        math_options=("A) 150" "B) 140" "C) 141")
        correct_answer="B"
        language_exercise=$(tput setaf 6)"Choose the correct answer letter : Complete the sentence: The boy go ...."$(tput sgr0)
        language_options=("A) to school" "B) on school" "C) at school")
        correct_language_answer="A"
        ethics_exercise="$(tput setaf 6)Choose the correct answer letter : What would you do if you saw someone being bullied?"$(tput sgr0)
        ethics_options=("A) Join in" "B) Ignore it" "C) Tell an adult")
        correct_ethics_answer="C"
        tech_exercise=$(tput setaf 6)"Choose the correct answer letter : Which of these applications is used for solving homework?"$(tput sgr0)
        tech_options=("A) Roblox" "B) Madrasati" "C) Snapchat")
        correct_tech_answer="B"
        ;;
    "10-12")
        math_exercise=$(tput setaf 6)"Choose the correct answer letter : 20 potatoes x 8 potatoes ="$(tput sgr0)
        math_options=("A) 123" "B) 155" "C) 160")
        correct_answer="C"
        language_exercise=$(tput setaf 6)"Choose the correct answer letter : Identify the adjective in the sentence: 'The big, blue boat sailed quickly.'"$(tput sgr0)
        language_options=("A) big" "B) blue" "C) quickly")
        correct_language_answer="B"
        ethics_exercise=$(tput setaf 6)"Choose the correct answer letter : What does 'integrity' mean?"$(tput sgr0)
        ethics_options=("A) Being honest and having strong moral principles" "B) Being sneaky" "C) Being popular")
        correct_ethics_answer="A"
        tech_exercise=$(tput setaf 6)"Choose the correct answer letter : What is an example of a programming 
        language?"$(tput sgr0)
        tech_options=("A) English" "B) Java" "C) Spanish")
        correct_tech_answer="B"
        ;;
esac

echo "**"

echo "Math exercises:"
echo "$math_exercise"
for option in "${math_options[@]}"; do
    echo "$option"
done

read -p "Choose the correct answer for the math exercise: " user_answer

user_answer=$(echo "$user_answer" | sed 's/./\U&/g')
if [ "$user_answer" == "$correct_answer" ]; then
   echo -e "\e[32mCorrect answer, Well done! Keep up the good work!\e[0m"
else
   echo -e "\e[31mWrong answer, Try again!
You'll improve with practice. \e[0m"

fi
