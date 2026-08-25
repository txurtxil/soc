package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* renamed from: c8  reason: default package */
/* loaded from: classes.dex */
public abstract class c8 {
    public static final ArrayMap a;
    public static final ArrayMap b;

    static {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put(Boolean.class, "bool");
        arrayMap.put(Byte.class, "byte");
        arrayMap.put(Short.class, "short");
        arrayMap.put(Integer.class, "int");
        arrayMap.put(Long.class, "long");
        arrayMap.put(Double.class, "double");
        arrayMap.put(Float.class, "float");
        arrayMap.put(String.class, "string");
        arrayMap.put(Parcelable.class, "parcelable");
        arrayMap.put(Map.class, "map");
        arrayMap.put(List.class, "list");
        arrayMap.put(IconCompat.class, "image");
        a = arrayMap;
        ArrayMap arrayMap2 = new ArrayMap();
        arrayMap2.put(0, "primitive");
        arrayMap2.put(1, "iInterface");
        arrayMap2.put(9, "iBinder");
        arrayMap2.put(2, "map");
        arrayMap2.put(3, "set");
        arrayMap2.put(4, "list");
        arrayMap2.put(5, "object");
        arrayMap2.put(6, "image");
        b = arrayMap2;
    }

    public static void a(Bundle bundle, AbstractCollection abstractCollection, a8 a8Var) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("tag_value");
        if (parcelableArrayList != null) {
            int size = parcelableArrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = parcelableArrayList.get(i);
                i++;
                abstractCollection.add(f((Bundle) ((Parcelable) obj), a8Var));
            }
            return;
        }
        throw new b8("Bundle is missing the collection", a8Var);
    }

    public static Object b(Bundle bundle, a8 a8Var) {
        String string = bundle.getString("tag_value");
        if (string != null) {
            String string2 = bundle.getString("tag_class_name");
            if (string2 != null) {
                try {
                    return g(Class.forName(string2), "valueOf", a8Var).invoke(null, string);
                } catch (ClassNotFoundException e) {
                    throw new b8(t20.f("Enum class [", string2, "] not found"), a8Var, e);
                } catch (IllegalArgumentException e2) {
                    throw new b8("Enum value [" + string + "] does not exist in enum class [" + string2 + "]", a8Var, e2);
                } catch (ReflectiveOperationException e3) {
                    throw new b8(t20.f("Enum of class [", string2, "] missing valueOf method"), a8Var, e3);
                }
            }
            throw new b8(t20.f("Missing enum className [", string2, "]"), a8Var);
        }
        throw new b8(t20.f("Missing enum name [", string, "]"), a8Var);
    }

    public static Object c(Bundle bundle, a8 a8Var) {
        IBinder binder = bundle.getBinder("tag_value");
        if (binder != null) {
            String string = bundle.getString("tag_class_name");
            if (string != null) {
                try {
                    Object invoke = g(Class.forName(string), "asInterface", a8Var).invoke(null, binder);
                    if (invoke != null) {
                        return invoke;
                    }
                    throw new b8("Failed to get interface from binder", a8Var);
                } catch (ClassNotFoundException e) {
                    throw new b8("Binder for unknown IInterface: ".concat(string), a8Var, e);
                } catch (ReflectiveOperationException e2) {
                    throw new b8("Method to create IInterface from a Binder is not accessible for interface: ".concat(string), a8Var, e2);
                }
            }
            throw new b8("Bundle is missing IInterface class name", a8Var);
        }
        throw new b8("Bundle is missing the binder", a8Var);
    }

    public static HashMap d(Bundle bundle, a8 a8Var) {
        Object f;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("tag_value");
        if (parcelableArrayList != null) {
            HashMap hashMap = new HashMap();
            int size = parcelableArrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = parcelableArrayList.get(i);
                i++;
                Bundle bundle2 = (Bundle) ((Parcelable) obj);
                Bundle bundle3 = bundle2.getBundle("tag_1");
                Bundle bundle4 = bundle2.getBundle("tag_2");
                if (bundle3 != null) {
                    Object f2 = f(bundle3, a8Var);
                    if (bundle4 == null) {
                        f = null;
                    } else {
                        f = f(bundle4, a8Var);
                    }
                    hashMap.put(f2, f);
                } else {
                    throw new b8("Bundle is missing key", a8Var);
                }
            }
            return hashMap;
        }
        throw new b8("Bundle is missing the map", a8Var);
    }

    public static Object e(Bundle bundle, a8 a8Var) {
        String string = bundle.getString("tag_class_name");
        if (string != null) {
            try {
                Class<?> cls = Class.forName(string);
                if (cls.isAnnotationPresent(e9.class)) {
                    Constructor<?> declaredConstructor = cls.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    Object newInstance = declaredConstructor.newInstance(null);
                    ArrayList h = h(cls);
                    int size = h.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = h.get(i);
                        i++;
                        Field field = (Field) obj;
                        field.setAccessible(true);
                        String str = field.getDeclaringClass().getName() + field.getName();
                        Object obj2 = bundle.get(str);
                        if (obj2 == null) {
                            obj2 = bundle.get(str.replaceAll("androidx.core.graphics.drawable.IconCompat", "android.support.v4.graphics.drawable.IconCompat"));
                        }
                        if (obj2 instanceof Bundle) {
                            field.set(newInstance, f((Bundle) obj2, a8Var));
                        } else if (obj2 == null && Log.isLoggable("CarApp.Bun", 3)) {
                            Log.d("CarApp.Bun", "Value is null for field: " + field);
                        }
                    }
                    return newInstance;
                }
                throw new b8("Invalid class not marked as CarProtocol: ".concat(string), a8Var);
            } catch (ClassNotFoundException e) {
                throw new b8("Object for unknown class: ".concat(string), a8Var, e);
            } catch (IllegalArgumentException e2) {
                throw new b8("Failed to deserialize class: ".concat(string), a8Var, e2);
            } catch (NoSuchMethodException e3) {
                throw new b8("Object missing no args constructor: ".concat(string), a8Var, e3);
            } catch (ReflectiveOperationException e4) {
                throw new b8("Constructor or field is not accessible: ".concat(string), a8Var, e4);
            }
        }
        throw new b8("Bundle is missing the class name", a8Var);
    }

    public static Object f(Bundle bundle, a8 a8Var) {
        String str;
        ClassLoader classLoader = c8.class.getClassLoader();
        Objects.requireNonNull(classLoader);
        bundle.setClassLoader(classLoader);
        int i = bundle.getInt("tag_class_type");
        String str2 = (String) b.get(Integer.valueOf(bundle.getInt("tag_class_type")));
        if (str2 == null) {
            str2 = "unknown";
        }
        a8 a8Var2 = new a8(bundle, str2, a8Var.b);
        try {
            switch (i) {
                case 0:
                    Object obj = bundle.get("tag_value");
                    if (obj != null) {
                        a8Var2.close();
                        return obj;
                    }
                    throw new b8("Bundle is missing the primitive value", a8Var2);
                case 1:
                    Object c = c(bundle, a8Var2);
                    a8Var2.close();
                    return c;
                case 2:
                    HashMap d = d(bundle, a8Var2);
                    a8Var2.close();
                    return d;
                case 3:
                    HashSet hashSet = new HashSet();
                    a(bundle, hashSet, a8Var2);
                    a8Var2.close();
                    return hashSet;
                case 4:
                    ArrayList arrayList = new ArrayList();
                    a(bundle, arrayList, a8Var2);
                    a8Var2.close();
                    return arrayList;
                case 5:
                    Object e = e(bundle, a8Var2);
                    a8Var2.close();
                    return e;
                case 6:
                    Bundle bundle2 = bundle.getBundle("tag_value");
                    if (bundle2 != null) {
                        IconCompat a2 = IconCompat.a(bundle2);
                        if (a2 != null) {
                            a8Var2.close();
                            return a2;
                        }
                        throw new b8("Failed to create IconCompat from bundle", a8Var2);
                    }
                    throw new b8("IconCompat bundle is null", a8Var2);
                case 7:
                    Object b2 = b(bundle, a8Var2);
                    a8Var2.close();
                    return b2;
                case 8:
                    String string = bundle.getString("tag_value");
                    if (string != null) {
                        try {
                            Class<?> cls = Class.forName(string);
                            a8Var2.close();
                            return cls;
                        } catch (ClassNotFoundException e2) {
                            throw new b8("Class name is unknown: ".concat(str), a8Var2, e2);
                        }
                    }
                    throw new b8("Class is missing the class name", a8Var2);
                case 9:
                    IBinder binder = bundle.getBinder("tag_value");
                    if (binder != null) {
                        a8Var2.close();
                        return binder;
                    }
                    throw new b8("Bundle is missing the binder", a8Var2);
                case 10:
                    lt a3 = lt.a(bundle);
                    a8Var2.close();
                    return a3;
                default:
                    throw new b8("Unsupported class type in bundle: " + i, a8Var2);
            }
        } catch (Throwable th) {
            try {
                a8Var2.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Method g(Class cls, String str, a8 a8Var) {
        Method[] declaredMethods;
        if (cls != null && cls != Object.class) {
            for (Method method : cls.getDeclaredMethods()) {
                if (method.getName().equals(str)) {
                    method.setAccessible(true);
                    return method;
                }
            }
            return g(cls.getSuperclass(), str, a8Var);
        }
        throw new b8("No method " + str + " in class " + cls, a8Var);
    }

    public static ArrayList h(Class cls) {
        Field[] declaredFields;
        ArrayList arrayList = new ArrayList();
        if (cls != null && cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    arrayList.add(field);
                }
            }
            arrayList.addAll(h(cls.getSuperclass()));
        }
        return arrayList;
    }

    public static String i(Class cls) {
        String str = (String) a.get(cls);
        if (str == null) {
            if (List.class.isAssignableFrom(cls)) {
                return "<List>";
            }
            if (Map.class.isAssignableFrom(cls)) {
                return "<Map>";
            }
            if (Set.class.isAssignableFrom(cls)) {
                return "<Set>";
            }
        }
        if (str == null) {
            return cls.getSimpleName();
        }
        return str;
    }

    public static Bundle j(Collection collection, a8 a8Var) {
        Bundle bundle = new Bundle(2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        int i = 0;
        for (Object obj : collection) {
            arrayList.add(p(obj, "<item " + i + ">", a8Var));
            i++;
        }
        bundle.putParcelableArrayList("tag_value", arrayList);
        return bundle;
    }

    public static Bundle k(Object obj, a8 a8Var) {
        Bundle bundle = new Bundle(3);
        bundle.putInt("tag_class_type", 7);
        try {
            bundle.putString("tag_value", (String) g(obj.getClass(), "name", a8Var).invoke(obj, null));
            bundle.putString("tag_class_name", obj.getClass().getName());
            return bundle;
        } catch (ReflectiveOperationException e) {
            throw new b8("Enum missing name method", a8Var, e);
        }
    }

    public static Bundle l(Map map, a8 a8Var) {
        Bundle bundle = new Bundle(2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        int i = 0;
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle2 = new Bundle(2);
            Object key = entry.getKey();
            bundle2.putBundle("tag_1", p(key, "<key " + i + ">", a8Var));
            if (entry.getValue() != null) {
                Object value = entry.getValue();
                bundle2.putBundle("tag_2", p(value, "<value " + i + ">", a8Var));
            }
            i++;
            arrayList.add(bundle2);
        }
        bundle.putInt("tag_class_type", 2);
        bundle.putParcelableArrayList("tag_value", arrayList);
        return bundle;
    }

    public static Bundle m(Object obj, a8 a8Var) {
        String name = obj.getClass().getName();
        if (obj.getClass().isAnnotationPresent(e9.class)) {
            try {
                obj.getClass().getDeclaredConstructor(null);
                ArrayList h = h(obj.getClass());
                Bundle bundle = new Bundle(h.size() + 2);
                bundle.putInt("tag_class_type", 5);
                bundle.putString("tag_class_name", name);
                int size = h.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = h.get(i);
                    i++;
                    Field field = (Field) obj2;
                    field.setAccessible(true);
                    String str = field.getDeclaringClass().getName() + field.getName();
                    try {
                        Object obj3 = field.get(obj);
                        if (obj3 != null) {
                            bundle.putParcelable(str, p(obj3, field.getName(), a8Var));
                        }
                    } catch (IllegalAccessException e) {
                        throw new b8("Field is not accessible: ".concat(str), a8Var, e);
                    }
                }
                return bundle;
            } catch (NoSuchMethodException e2) {
                throw new b8("Class to deserialize is missing a no args constructor: ".concat(name), a8Var, e2);
            }
        }
        throw new b8("Invalid class not marked as CarProtocol: ".concat(name), a8Var);
    }

    public static Bundle n(lt ltVar) {
        Bundle bundle;
        ltVar.getClass();
        Bundle bundle2 = new Bundle();
        bundle2.putCharSequence("name", ltVar.a);
        IconCompat iconCompat = ltVar.b;
        if (iconCompat != null) {
            bundle = iconCompat.h();
        } else {
            bundle = null;
        }
        bundle2.putBundle("icon", bundle);
        bundle2.putString("uri", ltVar.c);
        bundle2.putString("key", ltVar.d);
        bundle2.putBoolean("isBot", ltVar.e);
        bundle2.putBoolean("isImportant", ltVar.f);
        bundle2.putInt("tag_class_type", 10);
        return bundle2;
    }

    public static Bundle o(Object obj, a8 a8Var) {
        Bundle bundle = new Bundle(2);
        bundle.putInt("tag_class_type", 0);
        if (obj instanceof Boolean) {
            bundle.putBoolean("tag_value", ((Boolean) obj).booleanValue());
            return bundle;
        } else if (obj instanceof Byte) {
            bundle.putByte("tag_value", ((Byte) obj).byteValue());
            return bundle;
        } else if (obj instanceof Character) {
            bundle.putChar("tag_value", ((Character) obj).charValue());
            return bundle;
        } else if (obj instanceof Short) {
            bundle.putShort("tag_value", ((Short) obj).shortValue());
            return bundle;
        } else if (obj instanceof Integer) {
            bundle.putInt("tag_value", ((Integer) obj).intValue());
            return bundle;
        } else if (obj instanceof Long) {
            bundle.putLong("tag_value", ((Long) obj).longValue());
            return bundle;
        } else if (obj instanceof Double) {
            bundle.putDouble("tag_value", ((Double) obj).doubleValue());
            return bundle;
        } else if (obj instanceof Float) {
            bundle.putFloat("tag_value", ((Float) obj).floatValue());
            return bundle;
        } else if (obj instanceof String) {
            bundle.putString("tag_value", (String) obj);
            return bundle;
        } else if (obj instanceof Parcelable) {
            bundle.putParcelable("tag_value", (Parcelable) obj);
            return bundle;
        } else {
            throw new b8("Unsupported primitive type: ".concat(obj.getClass().getName()), a8Var);
        }
    }

    public static Bundle p(Object obj, String str, a8 a8Var) {
        ArrayDeque arrayDeque = a8Var.b;
        if (obj != null) {
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                if (((z7) it.next()).a == obj) {
                    throw new b8("Found cycle while bundling type ".concat(obj.getClass().getSimpleName()), a8Var);
                }
            }
        }
        a8 a8Var2 = new a8(obj, str, arrayDeque);
        try {
            if (obj != null) {
                if (obj instanceof IconCompat) {
                    Bundle bundle = new Bundle(2);
                    bundle.putInt("tag_class_type", 6);
                    bundle.putBundle("tag_value", ((IconCompat) obj).h());
                    a8Var2.close();
                    return bundle;
                }
                if (!(obj instanceof Boolean) && !(obj instanceof Byte) && !(obj instanceof Character) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof String) && !(obj instanceof Parcelable)) {
                    if (obj instanceof IInterface) {
                        IInterface iInterface = (IInterface) obj;
                        Bundle bundle2 = new Bundle(3);
                        String name = iInterface.getClass().getName();
                        bundle2.putInt("tag_class_type", 1);
                        bundle2.putBinder("tag_value", iInterface.asBinder());
                        bundle2.putString("tag_class_name", name);
                        a8Var2.close();
                        return bundle2;
                    } else if (obj instanceof IBinder) {
                        Bundle bundle3 = new Bundle(2);
                        bundle3.putInt("tag_class_type", 9);
                        bundle3.putBinder("tag_value", (IBinder) obj);
                        a8Var2.close();
                        return bundle3;
                    } else if (obj instanceof Map) {
                        Bundle l = l((Map) obj, a8Var2);
                        a8Var2.close();
                        return l;
                    } else if (obj instanceof List) {
                        Bundle j = j((List) obj, a8Var2);
                        j.putInt("tag_class_type", 4);
                        a8Var2.close();
                        return j;
                    } else if (obj instanceof Set) {
                        Bundle j2 = j((Set) obj, a8Var2);
                        j2.putInt("tag_class_type", 3);
                        a8Var2.close();
                        return j2;
                    } else if (obj.getClass().isEnum()) {
                        Bundle k = k(obj, a8Var2);
                        a8Var2.close();
                        return k;
                    } else if (obj instanceof Class) {
                        Bundle bundle4 = new Bundle(2);
                        bundle4.putInt("tag_class_type", 8);
                        bundle4.putString("tag_value", ((Class) obj).getName());
                        a8Var2.close();
                        return bundle4;
                    } else if (!obj.getClass().isArray()) {
                        if (obj instanceof lt) {
                            Bundle n = n((lt) obj);
                            a8Var2.close();
                            return n;
                        }
                        Bundle m = m(obj, a8Var2);
                        a8Var2.close();
                        return m;
                    } else {
                        throw new b8("Object serializing contains an array, use a list or a set instead", a8Var2);
                    }
                }
                Bundle o = o(obj, a8Var2);
                a8Var2.close();
                return o;
            }
            throw new b8("Bundling of null object is not supported", a8Var2);
        } catch (Throwable th) {
            try {
                a8Var2.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
