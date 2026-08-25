package idv.lzn.screenonauto.car;

import android.content.Context;
import androidx.car.app.CarAppService;
import androidx.car.app.l;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes.dex */
public final class MirrorCarAppService extends CarAppService {
    @Override // androidx.car.app.CarAppService
    public final ei a() {
        Context applicationContext = getApplicationContext();
        HashMap hashMap = new HashMap();
        String[] stringArray = applicationContext.getResources().getStringArray(R.array.hosts_allowlist_sample);
        if (stringArray != null) {
            for (String str : stringArray) {
                String[] split = str.split(",", -1);
                if (split.length == 2) {
                    String str2 = split[1];
                    Locale locale = Locale.US;
                    String replace = str2.toLowerCase(locale).replace(" ", "");
                    String replace2 = split[0].toLowerCase(locale).replace(" ", "");
                    Objects.requireNonNull(replace);
                    Objects.requireNonNull(replace2);
                    List list = (List) hashMap.get(replace);
                    if (list == null) {
                        list = new ArrayList();
                        hashMap.put(replace, list);
                    }
                    list.add(replace2);
                } else {
                    c2.n(t20.f("Invalid allowed host entry: '", str, "'"));
                    return null;
                }
            }
            return new ei(applicationContext.getPackageManager(), hashMap, false);
        }
        c2.n(t20.d(R.array.hosts_allowlist_sample, "Invalid allowlist res id: "));
        return null;
    }

    @Override // androidx.car.app.CarAppService
    public final l b() {
        return new l();
    }
}
