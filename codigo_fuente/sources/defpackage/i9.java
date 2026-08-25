package defpackage;

import com.google.android.material.carousel.CarouselLayoutManager;
/* renamed from: i9  reason: default package */
/* loaded from: classes.dex */
public final class i9 {
    public final int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ CarouselLayoutManager c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i9(CarouselLayoutManager carouselLayoutManager, int i) {
        this(1);
        this.b = i;
        switch (i) {
            case 1:
                this.c = carouselLayoutManager;
                this(0);
                return;
            default:
                this.c = carouselLayoutManager;
                return;
        }
    }

    public i9(int i) {
        this.a = i;
    }
}
