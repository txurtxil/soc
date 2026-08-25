package androidx.car.app.media;

import android.os.RemoteException;
import androidx.car.app.media.ICarAudioCallback;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class CarAudioCallbackDelegate {
    private final ICarAudioCallback mCallback;

    private CarAudioCallbackDelegate(u8 u8Var) {
        this.mCallback = new CarAudioCallbackStub(u8Var);
    }

    public static CarAudioCallbackDelegate create(u8 u8Var) {
        return new CarAudioCallbackDelegate(u8Var);
    }

    public void onStopRecording() {
        try {
            ICarAudioCallback iCarAudioCallback = this.mCallback;
            Objects.requireNonNull(iCarAudioCallback);
            iCarAudioCallback.onStopRecording();
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    @e9
    /* loaded from: classes.dex */
    public static class CarAudioCallbackStub extends ICarAudioCallback.Stub {
        private final u8 mCarAudioCallback;

        public CarAudioCallbackStub(u8 u8Var) {
        }

        @Override // androidx.car.app.media.ICarAudioCallback
        public void onStopRecording() {
            throw null;
        }

        public CarAudioCallbackStub() {
        }
    }

    private CarAudioCallbackDelegate() {
        this.mCallback = null;
    }
}
