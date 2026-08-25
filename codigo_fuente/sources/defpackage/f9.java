package defpackage;

import androidx.car.app.model.CarIconSpan;
import androidx.car.app.model.CarText;
import androidx.car.app.model.ClickableSpan;
import androidx.car.app.model.DistanceSpan;
import androidx.car.app.model.DurationSpan;
import androidx.car.app.model.ForegroundCarColorSpan;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* renamed from: f9  reason: default package */
/* loaded from: classes.dex */
public final class f9 {
    public static final f9 b = new f9(Collections.EMPTY_LIST);
    public static final f9 c = new f9(Arrays.asList(CarIconSpan.class, ClickableSpan.class, DistanceSpan.class, DurationSpan.class, ForegroundCarColorSpan.class));
    public static final f9 d;
    public static final f9 e;
    public static final f9 f;
    public final HashSet a;

    static {
        new f9(Arrays.asList(ClickableSpan.class, DistanceSpan.class, DurationSpan.class));
        d = new f9(Arrays.asList(ForegroundCarColorSpan.class));
        e = new f9(Arrays.asList(DistanceSpan.class, DurationSpan.class));
        f = new f9(Arrays.asList(DistanceSpan.class, DurationSpan.class, CarIconSpan.class));
        new f9(Arrays.asList(DistanceSpan.class, DurationSpan.class, ForegroundCarColorSpan.class));
        new f9(Arrays.asList(DistanceSpan.class, DurationSpan.class, ForegroundCarColorSpan.class, CarIconSpan.class));
    }

    public f9(List list) {
        this.a = new HashSet(list);
    }

    public final void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Class<?> cls = ((CarText.SpanWrapper) it.next()).getCarSpan().getClass();
            if (!this.a.contains(cls)) {
                c2.n("CarSpan type is not allowed: ".concat(cls.getSimpleName()));
                return;
            }
        }
    }

    public final void b(CarText carText) {
        a(carText.getSpans());
        for (List<CarText.SpanWrapper> list : carText.getSpansForVariants()) {
            a(list);
        }
    }
}
