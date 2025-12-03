/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** is_mouse_button_pressed
*/

#include "sfml_utils.hpp"

bool is_mouse_button_pressed(sf::Mouse::Button button)
{
    return sf::Mouse::isButtonPressed(button);
}
