/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** play_sound
*/

#include "sfml_utils.hpp"

void play_sound(const std::string &file_path)
{
    sf::SoundBuffer buffer;
    if (!buffer.loadFromFile(file_path)) {
        throw std::runtime_error("Failed to load sound from file: " + file_path);
    }
    sf::Sound sound;
    sound.setBuffer(buffer);
    sound.play();
    while (sound.getStatus() == sf::Sound::Playing) {
        sf::sleep(sf::milliseconds(100));
    }
}
