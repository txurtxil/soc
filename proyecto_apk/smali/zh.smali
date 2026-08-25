.class public abstract Lzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field public static final c:Ljava/lang/reflect/Method;

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    const/high16 v1, 0x400000

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    sput v1, Lzh;->d:I

    .line 13
    .line 14
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    const/16 v3, 0x1c

    .line 21
    .line 22
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    const-class v5, Landroid/os/IBinder;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    const-string v7, "addService"

    .line 28
    .line 29
    const-class v8, Ljava/lang/String;

    .line 30
    .line 31
    if-lt v0, v3, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    .line 35
    .line 36
    aput-object v8, v0, v2

    .line 37
    .line 38
    aput-object v5, v0, v6

    .line 39
    .line 40
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    aput-object v4, v0, v2

    .line 47
    .line 48
    invoke-virtual {v1, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lzh;->a:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    :catch_0
    :cond_1
    :try_start_2
    sget-object v0, Lzh;->a:Ljava/lang/reflect/Method;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    filled-new-array {v8, v5}, [Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lzh;->a:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    :cond_2
    const-class v0, Landroid/content/ContextWrapper;

    .line 69
    .line 70
    const-string v1, "attachBaseContext"

    .line 71
    .line 72
    const-class v2, Landroid/content/Context;

    .line 73
    .line 74
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lzh;->b:Ljava/lang/reflect/Method;

    .line 83
    .line 84
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    .line 86
    .line 87
    const-string v0, "android.ddm.DdmHandleAppName"

    .line 88
    .line 89
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "setAppName"

    .line 94
    .line 95
    filled-new-array {v8, v4}, [Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lzh;->c:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    .line 107
    const-string v1, "IPC"

    .line 108
    .line 109
    invoke-static {v1, v0}, Lk60;->o(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-void
.end method
