/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** clear_screen
*/

#include "sfml_utils.hpp"

void clear_screen(sf::RenderWindow &window, float r, float g, float b, float a) {
    window.clear(sf::Color(r, g, b, a));
}
