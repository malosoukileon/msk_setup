/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** draw_rect
*/

#include "sfml_utils.hpp"

void draw_rect(sf::RenderWindow &window, float x, float y, float width, float height, float r, float g, float b, float a)
{
    sf::RectangleShape rectangle(sf::Vector2f(width, height));
    rectangle.setPosition(x, y);
    rectangle.setFillColor(sf::Color(r, g, b, a));
    window.draw(rectangle);
}
