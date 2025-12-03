/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** draw_circle
*/

#include "sfml_utils.hpp"

void draw_circle(sf::RenderWindow &window, float x, float y, float radius, float r, float g, float b, float a)
{
    sf::CircleShape circle(radius);
    circle.setPosition(x, y);
    circle.setFillColor(sf::Color(r, g, b, a));
    window.draw(circle);
}
