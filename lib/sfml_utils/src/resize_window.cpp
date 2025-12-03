/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** resize_window
*/

#include "sfml_utils.hpp"

void resize_window(sf::RenderWindow &window, unsigned int width, unsigned int height)
{
    window.setSize(sf::Vector2u(width, height));
}
