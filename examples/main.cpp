#include <iostream>

#include "common/config.h"

int main(int argc, char** argv) {
    std::string yaml_path = "/home/liuwch/dev/ar_vslam/config/default.yaml";
    bool flag = arvslam::Config::parseYamlFile(yaml_path);
    std::cout << "parse file " << flag << std::endl;
//    std::string dataset_path = arvslam::Config::get<std::string>("dataset_dir");
    int num = arvslam::Config::get<int>("num_features");
    std::cout << "num_fearure: " << num << std::endl;
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
