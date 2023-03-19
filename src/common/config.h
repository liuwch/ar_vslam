//
// Created by liuwch on 23-3-18.
//

#ifndef ARVSLAM_CONFIG_H
#define ARVSLAM_CONFIG_H

#include <iostream>
#include <string>
#include <memory>

#include <opencv2/core.hpp>

namespace arvslam {

    class Config {
    public:
        ~Config();

        static bool parseYamlFile(const std::string& file_path);


    private:
        Config() {};
        static std::shared_ptr<Config> m_config;
        static cv::FileStorage m_file;

        template<typename T>
        static T get(const std::string& key) {
            return Config::m_config->m_file[key];
        }
    };
} // namespace arvslam

#endif //ARVSLAM_CONFIG_H
