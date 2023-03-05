#include <snd/snd_system.h>
#include <st/stage.h>

namespace StSeUtil {

SeSeq::SeSeq(Something2* p1, size_t p2, Something3* p3, size_t p4) {
    unk4 = p1;
    unk8 = p2;
    unkC = p3;
    unk10 = p4;
    m_sndGenerator = 0;
    unk18 = -1;
    unk1C = -1;
    for (size_t i = 0; i < p2; i++) {
        unk4[i].unk0 = 0;
        unk4[i].unk4 = 0;
        unk4[i].unk8 = 0;
    }

    for (size_t i = 0; i < unk10; i++) {
        unkC[i].id = snd_se_invalid;
        unkC[i].unk4 = -1;
        unkC[i].unk8 = 0;
        unkC[i].unkC = 0;
    }
}

SeSeq::~SeSeq() {
    for (size_t i = 0; i < unk8; i++) {
        Something2* ptr1 = unk4 + i;
        if (ptr1->unk8) {
            delete[] ptr1->unk8;
            ptr1->unk8 = 0;
        }
    }
}

void SeSeq::registId(SndID* ids, size_t p2) {
    for (size_t i = 0; i < unk10; i++) {
        if (i < p2) {
            unkC[i].id = *ids;
        } else {
            unkC[i].id = snd_se_invalid;
        }
        unkC[i].unk4 = -1;
        unkC[i].unk8 = 0;
        unkC[i].unkC = 0;
        ids++;
    }
    mapping();
}

void SeSeq::registSeq(int p1, Something* p2, size_t p3, Heaps::HeapType heapType) {
    if (p1 >= 0 && p1 < unk8) {
        Something2* r31 = unk4 + p1;
        r31->unk8 = new (heapType) size_t[p3];
        if (r31->unk8) {
            r31->unk0 = p2;
            r31->unk4 = p3;
        }
    }
    mapping();
}

void SeSeq::mapping() {
    for (size_t i = 0; i < unk8; i++) {
        Something2* r12 = unk4 + i;
        if (r12->unk8) {
            for (size_t j = 0; j < r12->unk4; j++) {
                SndID r6 = r12->unk0[j].id;
                r12->unk8[j] = -1;
                for (size_t k = 0; k < unk10; k++) {
                    if (r6 == (u32)unkC[k].id) {
                        r12->unk8[j] = k;
                        break;
                    }
                }
            }
        }
    }
}

void SeSeq::playFrame(s32 p1, float frame, float p3) {
    unk1C = p3;
    playFrame(p1, frame);
}

void SeSeq::playFrame(s32 p1, float frame) {
    size_t count;
    s32 r4 = 0;
    s32 r5 = 0;
    size_t r6 = 0;
    size_t r7 = 0;

    for (r6 = 0; r6 < unk10; r6++) {
        unkC[r6].unk8 = 0;
    }

    if (unk1C != frame && p1 >= 0 && p1 < unk8) {
        Something2 const* r8 = unk4 + p1;
        if (r8->unk8) {
            Something* r9 = r8->unk0;
            count = r8->unk4;
            for (r6 = 0; r6 < count; r6++) {
                r7 = r8->unk8[r6];
                if (r7 != 0xFFFFFFFF) {
                    float f2, f3, f4;
                    f4 = r9->unkC;
                    f3 = r9->unk8;
                    f2 = unk1C;
                    if (0 == f4) {
                        r4 = 0;
                        if (f2 <= frame) {
                            r4 = (f2 < f3 && f3 <= frame) ? 1 : 0;
                            r5 = r4 != 0;
                        } else {
                            r4 = (f2 < f3 || f3 <= frame) ? 1 : 0;
                            r5 = r4 != 0;
                        }
                    } else {
                        if (f2 <= frame) {
                            s32 r0 = 0;
                            if ((f2 < f3 && f3 <= frame) ||
                                (f2 < f4 && f4 <= frame) ||
                                (f3 < f2 && f2 < f4) ||
                                (f3 <= frame && frame <= f4)) {

                                r0 = 1;
                            }
                            r5 = 0;
                            if (r0) {
                                r5 = 2;
                            }
                        } else {
                            s32 r0 = 0;
                            if ((f3 < f2 && f2 < f4) || (f3 <= frame && frame <= f4)) {
                                r0 = 1;
                            }
                            r5 = 0;
                            if (r0) {
                                r5 = 2;
                            }
                        }
                    }

                    if (r5) {
                        unkC[r7].unk8 |= r5;
                        unkC[r7].unkC = r9;
                    }
                }

                r9++;
            }
        }
    }

    Something3* r27 = unkC;
    for (size_t i = 0; i < unk10; i++) {
        r4 = r27->unk4;
        if (r4 != -1) {
            if (!r27->unk8) {
                if (m_sndGenerator) {
                    m_sndGenerator->stopSE(r4, 0x14);
                    r27->unk4 = -1;
                } else if (r4 != -1) {
                    g_sndSystem->stopSE(r4, 0x14);
                    r27->unk4 = -1;
                }
            }
        } else {
            if (r27->unk8 & 0x02) {
                if (m_sndGenerator) {
                    r27->unk4 = m_sndGenerator->playSE(r27->id, -1, 0, -1);
                } else {
                    float pan = r27->unkC->unk4;
                    int id = r27->id;
                    if (r4 == -1) {
                        s32 res = g_sndSystem->prepareSE(SndID(id), -1, -1);
                        r27->unk4 = res;
                        if (res != -1) {
                            g_sndSystem->setPan(res, pan);
                            g_sndSystem->startSE(r27->unk4, 0, 0);
                        }
                    } else {
                        g_sndSystem->setPan(r4, pan);
                    }
                }
            } else if (r27->unk8 & 0x01) {
                if (m_sndGenerator) {
                    m_sndGenerator->playSE(r27->id, -1, 0, -1);
                } else {
                    float pan = r27->unkC->unk4;
                    s32 res = g_sndSystem->prepareSE(r27->id, -1, -1);
                    if (res != -1) {
                        g_sndSystem->setPan(res, pan);
                        g_sndSystem->startSE(res, 0, 0);
                    }
                }
            }
        }
        r27++;
    }
    unk1C = frame;
}

}
