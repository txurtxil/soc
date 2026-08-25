package androidx.car.app;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class AppInfo {
    public static final String MIN_API_LEVEL_METADATA_KEY = "androidx.car.app.minCarApiLevel";
    private final int mLatestCarAppApiLevel;
    private final String mLibraryVersion;
    private final int mMinCarAppApiLevel;

    private AppInfo() {
        this.mMinCarAppApiLevel = 0;
        this.mLibraryVersion = null;
        this.mLatestCarAppApiLevel = 0;
    }

    public static AppInfo create(Context context) {
        int retrieveMinCarAppApiLevel = retrieveMinCarAppApiLevel(context);
        if (retrieveMinCarAppApiLevel >= 1 && retrieveMinCarAppApiLevel <= s8.r()) {
            return new AppInfo(retrieveMinCarAppApiLevel, s8.r(), context.getResources().getString(R.string.car_app_library_version));
        }
        int r = s8.r();
        throw new IllegalArgumentException("Min API level (androidx.car.app.minCarApiLevel=" + retrieveMinCarAppApiLevel + ") is out of range (1-" + r + ")");
    }

    public static int retrieveMinCarAppApiLevel(Context context) {
        int i;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                i = bundle.getInt(MIN_API_LEVEL_METADATA_KEY, 0);
            } else {
                i = 0;
            }
            if (i != 0) {
                return i;
            }
            throw new IllegalArgumentException("Min API level not declared in manifest (androidx.car.app.minCarApiLevel)");
        } catch (PackageManager.NameNotFoundException unused) {
            c2.n("Unable to read min API level from manifest");
            return 0;
        }
    }

    public int getLatestCarAppApiLevel() {
        return this.mLatestCarAppApiLevel;
    }

    public String getLibraryDisplayVersion() {
        String str = this.mLibraryVersion;
        Objects.requireNonNull(str);
        return str;
    }

    public int getMinCarAppApiLevel() {
        return this.mMinCarAppApiLevel;
    }

    public String toString() {
        return "Library version: [" + getLibraryDisplayVersion() + "] Min Car Api Level: [" + getMinCarAppApiLevel() + "] Latest Car App Api Level: [" + getLatestCarAppApiLevel() + "]";
    }

    public AppInfo(int i, int i2, String str) {
        this.mMinCarAppApiLevel = i;
        this.mLibraryVersion = str;
        this.mLatestCarAppApiLevel = i2;
    }
}
