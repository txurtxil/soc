package com.google.android.gms.car;
/* loaded from: classes.dex */
public class CarAudioConfig {
    public final int audioFormat;
    public final int channelConfig;
    public final int sampleRate;

    public CarAudioConfig(int i, int i2, int i3) {
        this.sampleRate = i;
        this.channelConfig = i2;
        this.audioFormat = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CarAudioConfig) {
            CarAudioConfig carAudioConfig = (CarAudioConfig) obj;
            return this.sampleRate == carAudioConfig.sampleRate && this.channelConfig == carAudioConfig.channelConfig && this.audioFormat == carAudioConfig.audioFormat;
        }
        return false;
    }

    public int hashCode() {
        return (((this.sampleRate * 31) + this.channelConfig) * 31) + this.audioFormat;
    }

    public String toString() {
        String name = getClass().getName();
        int i = this.sampleRate;
        int i2 = this.channelConfig;
        int i3 = this.audioFormat;
        StringBuilder sb = new StringBuilder(name.length() + 74);
        sb.append(name);
        sb.append("[sampleRate=");
        sb.append(i);
        sb.append(",channelConfig=");
        sb.append(i2);
        sb.append(",audioFormat=");
        sb.append(i3);
        sb.append("]");
        return sb.toString();
    }
}
