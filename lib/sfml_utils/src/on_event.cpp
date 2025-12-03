/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** on_event
*/

#include "sfml_utils.hpp"

void on_event(sf::RenderWindow &window, std::function<void(const sf::Event &)> callback)
{
    sf::Event event;
    while (window.pollEvent(event))
    {
        callback(event);
    }
}
