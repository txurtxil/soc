package com.google.android.material.snackbar;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;
/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {
    public BaseTransientBottomBar$Behavior() {
        Math.min(Math.max(0.0f, 0.1f), 1.0f);
        Math.min(Math.max(0.0f, 0.6f), 1.0f);
    }
}
