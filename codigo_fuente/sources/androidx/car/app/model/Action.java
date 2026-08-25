package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class Action {
    public static final int FLAG_DEFAULT = 4;
    public static final int FLAG_IS_PERSISTENT = 2;
    public static final int FLAG_PRIMARY = 1;
    public static final int TYPE_CUSTOM = 1;
    static final int TYPE_STANDARD = 65536;
    private final CarColor mBackgroundColor;
    private final int mFlags;
    private final CarIcon mIcon;
    private final boolean mIsEnabled;
    private final fs mOnClickDelegate;
    private final CarText mTitle;
    private final int mType;
    public static final int TYPE_APP_ICON = 65538;
    public static final Action APP_ICON = new Action((int) TYPE_APP_ICON);
    public static final int TYPE_COMPOSE_MESSAGE = 65541;
    public static final Action COMPOSE_MESSAGE = new Action((int) TYPE_COMPOSE_MESSAGE);
    public static final int TYPE_BACK = 65539;
    public static final Action BACK = new Action((int) TYPE_BACK);
    public static final int TYPE_PAN = 65540;
    public static final Action PAN = new Action((int) TYPE_PAN);

    private Action(int i) {
        if (i != 1) {
            this.mTitle = null;
            this.mIcon = null;
            this.mBackgroundColor = CarColor.DEFAULT;
            this.mOnClickDelegate = null;
            this.mType = i;
            this.mFlags = 0;
            this.mIsEnabled = true;
            return;
        }
        c2.n("Standard action constructor used with non standard type");
        throw null;
    }

    public static boolean isStandardActionType(int i) {
        return (i & TYPE_STANDARD) != 0;
    }

    public static String typeToString(int i) {
        if (i != 1) {
            switch (i) {
                case TYPE_APP_ICON /* 65538 */:
                    return "APP_ICON";
                case TYPE_BACK /* 65539 */:
                    return "BACK";
                case TYPE_PAN /* 65540 */:
                    return "PAN";
                case TYPE_COMPOSE_MESSAGE /* 65541 */:
                    return "COMPOSE_MESSAGE";
                default:
                    return "<unknown>";
            }
        }
        return "CUSTOM";
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Action)) {
            return false;
        }
        Action action = (Action) obj;
        if (Objects.equals(this.mTitle, action.mTitle) && this.mType == action.mType && Objects.equals(this.mIcon, action.mIcon)) {
            if (this.mOnClickDelegate == null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (action.mOnClickDelegate == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (valueOf.equals(Boolean.valueOf(z2)) && Integer.valueOf(this.mFlags).equals(Integer.valueOf(action.mFlags)) && this.mIsEnabled == action.mIsEnabled) {
                return true;
            }
        }
        return false;
    }

    public CarColor getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public CarIcon getIcon() {
        return this.mIcon;
    }

    public fs getOnClickDelegate() {
        return this.mOnClickDelegate;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public int getType() {
        return this.mType;
    }

    public int hashCode() {
        boolean z;
        CarText carText = this.mTitle;
        Integer valueOf = Integer.valueOf(this.mType);
        boolean z2 = false;
        if (this.mOnClickDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf2 = Boolean.valueOf(z);
        if (this.mIcon == null) {
            z2 = true;
        }
        return Objects.hash(carText, valueOf, valueOf2, Boolean.valueOf(z2), Boolean.valueOf(this.mIsEnabled));
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public boolean isStandard() {
        return isStandardActionType(this.mType);
    }

    public String toString() {
        return "[type: " + typeToString(this.mType) + ", icon: " + this.mIcon + ", bkg: " + this.mBackgroundColor + ", isEnabled: " + this.mIsEnabled + "]";
    }

    public Action(q0 q0Var) {
        this.mTitle = q0Var.a;
        this.mIcon = q0Var.b;
        this.mBackgroundColor = q0Var.d;
        this.mOnClickDelegate = q0Var.c;
        this.mType = q0Var.e;
        this.mFlags = 0;
        this.mIsEnabled = true;
    }

    private Action() {
        this.mTitle = null;
        this.mIcon = null;
        this.mBackgroundColor = CarColor.DEFAULT;
        this.mOnClickDelegate = null;
        this.mType = 1;
        this.mFlags = 0;
        this.mIsEnabled = true;
    }
}
