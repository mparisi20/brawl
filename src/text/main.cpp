#include "global.h"
#include "gfApplication.h"

void main(int argc, char** argv)
{
    gfApplication app;
    app.init();
    if (argc == 2)
        app.mBootParam.init(argc, argv);
    app.mainLoop();
    app.exit();
}
