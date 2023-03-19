#include <iostream>

#include "common/config.h"

int main() {
    std::string yaml_path = "../config/default.yaml";
    arvslam::Config::parseYamlFile(yaml_path);
    
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
