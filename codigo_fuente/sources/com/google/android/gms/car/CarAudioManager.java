package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarAudioManager {
    CarAudioRecord createCarAudioRecord(int i, int i2, int i3);

    CarAudioConfig[] getAudioRecordConfigurations(int i);

    int getAudioRecordMinBufferSize(int i, int i2);

    int[] getAudioRecordStreams();

    boolean isAudioRecordStreamSupported(int i);

    boolean waitForPlayback(long j);

    boolean waitForSilence(long j);
}
