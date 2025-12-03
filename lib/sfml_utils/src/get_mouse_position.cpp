/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** get_mouse_position
*/

#include "sfml_utils.hpp"

sf::Vector2i get_mouse_position(sf::RenderWindow &window)
{
    return sf::Mouse::getPosition(window);
}
