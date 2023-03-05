#include <types.h>
#include <mt/mt_prng.h>

// Note: This may be some kind of timer class
class grTenganEvent {
    enum grTenganEventState {
        NoEvent = 0,
        Running = 1,
        ReadyEnd = 2
    };

    float m_time_elapsed; // +0x0
    float m_min; // +0x4
    float m_max; // +0x8
    float m_time_left; // +0xC
    float unk10;
    u8 unk14[0x90];
    grTenganEventState m_state; // +0xA4
    u32 m_phase; // +0xA8
public:
    grTenganEvent();
    ~grTenganEvent();
    void update(float delta);
    void set(float min, float max);
    bool start();
    void end();
    bool isEvent() const;
    bool isReadyEnd() const;
    u32 getPhase() const;
    void setPhase(u32 phase);
};

grTenganEvent::grTenganEvent() {
    m_phase = 0;
    m_time_elapsed = 0;
    m_state = NoEvent;
    m_time_left = 0;
}

grTenganEvent::~grTenganEvent() {
    m_state = NoEvent;
    m_time_left = 0;
}

void grTenganEvent::update(float delta) {
    if (m_state != NoEvent) {
        if (m_state == Running && m_time_left >= 0) {
            m_time_left -= delta;
            if (m_time_left < 0) {
                m_state = ReadyEnd;
            }
        }
        m_time_elapsed += delta;
    }
}

void grTenganEvent::set(float min, float max) {
    m_min = min;
    m_max = max;
    m_time_left = m_min + (m_max - m_min) * randf();
}

bool grTenganEvent::start() {
    if (m_state == NoEvent) {
        const float new_time = m_min + (m_max - m_min) * randf();
        m_state = Running;
        m_phase = 0;
        unk10 = 0;
        m_time_elapsed = 0;
        m_time_left = new_time;
        return true;
    }
    return false;
}

void grTenganEvent::end() {
    m_state = NoEvent;
    m_time_left = 0;
}

bool grTenganEvent::isEvent() const {
    return m_state != NoEvent;
}

bool grTenganEvent::isReadyEnd() const {
    return m_state == ReadyEnd;
}

u32 grTenganEvent::getPhase() const {
    return m_phase;
}

void grTenganEvent::setPhase(u32 phase) {
    m_phase = phase;
}
