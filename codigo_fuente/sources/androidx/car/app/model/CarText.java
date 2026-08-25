package androidx.car.app.model;

import android.text.SpannableString;
import android.text.Spanned;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class CarText {
    private final List<SpanWrapper> mSpans;
    private final List<List<SpanWrapper>> mSpansForVariants;
    private final String mText;
    private final List<String> mTextVariants;

    @e9
    /* loaded from: classes.dex */
    public static final class Builder {
        CharSequence mText;
        List<CharSequence> mTextVariants = new ArrayList();

        public Builder(CharSequence charSequence) {
            Objects.requireNonNull(charSequence);
            this.mText = charSequence;
        }

        public Builder addVariant(CharSequence charSequence) {
            List<CharSequence> list = this.mTextVariants;
            Objects.requireNonNull(charSequence);
            list.add(charSequence);
            return this;
        }

        public CarText build() {
            return new CarText(this);
        }
    }

    public CarText(Builder builder) {
        this.mText = builder.mText.toString();
        this.mSpans = getSpans(builder.mText);
        List<CharSequence> list = builder.mTextVariants;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            CharSequence charSequence = list.get(i);
            arrayList.add(charSequence.toString());
            arrayList2.add(getSpans(charSequence));
        }
        this.mTextVariants = s8.C(arrayList);
        this.mSpansForVariants = s8.C(arrayList2);
    }

    public static CarText create(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        return new CarText(charSequence);
    }

    private static CharSequence getCharSequence(String str, List<SpanWrapper> list) {
        SpannableString spannableString = new SpannableString(str);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        for (SpanWrapper spanWrapper : list) {
            spannableString.setSpan(spanWrapper.getCarSpan(), spanWrapper.getStart(), spanWrapper.getEnd(), spanWrapper.getFlags());
        }
        return spannableString;
    }

    private static List<SpanWrapper> getSpans(CharSequence charSequence) {
        Object[] spans;
        ArrayList arrayList = new ArrayList();
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            for (Object obj : spanned.getSpans(0, charSequence.length(), Object.class)) {
                if (obj instanceof CarSpan) {
                    arrayList.add(new SpanWrapper(spanned, (CarSpan) obj));
                }
            }
        }
        return s8.C(arrayList);
    }

    public static boolean isNullOrEmpty(CarText carText) {
        if (carText != null && !carText.isEmpty()) {
            return false;
        }
        return true;
    }

    public static String toShortString(CarText carText) {
        if (carText == null) {
            return null;
        }
        String carText2 = carText.toString();
        if (carText2.length() <= 16) {
            return carText2;
        }
        return carText2.substring(0, 8) + "~" + carText2.substring(carText2.length() - 8);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarText)) {
            return false;
        }
        CarText carText = (CarText) obj;
        if (Objects.equals(this.mText, carText.mText) && Objects.equals(this.mSpans, carText.mSpans) && Objects.equals(this.mTextVariants, carText.mTextVariants) && Objects.equals(this.mSpansForVariants, carText.mSpansForVariants)) {
            return true;
        }
        return false;
    }

    public List<List<SpanWrapper>> getSpansForVariants() {
        return this.mSpansForVariants;
    }

    public List<CharSequence> getVariants() {
        if (this.mTextVariants.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mTextVariants.size(); i++) {
            arrayList.add(getCharSequence(this.mTextVariants.get(i), this.mSpansForVariants.get(i)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int hashCode() {
        return Objects.hash(this.mText, this.mSpans, this.mTextVariants, this.mSpansForVariants);
    }

    public boolean isEmpty() {
        return this.mText.isEmpty();
    }

    public CharSequence toCharSequence() {
        return getCharSequence(this.mText, this.mSpans);
    }

    public String toString() {
        return this.mText;
    }

    @e9
    /* loaded from: classes.dex */
    public static class SpanWrapper {
        private final CarSpan mCarSpan;
        private final int mEnd;
        private final int mFlags;
        private final int mStart;

        public SpanWrapper(Spanned spanned, CarSpan carSpan) {
            this.mStart = spanned.getSpanStart(carSpan);
            this.mEnd = spanned.getSpanEnd(carSpan);
            this.mFlags = spanned.getSpanFlags(carSpan);
            this.mCarSpan = carSpan;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SpanWrapper)) {
                return false;
            }
            SpanWrapper spanWrapper = (SpanWrapper) obj;
            if (this.mStart == spanWrapper.mStart && this.mEnd == spanWrapper.mEnd && this.mFlags == spanWrapper.mFlags && Objects.equals(this.mCarSpan, spanWrapper.mCarSpan)) {
                return true;
            }
            return false;
        }

        public CarSpan getCarSpan() {
            return this.mCarSpan;
        }

        public int getEnd() {
            return this.mEnd;
        }

        public int getFlags() {
            return this.mFlags;
        }

        public int getStart() {
            return this.mStart;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mStart), Integer.valueOf(this.mEnd), Integer.valueOf(this.mFlags), this.mCarSpan);
        }

        public String toString() {
            return "[" + this.mCarSpan + ": " + this.mStart + ", " + this.mEnd + ", flags: " + this.mFlags + "]";
        }

        public SpanWrapper() {
            this.mStart = 0;
            this.mEnd = 0;
            this.mFlags = 0;
            this.mCarSpan = new CarSpan();
        }
    }

    public List<SpanWrapper> getSpans() {
        return this.mSpans;
    }

    public CarText(CharSequence charSequence) {
        this.mText = charSequence.toString();
        this.mSpans = getSpans(charSequence);
        List list = Collections.EMPTY_LIST;
        this.mTextVariants = list;
        this.mSpansForVariants = list;
    }

    private CarText() {
        this.mText = "";
        List list = Collections.EMPTY_LIST;
        this.mSpans = list;
        this.mTextVariants = list;
        this.mSpansForVariants = list;
    }
}
