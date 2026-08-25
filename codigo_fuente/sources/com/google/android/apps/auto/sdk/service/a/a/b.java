package com.google.android.apps.auto.sdk.service.a.a;

import com.google.android.gms.car.CarAudioRecord;
import com.google.android.gms.car.CarNotConnectedException;
/* loaded from: classes.dex */
public final class b extends ua0 {
    private CarAudioRecord a;

    public b(CarAudioRecord carAudioRecord) {
        this.a = carAudioRecord;
    }

    public final int getAudioSessionId() {
        return 0;
    }

    public final int getBufferSize() {
        return this.a.getBufferSize();
    }

    public final int getRecordingState() {
        return this.a.getRecordingState();
    }

    public final int getState() {
        return this.a.getState();
    }

    public final int read(byte[] bArr, int i, int i2) {
        try {
            return this.a.read(bArr, i, i2);
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    public final void release() {
        this.a.release();
    }

    public final void startRecording() {
        try {
            this.a.startRecording();
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    public final void stop() {
        this.a.stop();
    }
}
