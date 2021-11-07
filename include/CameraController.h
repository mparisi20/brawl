#ifndef CAMERA_CONTROLLER_H
#define CAMERA_CONTROLLER_H

#include "global.h"
#include "cmDemoController.h"

struct CameraController {
    u8 unk0[0x80];
    cmDemoController* unk80;

    void changeInput(u32 p1);
    static CameraController* getInstance();
};

#endif //CAMERA_CONTROLLER_H
