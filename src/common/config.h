//
// Created by liuwch on 23-3-18.
//

#ifndef ARVSLAM_CONFIG_H
#define ARVSLAM_CONFIG_H

#include <iostream>
#include <string>

namespace arvslam {

    class Config {
    public:
        Config();
        ~Config();

    private:
        std::string m_filepath;
    };
} // namespace arvslam

#endif //ARVSLAM_CONFIG_H
