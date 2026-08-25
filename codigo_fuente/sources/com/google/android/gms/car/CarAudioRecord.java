package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarAudioRecord {
    int getBufferSize();

    int getConfigurationIndex();

    int getRecordingState();

    int getState();

    int getStreamType();

    int read(byte[] bArr, int i, int i2);

    void release();

    void startRecording();

    void stop();
}
