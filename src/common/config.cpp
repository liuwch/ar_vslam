//
// Created by liuwch on 23-3-18.
//

#include "common/config.h"

namespace arvslam {

    bool Config::parseYamlFile(const std::string &file_path) {
        if (m_config == nullptr) {
            m_config = std::shared_ptr<Config>(new Config);
        }
        static cv::FileStorage file(cv::FileStorage(file_path.c_str(), cv::FileStorage::READ));
        m_config->m_file = file;
        if (m_config->m_file.isOpened() == false) {
            std::cout << "Parse File " << file_path << " is failed!" << std::endl;
            m_config->m_file.release();
            return false;
        }
        return true;
    }

    Config::~Config() {
        if (m_file.isOpened()) {
            m_file.release();
        }
    }

    std::shared_ptr<Config> Config::m_config = nullptr;
} // namespace arvslam