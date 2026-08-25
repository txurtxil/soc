.class Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;
.super Landroidx/car/app/ISurfaceCallback$Stub;
.source "SourceFile"


# instance fields
.field private final mLifecycle:Lnk;

.field private mSurfaceCallback:Lt30;


# direct methods
.method public constructor <init>(Lnk;Lt30;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/car/app/ISurfaceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 7
    .line 8
    new-instance p2, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$1;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub$1;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lnk;->a(Lrk;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$002(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Lt30;)Lt30;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic g(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onStableAreaChanged$2(Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onClick$7(FF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Lx7;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onSurfaceDestroyed$3(Lx7;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onScroll$4(FF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onFling$5(FF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFF)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onScale$6(FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private lambda$onClick$7(FF)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lko;

    .line 6
    .line 7
    iget-object p0, p0, Lko;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lmq;

    .line 10
    .line 11
    invoke-static {p0}, Lmq;->b(Lmq;)Lq50;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, v0, Lq50;->a:Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, v0, Lq50;->b:Ljava/lang/Float;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v0, v0, Lq50;->c:Ljava/lang/Float;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sget v3, Lb00;->c:I

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    sget v4, Lb00;->d:I

    .line 40
    .line 41
    int-to-float v4, v4

    .line 42
    sub-float/2addr p1, v2

    .line 43
    div-float/2addr p1, v1

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {p1, v2, v3}, Lgn;->i(FFF)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    sub-float/2addr p2, v0

    .line 50
    div-float/2addr p2, v1

    .line 51
    invoke-static {p2, v2, v4}, Lgn;->i(FFF)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 56
    .line 57
    iget-object p0, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0, p1, p2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handleTap(Landroid/content/SharedPreferences;FF)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_1

    .line 67
    .line 68
    sget-object p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 69
    .line 70
    if-eqz p0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v1, Lyp;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-direct {v1, p0, p1, p2, v2}, Lyp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;FFI)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method private lambda$onFling$5(FF)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lko;

    .line 6
    .line 7
    iget-object p0, p0, Lko;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lmq;

    .line 10
    .line 11
    invoke-static {p0}, Lmq;->b(Lmq;)Lq50;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Lq50;->a:Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 25
    .line 26
    iget-object p0, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    div-float/2addr p1, v0

    .line 32
    div-float/2addr p2, v0

    .line 33
    invoke-virtual {v1, p0, p1, p2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handleFling(Landroid/content/SharedPreferences;FF)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    sget-object p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v1, Lyp;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, p0, p1, p2, v2}, Lyp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;FFI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method private lambda$onScale$6(FFF)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lko;

    .line 6
    .line 7
    iget-object p0, p0, Lko;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lmq;

    .line 10
    .line 11
    invoke-static {p0}, Lmq;->b(Lmq;)Lq50;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, v0, Lq50;->a:Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, v0, Lq50;->b:Ljava/lang/Float;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v0, v0, Lq50;->c:Ljava/lang/Float;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sget v3, Lb00;->c:I

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    sget v4, Lb00;->d:I

    .line 40
    .line 41
    int-to-float v4, v4

    .line 42
    sub-float/2addr p1, v2

    .line 43
    div-float/2addr p1, v1

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {p1, v2, v3}, Lgn;->i(FFF)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    sub-float/2addr p2, v0

    .line 50
    div-float/2addr p2, v1

    .line 51
    invoke-static {p2, v2, v4}, Lgn;->i(FFF)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 56
    .line 57
    iget-object p0, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0, p1, p2, p3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handleScale(Landroid/content/SharedPreferences;FFF)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_1

    .line 67
    .line 68
    sget-object p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 69
    .line 70
    if-eqz p0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v1, Lzp;

    .line 75
    .line 76
    invoke-direct {v1, p3, p0, p1, p2}, Lzp;-><init>(FLidv/lzn/screenonauto/MirrorAccessibilityService;FF)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 83
    return-object p0
.end method

.method private lambda$onScroll$4(FF)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lko;

    .line 6
    .line 7
    iget-object p0, p0, Lko;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lmq;

    .line 10
    .line 11
    invoke-static {p0}, Lmq;->b(Lmq;)Lq50;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Lq50;->a:Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 25
    .line 26
    iget-object p0, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    div-float/2addr p1, v0

    .line 32
    div-float/2addr p2, v0

    .line 33
    invoke-virtual {v1, p0, p1, p2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handleScroll(Landroid/content/SharedPreferences;FF)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    sget-object p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v1, Lyp;

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-direct {v1, p0, p1, p2, v2}, Lyp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;FFI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method private lambda$onStableAreaChanged$2(Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lko;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, "x"

    .line 22
    .line 23
    const-string v2, " rect="

    .line 24
    .line 25
    const-string v3, "onStableAreaChanged: "

    .line 26
    .line 27
    invoke-static {v3, p0, v1, v0, v2}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "MirrorScreen"

    .line 39
    .line 40
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method private lambda$onSurfaceAvailable$0(Lx7;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Lx7;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/car/app/SurfaceContainer;

    .line 10
    .line 11
    check-cast p0, Lko;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getSurface()Landroid/view/Surface;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getDpi()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lko;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Lmq;

    .line 35
    .line 36
    iget-object v5, v4, Lmq;->o:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Lk60;->m(Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v8, "onSurfaceAvailable: surface="

    .line 48
    .line 49
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, " w="

    .line 56
    .line 57
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " h="

    .line 64
    .line 65
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " dpi="

    .line 72
    .line 73
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " gap="

    .line 80
    .line 81
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "MirrorScreen"

    .line 92
    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lko;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Landroidx/car/app/i;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-class v2, Landroid/os/PowerManager;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/os/PowerManager;

    .line 118
    .line 119
    if-nez v0, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    sget-object v2, Lk60;->i:Landroid/os/PowerManager$WakeLock;

    .line 130
    .line 131
    if-nez v2, :cond_2

    .line 132
    .line 133
    const v2, 0x1000000a

    .line 134
    .line 135
    .line 136
    const-string v3, "ScreenOnAuto:wake"

    .line 137
    .line 138
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const/4 v0, 0x0

    .line 143
    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 144
    .line 145
    .line 146
    sput-object v2, Lk60;->i:Landroid/os/PowerManager$WakeLock;

    .line 147
    .line 148
    :cond_2
    const-wide/16 v6, 0x4e20

    .line 149
    .line 150
    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 151
    .line 152
    .line 153
    :goto_0
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getSurface()Landroid/view/Surface;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-nez v0, :cond_3

    .line 158
    .line 159
    const-string p0, "onSurfaceAvailable: surface is null, skipping"

    .line 160
    .line 161
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getWidth()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/4 v2, 0x1

    .line 170
    if-ge v1, v2, :cond_4

    .line 171
    .line 172
    move v1, v2

    .line 173
    :cond_4
    iput v1, v4, Lmq;->i:I

    .line 174
    .line 175
    iput v1, v4, Lmq;->j:I

    .line 176
    .line 177
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-ge v1, v2, :cond_5

    .line 182
    .line 183
    move v1, v2

    .line 184
    :cond_5
    iput v1, v4, Lmq;->k:I

    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Lmq;->h()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-static {v5, v1}, Lk60;->e(Landroid/content/SharedPreferences;I)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    iput v1, v4, Lmq;->f:I

    .line 198
    .line 199
    iget v1, v4, Lmq;->k:I

    .line 200
    .line 201
    invoke-static {v5, v1}, Lk60;->d(Landroid/content/SharedPreferences;I)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    iput v1, v4, Lmq;->g:I

    .line 206
    .line 207
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getDpi()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    iput v1, v4, Lmq;->h:I

    .line 212
    .line 213
    sget v1, Lb00;->a:I

    .line 214
    .line 215
    iget v1, v4, Lmq;->f:I

    .line 216
    .line 217
    iget v3, v4, Lmq;->g:I

    .line 218
    .line 219
    invoke-virtual {p1}, Landroidx/car/app/SurfaceContainer;->getDpi()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    sget-object v5, Lyz;->a:Lyz;

    .line 224
    .line 225
    invoke-static {v1, v3, p1, v5, v0}, Lb00;->d(IIILyz;Landroid/view/Surface;)V

    .line 226
    .line 227
    .line 228
    iget-boolean p1, v4, Lmq;->n:Z

    .line 229
    .line 230
    if-eqz p1, :cond_6

    .line 231
    .line 232
    sget-object p1, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 233
    .line 234
    if-nez p1, :cond_6

    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    new-instance v0, Landroid/content/Intent;

    .line 241
    .line 242
    const-class v1, Lidv/lzn/screenonauto/MainActivity;

    .line 243
    .line 244
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .line 246
    .line 247
    const/high16 p0, 0x30000000

    .line 248
    .line 249
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    const-string p0, "extra_auto_start"

    .line 253
    .line 254
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    .line 259
    .line 260
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 261
    return-object p0
.end method

.method private lambda$onSurfaceDestroyed$3(Lx7;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lx7;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/car/app/SurfaceContainer;

    .line 11
    .line 12
    check-cast p0, Lko;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string p1, "MirrorScreen"

    .line 18
    .line 19
    const-string v1, "onSurfaceDestroyed"

    .line 20
    .line 21
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lko;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lmq;

    .line 27
    .line 28
    iget-object p0, p0, Lmq;->l:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget p0, Lb00;->a:I

    .line 34
    .line 35
    sget-object p0, Lb00;->k:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance p1, Lm1;

    .line 38
    .line 39
    const/16 v1, 0xd

    .line 40
    .line 41
    sget-object v2, Lyz;->a:Lyz;

    .line 42
    .line 43
    invoke-direct {p1, v1, v2}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-object v0
.end method

.method private lambda$onVisibleAreaChanged$1(Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mSurfaceCallback:Lt30;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    check-cast p0, Lko;

    .line 7
    .line 8
    iget-object p0, p0, Lko;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lmq;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "MirrorScreen"

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string p0, "onVisibleAreaChanged: empty rect, skipping"

    .line 24
    .line 25
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    iget v1, p0, Lmq;->h:I

    .line 30
    .line 31
    iget-object v3, p0, Lmq;->l:Landroid/os/Handler;

    .line 32
    .line 33
    iget-object v4, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const-string p0, "onVisibleAreaChanged: dpi not yet known, skipping"

    .line 38
    .line 39
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    if-ge v1, v5, :cond_2

    .line 47
    .line 48
    move v1, v5

    .line 49
    :cond_2
    iput v1, p0, Lmq;->j:I

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lmq;->h()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v4, v1}, Lk60;->e(Landroid/content/SharedPreferences;I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget v5, p0, Lmq;->f:I

    .line 66
    .line 67
    if-ne v1, v5, :cond_3

    .line 68
    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p1, "onVisibleAreaChanged: settled back to "

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, ", cancelled pending resize"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_3
    iget v6, p0, Lmq;->g:I

    .line 93
    .line 94
    invoke-static {v4}, Lk60;->m(Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const-string v7, "onVisibleAreaChanged: resize "

    .line 99
    .line 100
    const-string v8, " (was "

    .line 101
    .line 102
    const-string v9, "x"

    .line 103
    .line 104
    invoke-static {v7, v1, v9, v6, v8}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v5, ") rect="

    .line 118
    .line 119
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p1, " gap="

    .line 126
    .line 127
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    new-instance p1, Llq;

    .line 141
    .line 142
    invoke-direct {p1, p0, v1}, Llq;-><init>(Lmq;I)V

    .line 143
    .line 144
    .line 145
    iget-wide v1, p0, Lmq;->m:J

    .line 146
    .line 147
    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    .line 149
    .line 150
    :cond_4
    return-object v0
.end method

.method public static synthetic m(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Lx7;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onSurfaceAvailable$0(Lx7;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->lambda$onVisibleAreaChanged$1(Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onClick(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 2
    .line 3
    new-instance v1, Landroidx/car/app/utils/b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/car/app/utils/b;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFI)V

    .line 7
    .line 8
    .line 9
    new-instance p0, Lx5;

    .line 10
    .line 11
    const-string p1, "onClick"

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, p1}, Lx5;-><init>(Lnk;Lhx;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ln40;->b(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onFling(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 2
    .line 3
    new-instance v1, Landroidx/car/app/utils/b;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/car/app/utils/b;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFI)V

    .line 7
    .line 8
    .line 9
    new-instance p0, Lx5;

    .line 10
    .line 11
    const-string p1, "onFling"

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, p1}, Lx5;-><init>(Lnk;Lhx;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ln40;->b(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onScale(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 2
    .line 3
    new-instance v1, Landroidx/car/app/utils/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/car/app/utils/d;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFF)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lx5;

    .line 9
    .line 10
    const-string p1, "onScale"

    .line 11
    .line 12
    invoke-direct {p0, v0, v1, p1}, Lx5;-><init>(Lnk;Lhx;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ln40;->b(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onScroll(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 2
    .line 3
    new-instance v1, Landroidx/car/app/utils/b;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/car/app/utils/b;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFI)V

    .line 7
    .line 8
    .line 9
    new-instance p0, Lx5;

    .line 10
    .line 11
    const-string p1, "onScroll"

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, p1}, Lx5;-><init>(Lnk;Lhx;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ln40;->b(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onStableAreaChanged(Landroid/graphics/Rect;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 2
    .line 3
    new-instance v1, Landroidx/car/app/utils/c;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Landroidx/car/app/utils/c;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroid/graphics/Rect;I)V

    .line 7
    .line 8
    .line 9
    const-string p0, "onStableAreaChanged"

    .line 10
    .line 11
    invoke-static {v0, p2, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onSurfaceAvailable(Lx7;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 2
    .line 3
    new-instance v1, Landroidx/car/app/utils/a;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Landroidx/car/app/utils/a;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Lx7;I)V

    .line 7
    .line 8
    .line 9
    const-string p0, "onSurfaceAvailable"

    .line 10
    .line 11
    invoke-static {v0, p2, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onSurfaceDestroyed(Lx7;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 2
    .line 3
    new-instance v1, Landroidx/car/app/utils/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Landroidx/car/app/utils/a;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Lx7;I)V

    .line 7
    .line 8
    .line 9
    const-string p0, "onSurfaceDestroyed"

    .line 10
    .line 11
    invoke-static {v0, p2, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onVisibleAreaChanged(Landroid/graphics/Rect;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->mLifecycle:Lnk;

    .line 2
    .line 3
    new-instance v1, Landroidx/car/app/utils/c;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Landroidx/car/app/utils/c;-><init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Landroid/graphics/Rect;I)V

    .line 7
    .line 8
    .line 9
    const-string p0, "onVisibleAreaChanged"

    .line 10
    .line 11
    invoke-static {v0, p2, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
