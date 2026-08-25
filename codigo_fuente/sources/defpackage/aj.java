package defpackage;

import java.util.Set;
/* renamed from: aj  reason: default package */
/* loaded from: classes.dex */
public abstract class aj extends wi implements Set {
    public static final /* synthetic */ int c = 0;
    public transient zi b;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof aj) || !(this instanceof ex) || !(((aj) obj) instanceof ex) || obj.hashCode() == 0) {
                if (this != obj) {
                    if (obj instanceof Set) {
                        Set set = (Set) obj;
                        try {
                            if (size() == set.size()) {
                                if (containsAll(set)) {
                                    return true;
                                }
                                return false;
                            }
                            return false;
                        } catch (ClassCastException | NullPointerException unused) {
                            return false;
                        }
                    }
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }
}
