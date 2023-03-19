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

        template<typename T>
        static T get(const std::string& key) {
            return T(Config::m_config->m_file[key]);
        }

    private:
        Config() {};
        static std::shared_ptr<Config> m_config;
        cv::FileStorage m_file;


    };
} // namespace arvslam

#endif //ARVSLAM_CONFIG_H
