/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** draw_image
*/

#include "sfml_utils.hpp"

void draw_image(sf::RenderWindow &window, sf::Texture &texture, float x, float y)
{
    sf::Sprite sprite;
    sprite.setTexture(texture);
    sprite.setPosition(x, y);
    window.draw(sprite);
}
