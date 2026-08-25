package defpackage;

import androidx.car.app.model.Alert;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* renamed from: s6  reason: default package */
/* loaded from: classes.dex */
public final class s6 extends AbstractList implements List {
    public static final Object[] d = new Object[0];
    public int a;
    public Object[] b = d;
    public int c;

    public final void a(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.b.length;
        while (i < length && it.hasNext()) {
            this.b[i] = it.next();
            i++;
        }
        int i2 = this.a;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.b[i3] = it.next();
        }
        this.c = collection.size() + this.c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int i3 = this.c;
        if (i >= 0 && i <= i3) {
            if (i == i3) {
                addLast(obj);
                return;
            } else if (i == 0) {
                addFirst(obj);
                return;
            } else {
                g();
                b(this.c + 1);
                int f = f(this.a + i);
                int i4 = this.c;
                if (i < ((i4 + 1) >> 1)) {
                    if (f == 0) {
                        Object[] objArr = this.b;
                        objArr.getClass();
                        i2 = objArr.length - 1;
                    } else {
                        i2 = f - 1;
                    }
                    int i5 = this.a;
                    if (i5 == 0) {
                        Object[] objArr2 = this.b;
                        objArr2.getClass();
                        i5 = objArr2.length;
                    }
                    int i6 = i5 - 1;
                    int i7 = this.a;
                    Object[] objArr3 = this.b;
                    if (i2 >= i7) {
                        objArr3[i6] = objArr3[i7];
                        w6.L(objArr3, objArr3, i7, i7 + 1, i2 + 1);
                    } else {
                        w6.L(objArr3, objArr3, i7 - 1, i7, objArr3.length);
                        Object[] objArr4 = this.b;
                        objArr4[objArr4.length - 1] = objArr4[0];
                        w6.L(objArr4, objArr4, 0, 1, i2 + 1);
                    }
                    this.b[i2] = obj;
                    this.a = i6;
                } else {
                    int f2 = f(this.a + i4);
                    Object[] objArr5 = this.b;
                    if (f < f2) {
                        w6.L(objArr5, objArr5, f + 1, f, f2);
                    } else {
                        w6.L(objArr5, objArr5, 1, 0, f2);
                        Object[] objArr6 = this.b;
                        objArr6[0] = objArr6[objArr6.length - 1];
                        w6.L(objArr6, objArr6, f + 1, f, objArr6.length - 1);
                    }
                    this.b[f] = obj;
                }
                this.c++;
                return;
            }
        }
        c2.i("index: ", i, ", size: ", i3);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        int i2 = this.c;
        if (i >= 0 && i <= i2) {
            if (collection.isEmpty()) {
                return false;
            }
            if (i == this.c) {
                return addAll(collection);
            }
            g();
            b(collection.size() + this.c);
            int f = f(this.a + this.c);
            int f2 = f(this.a + i);
            int size = collection.size();
            if (i < ((this.c + 1) >> 1)) {
                int i3 = this.a;
                int i4 = i3 - size;
                Object[] objArr = this.b;
                if (f2 >= i3) {
                    if (i4 >= 0) {
                        w6.L(objArr, objArr, i4, i3, f2);
                    } else {
                        i4 += objArr.length;
                        int i5 = f2 - i3;
                        int length = objArr.length - i4;
                        if (length >= i5) {
                            w6.L(objArr, objArr, i4, i3, f2);
                        } else {
                            w6.L(objArr, objArr, i4, i3, i3 + length);
                            Object[] objArr2 = this.b;
                            w6.L(objArr2, objArr2, 0, this.a + length, f2);
                        }
                    }
                } else {
                    w6.L(objArr, objArr, i4, i3, objArr.length);
                    Object[] objArr3 = this.b;
                    if (size >= f2) {
                        w6.L(objArr3, objArr3, objArr3.length - size, 0, f2);
                    } else {
                        w6.L(objArr3, objArr3, objArr3.length - size, 0, size);
                        Object[] objArr4 = this.b;
                        w6.L(objArr4, objArr4, 0, size, f2);
                    }
                }
                this.a = i4;
                a(d(f2 - size), collection);
                return true;
            }
            int i6 = f2 + size;
            Object[] objArr5 = this.b;
            if (f2 < f) {
                int i7 = size + f;
                if (i7 <= objArr5.length) {
                    w6.L(objArr5, objArr5, i6, f2, f);
                } else if (i6 >= objArr5.length) {
                    w6.L(objArr5, objArr5, i6 - objArr5.length, f2, f);
                } else {
                    int length2 = f - (i7 - objArr5.length);
                    w6.L(objArr5, objArr5, 0, length2, f);
                    Object[] objArr6 = this.b;
                    w6.L(objArr6, objArr6, i6, f2, length2);
                }
            } else {
                w6.L(objArr5, objArr5, size, 0, f);
                Object[] objArr7 = this.b;
                if (i6 >= objArr7.length) {
                    w6.L(objArr7, objArr7, i6 - objArr7.length, f2, objArr7.length);
                } else {
                    w6.L(objArr7, objArr7, 0, objArr7.length - size, objArr7.length);
                    Object[] objArr8 = this.b;
                    w6.L(objArr8, objArr8, i6, f2, objArr8.length - size);
                }
            }
            a(f2, collection);
            return true;
        }
        c2.i("index: ", i, ", size: ", i2);
        return false;
    }

    public final void addFirst(Object obj) {
        g();
        b(this.c + 1);
        int i = this.a;
        if (i == 0) {
            Object[] objArr = this.b;
            objArr.getClass();
            i = objArr.length;
        }
        int i2 = i - 1;
        this.a = i2;
        this.b[i2] = obj;
        this.c++;
    }

    public final void addLast(Object obj) {
        g();
        b(this.c + 1);
        this.b[f(this.a + this.c)] = obj;
        this.c++;
    }

    public final void b(int i) {
        if (i >= 0) {
            Object[] objArr = this.b;
            if (i <= objArr.length) {
                return;
            }
            if (objArr == d) {
                if (i < 10) {
                    i = 10;
                }
                this.b = new Object[i];
                return;
            }
            int length = objArr.length;
            int i2 = length + (length >> 1);
            if (i2 - i < 0) {
                i2 = i;
            }
            if (i2 - 2147483639 > 0) {
                if (i > 2147483639) {
                    i2 = Alert.DURATION_SHOW_INDEFINITELY;
                } else {
                    i2 = 2147483639;
                }
            }
            Object[] objArr2 = new Object[i2];
            w6.L(objArr, objArr2, 0, this.a, objArr.length);
            Object[] objArr3 = this.b;
            int length2 = objArr3.length;
            int i3 = this.a;
            w6.L(objArr3, objArr2, length2 - i3, 0, i3);
            this.a = 0;
            this.b = objArr2;
            return;
        }
        c2.g("Deque is too big.");
    }

    public final int c(int i) {
        Object[] objArr = this.b;
        objArr.getClass();
        if (i == objArr.length - 1) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            g();
            e(this.a, f(this.a + this.c));
        }
        this.a = 0;
        this.c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    public final int d(int i) {
        if (i < 0) {
            return i + this.b.length;
        }
        return i;
    }

    public final void e(int i, int i2) {
        Object[] objArr = this.b;
        if (i < i2) {
            objArr.getClass();
            Arrays.fill(objArr, i, i2, (Object) null);
            return;
        }
        Arrays.fill(objArr, i, objArr.length, (Object) null);
        Object[] objArr2 = this.b;
        objArr2.getClass();
        Arrays.fill(objArr2, 0, i2, (Object) null);
    }

    public final int f(int i) {
        Object[] objArr = this.b;
        if (i >= objArr.length) {
            return i - objArr.length;
        }
        return i;
    }

    public final void g() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            return this.b[f(this.a + i)];
        }
        c2.i("index: ", i, ", size: ", i2);
        return null;
    }

    public final Object h(int i) {
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            if (i == i2 - 1) {
                return removeLast();
            }
            if (i == 0) {
                return removeFirst();
            }
            g();
            int f = f(this.a + i);
            Object[] objArr = this.b;
            Object obj = objArr[f];
            int i3 = this.c;
            int i4 = i3 >> 1;
            int i5 = this.a;
            if (i < i4) {
                if (f >= i5) {
                    w6.L(objArr, objArr, i5 + 1, i5, f);
                } else {
                    w6.L(objArr, objArr, 1, 0, f);
                    Object[] objArr2 = this.b;
                    objArr2[0] = objArr2[objArr2.length - 1];
                    int i6 = this.a;
                    w6.L(objArr2, objArr2, i6 + 1, i6, objArr2.length - 1);
                }
                Object[] objArr3 = this.b;
                int i7 = this.a;
                objArr3[i7] = null;
                this.a = c(i7);
            } else {
                int f2 = f((i3 - 1) + i5);
                Object[] objArr4 = this.b;
                if (f <= f2) {
                    w6.L(objArr4, objArr4, f, f + 1, f2 + 1);
                } else {
                    w6.L(objArr4, objArr4, f, f + 1, objArr4.length);
                    Object[] objArr5 = this.b;
                    objArr5[objArr5.length - 1] = objArr5[0];
                    w6.L(objArr5, objArr5, 0, 1, f2 + 1);
                }
                this.b[f2] = null;
            }
            this.c--;
            return obj;
        }
        c2.i("index: ", i, ", size: ", i2);
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int f = f(this.a + this.c);
        int i2 = this.a;
        if (i2 < f) {
            while (i2 < f) {
                if (qj.c(obj, this.b[i2])) {
                    i = this.a;
                } else {
                    i2++;
                }
            }
            return -1;
        } else if (i2 >= f) {
            int length = this.b.length;
            while (true) {
                if (i2 < length) {
                    if (qj.c(obj, this.b[i2])) {
                        i = this.a;
                        break;
                    }
                    i2++;
                } else {
                    for (int i3 = 0; i3 < f; i3++) {
                        if (qj.c(obj, this.b[i3])) {
                            i2 = i3 + this.b.length;
                            i = this.a;
                        }
                    }
                    return -1;
                }
            }
        } else {
            return -1;
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        if (this.c == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int f = f(this.a + this.c);
        int i2 = this.a;
        if (i2 < f) {
            length = f - 1;
            if (i2 <= length) {
                while (!qj.c(obj, this.b[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.a;
                return length - i;
            }
            return -1;
        }
        if (i2 > f) {
            while (true) {
                f--;
                Object[] objArr = this.b;
                if (-1 < f) {
                    if (qj.c(obj, objArr[f])) {
                        length = f + this.b.length;
                        i = this.a;
                        break;
                    }
                } else {
                    objArr.getClass();
                    length = objArr.length - 1;
                    int i3 = this.a;
                    if (i3 <= length) {
                        while (!qj.c(obj, this.b[length])) {
                            if (length != i3) {
                                length--;
                            }
                        }
                        i = this.a;
                    }
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        h(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int f;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.b.length != 0) {
            int f2 = f(this.a + this.c);
            int i = this.a;
            if (i < f2) {
                f = i;
                while (true) {
                    objArr = this.b;
                    if (i >= f2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (!collection.contains(obj)) {
                        this.b[f] = obj;
                        f++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                objArr.getClass();
                Arrays.fill(objArr, f, f2, (Object) null);
            } else {
                int length = this.b.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.b;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (!collection.contains(obj2)) {
                        this.b[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                f = f(i2);
                for (int i3 = 0; i3 < f2; i3++) {
                    Object[] objArr3 = this.b;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (!collection.contains(obj3)) {
                        this.b[f] = obj3;
                        f = c(f);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                g();
                this.c = d(f - this.a);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (!isEmpty()) {
            g();
            Object[] objArr = this.b;
            int i = this.a;
            Object obj = objArr[i];
            objArr[i] = null;
            this.a = c(i);
            this.c--;
            return obj;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    public final Object removeLast() {
        if (!isEmpty()) {
            g();
            int f = f((size() - 1) + this.a);
            Object[] objArr = this.b;
            Object obj = objArr[f];
            objArr[f] = null;
            this.c--;
            return obj;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        qj.e(i, i2, this.c);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == this.c) {
            clear();
        } else if (i3 == 1) {
            h(i);
        } else {
            g();
            int i4 = this.c - i2;
            int i5 = this.a;
            if (i < i4) {
                int f = f((i - 1) + i5);
                int f2 = f(this.a + (i2 - 1));
                while (i > 0) {
                    int i6 = f + 1;
                    int min = Math.min(i, Math.min(i6, f2 + 1));
                    Object[] objArr = this.b;
                    int i7 = f2 - min;
                    int i8 = f - min;
                    w6.L(objArr, objArr, i7 + 1, i8 + 1, i6);
                    f = d(i8);
                    f2 = d(i7);
                    i -= min;
                }
                int f3 = f(this.a + i3);
                e(this.a, f3);
                this.a = f3;
            } else {
                int f4 = f(i5 + i2);
                int f5 = f(this.a + i);
                int i9 = this.c;
                while (true) {
                    i9 -= i2;
                    if (i9 <= 0) {
                        break;
                    }
                    Object[] objArr2 = this.b;
                    i2 = Math.min(i9, Math.min(objArr2.length - f4, objArr2.length - f5));
                    Object[] objArr3 = this.b;
                    int i10 = f4 + i2;
                    w6.L(objArr3, objArr3, f5, f4, i10);
                    f4 = f(i10);
                    f5 = f(f5 + i2);
                }
                int f6 = f(this.a + this.c);
                e(d(f6 - i3), f6);
            }
            this.c -= i3;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int f;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.b.length != 0) {
            int f2 = f(this.a + this.c);
            int i = this.a;
            if (i < f2) {
                f = i;
                while (true) {
                    objArr = this.b;
                    if (i >= f2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        this.b[f] = obj;
                        f++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                objArr.getClass();
                Arrays.fill(objArr, f, f2, (Object) null);
            } else {
                int length = this.b.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.b;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        this.b[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                f = f(i2);
                for (int i3 = 0; i3 < f2; i3++) {
                    Object[] objArr3 = this.b;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        this.b[f] = obj3;
                        f = c(f);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                g();
                this.c = d(f - this.a);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            int f = f(this.a + i);
            Object[] objArr = this.b;
            Object obj2 = objArr[f];
            objArr[f] = obj;
            return obj2;
        }
        c2.i("index: ", i, ", size: ", i2);
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i = this.c;
        if (length < i) {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
            newInstance.getClass();
            objArr = (Object[]) newInstance;
        }
        Object[] objArr2 = objArr;
        int f = f(this.a + this.c);
        int i2 = this.a;
        if (i2 < f) {
            w6.M(this.b, objArr2, 0, i2, f, 2);
        } else if (!isEmpty()) {
            Object[] objArr3 = this.b;
            w6.L(objArr3, objArr2, 0, this.a, objArr3.length);
            Object[] objArr4 = this.b;
            w6.L(objArr4, objArr2, objArr4.length - this.a, 0, f);
        }
        int i3 = this.c;
        if (i3 < objArr2.length) {
            objArr2[i3] = null;
        }
        return objArr2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i) {
        return h(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[this.c]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        g();
        b(collection.size() + this.c);
        a(f(this.a + this.c), collection);
        return true;
    }
}
