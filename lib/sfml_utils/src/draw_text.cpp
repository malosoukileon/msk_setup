/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** draw_text
*/

#include "sfml_utils.hpp"

void draw_text(sf::RenderWindow &window, sf::Font &font, const std::string &text, float x, float y, unsigned int size, float r, float g, float b, float a)
{
    sf::Text sfText;
    sfText.setFont(font);
    sfText.setString(text);
    sfText.setCharacterSize(size);
    sfText.setFillColor(sf::Color(r, g, b, a));
    sfText.setPosition(x, y);
    window.draw(sfText);
}
