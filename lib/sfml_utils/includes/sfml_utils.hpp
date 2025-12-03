/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** sfml_utils
*/

#ifndef SFML_UTILS_HPP_
    #define SFML_UTILS_HPP_
    #include <SFML/Graphics.hpp>
    #include <SFML/Window.hpp>
    #include <SFML/System.hpp>
    #include <SFML/Audio.hpp>
    #include <string>
    #include <functional>
    #include <iostream>

    sf::RenderWindow *create_window(uint width, uint height, const std::string &title);
    void close_window(sf::RenderWindow &window);
    bool is_window_open(sf::RenderWindow &window);
    void clear_screen(sf::RenderWindow &window, float r, float g, float b, float a);
    void display_frame(sf::RenderWindow &window);
    sf::Vector2i get_mouse_position(sf::RenderWindow &window);
    bool is_key_pressed(sf::Keyboard::Key key);
    bool is_mouse_button_pressed(sf::Mouse::Button button);
    void draw_image(sf::RenderWindow &window, sf::Texture &texture, float x, float y);
    void draw_text(sf::RenderWindow &window, sf::Font &font, const std::string &text, float x, float y, unsigned int size, float r, float g, float b, float a);
    void draw_line(sf::RenderWindow &window, float x1, float y1, float x2, float y2, float r, float g, float b, float a);
    void draw_rect(sf::RenderWindow &window, float x, float y, float width, float height, float r, float g, float b, float a);
    void fill_rect(sf::RenderWindow &window, float x, float y, float width, float height, float r, float g, float b, float a);
    void draw_circle(sf::RenderWindow &window, float x, float y, float radius, float r, float g, float b, float a);
    void fill_circle(sf::RenderWindow &window, float x, float y, float radius, float r, float g, float b, float a);
    void resize_window(sf::RenderWindow &window, unsigned int width, unsigned int height);
    void set_window_title(sf::RenderWindow &window, const std::string &title);
    void take_screen_shot(sf::RenderWindow &window, const std::string &file_path);
    sf::Font load_font(const std::string &file_path);
    sf::Time get_time();
    void log_message(const std::string &message);
    void on_event(sf::RenderWindow &window, std::function<void(const sf::Event &)> callback);
#endif /* !SFML_UTILS_HPP_ */
