/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** draw_line
*/

#include "sfml_utils.hpp"

void draw_line(sf::RenderWindow &window, float x1, float y1, float x2, float y2, float r, float g, float b, float a)
{
    sf::Vertex line[] =
    {
        sf::Vertex(sf::Vector2f(x1, y1), sf::Color(r, g, b, a)),
        sf::Vertex(sf::Vector2f(x2, y2), sf::Color(r, g, b, a))
    };
    window.draw(line, 2, sf::Lines);
}
