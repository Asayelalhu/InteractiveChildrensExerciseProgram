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
        ;;