//
// Created by liuwch on 23-3-20.
//

#ifndef ARVSLAM_FRAME_H
#define ARVSLAM_FRAME_H

#include <vector>
#include <memory>
#include <opencv2/core/core.hpp>

namespace arvslam {
namespace data {

class Frame {
public:
    typedef std::shared_ptr<Frame> ptr;
    Frame() = default;
    ~Frame();

    cv::Mat m_featureLeft, m_featureRight;

private:
};
}
} // namespace arvslam

#endif //ARVSLAM_FRAME_H
