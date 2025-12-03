/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** is_key_pressed
*/

#include "sfml_utils.hpp"

bool is_key_pressed(sf::Keyboard::Key key)
{
    return sf::Keyboard::isKeyPressed(key);
}
