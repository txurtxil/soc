.class public final Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLING_SECONDS:F = 0.192f

.field private static final FLING_STEPS:I = 0xc

.field private static final FLING_STEP_MS:J = 0x10L

.field public static final INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

.field private static final PINCH_IDLE_MS:J = 0x12cL

.field private static final STREAM_IDLE_MS:J = 0x32L

.field private static final X_PRECISION:F = 1.0f

.field private static final Y_PRECISION:F = 1.0f

.field private static final finalizeRunnable:Ljava/lang/Runnable;

.field private static flingGeneration:I

.field private static forwardAnchorUptime:J

.field private static forwardCarDownTime:J

.field private static forwardLastX:F

.field private static forwardLastY:F

.field private static forwardPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static forwardPointerIds:[I

.field private static forwardStreamOpen:Z

.field private static final handler:Landroid/os/Handler;

.field private static pinchDesiredFocusX:F

.field private static pinchDesiredFocusY:F

.field private static pinchDownTime:J

.field private static final pinchFinalizeRunnable:Ljava/lang/Runnable;

.field private static pinchFocusX:F

.field private static pinchFocusY:F

.field private static pinchOpen:Z

.field private static pinchSpan:F

.field private static pinchVertical:Z

.field private static streamDownTime:J

.field private static streamOpen:Z

.field private static streamX:F

.field private static streamY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 2
    .line 3
    invoke-direct {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v1, v0, [I

    .line 21
    .line 22
    sput-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardPointerIds:[I

    .line 23
    .line 24
    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 25
    .line 26
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchVertical:Z

    .line 30
    .line 31
    new-instance v0, Lou;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1}, Lou;-><init>(I)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFinalizeRunnable:Ljava/lang/Runnable;

    .line 38
    .line 39
    new-instance v0, Lou;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1}, Lou;-><init>(I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeRunnable:Ljava/lang/Runnable;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeRunnable$lambda$8()V

    return-void
.end method

.method public static synthetic b(IFFFFFI)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->fling$lambda$7(IFFFFFI)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFinalizeRunnable$lambda$4()V

    return-void
.end method

.method private final finalizePinch()V
    .locals 3

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFinalizeRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchOpen:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchOpen:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pointerUpAction(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {p0, v1, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPinch(II)Z

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPinch(II)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final finalizeRunnable$lambda$8()V
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 2
    .line 3
    invoke-direct {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeStream()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final finalizeStream()V
    .locals 9

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamOpen:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamOpen:Z

    .line 15
    .line 16
    sget v3, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamX:F

    .line 17
    .line 18
    sget v4, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamY:F

    .line 19
    .line 20
    sget-wide v5, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamDownTime:J

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    const/4 v2, 0x1

    .line 27
    move-object v1, p0

    .line 28
    invoke-direct/range {v1 .. v8}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPoint(IFFJJ)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final fling(FF)Z
    .locals 12

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizePinch()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lb00;->c:I

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    sget v1, Lb00;->d:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    const/4 v2, 0x0

    .line 18
    cmpg-float v3, v0, v2

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    cmpg-float v3, v1, v2

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    sget-boolean v3, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamOpen:Z

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    const/high16 v3, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float v4, v0, v3

    .line 36
    .line 37
    div-float v3, v1, v3

    .line 38
    .line 39
    invoke-direct {p0, v4, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->openStream(FF)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_2
    move v3, v2

    .line 51
    sget v2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamX:F

    .line 52
    .line 53
    sget v5, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamY:F

    .line 54
    .line 55
    const v4, 0x3e449ba6    # 0.192f

    .line 56
    .line 57
    .line 58
    mul-float/2addr p1, v4

    .line 59
    add-float/2addr p1, v2

    .line 60
    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxX(F)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {p1, v3, v0}, Lgn;->i(FFF)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    mul-float/2addr p2, v4

    .line 69
    add-float/2addr p2, v5

    .line 70
    invoke-direct {p0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxY(F)F

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-static {p2, v3, p0}, Lgn;->i(FFF)F

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    sget p0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->flingGeneration:I

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    add-int/lit8 v1, p0, 0x1

    .line 82
    .line 83
    sput v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->flingGeneration:I

    .line 84
    .line 85
    move v7, p2

    .line 86
    :goto_1
    const/16 p0, 0xd

    .line 87
    .line 88
    if-ge v7, p0, :cond_3

    .line 89
    .line 90
    int-to-float p0, v7

    .line 91
    const/high16 v0, 0x41400000    # 12.0f

    .line 92
    .line 93
    div-float v4, p0, v0

    .line 94
    .line 95
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handler:Landroid/os/Handler;

    .line 96
    .line 97
    new-instance v0, Lpu;

    .line 98
    .line 99
    move v3, p1

    .line 100
    invoke-direct/range {v0 .. v7}, Lpu;-><init>(IFFFFFI)V

    .line 101
    .line 102
    .line 103
    int-to-long v8, v7

    .line 104
    const-wide/16 v10, 0x10

    .line 105
    .line 106
    mul-long/2addr v8, v10

    .line 107
    invoke-virtual {p0, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    return p2
.end method

.method private static final fling$lambda$7(IFFFFFI)V
    .locals 1

    .line 1
    sget v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->flingGeneration:I

    .line 2
    .line 3
    if-ne p0, v0, :cond_2

    .line 4
    .line 5
    sget-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamOpen:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 11
    .line 12
    sub-float/2addr p2, p1

    .line 13
    mul-float/2addr p2, p3

    .line 14
    add-float/2addr p2, p1

    .line 15
    sub-float/2addr p5, p4

    .line 16
    mul-float/2addr p5, p3

    .line 17
    add-float/2addr p5, p4

    .line 18
    invoke-direct {p0, p2, p5}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->moveTo(FF)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const/16 p1, 0xc

    .line 29
    .line 30
    if-ne p6, p1, :cond_2

    .line 31
    .line 32
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeStream()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method private final maxX(F)F
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private final maxY(F)F
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private final moveTo(FF)Z
    .locals 8

    .line 1
    sput p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamX:F

    .line 2
    .line 3
    sput p2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamY:F

    .line 4
    .line 5
    sget-wide v4, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamDownTime:J

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v6

    .line 11
    const/4 v1, 0x2

    .line 12
    move-object v0, p0

    .line 13
    move v2, p1

    .line 14
    move v3, p2

    .line 15
    invoke-direct/range {v0 .. v7}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPoint(IFFJJ)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method private final onSendFailed()Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamOpen:Z

    .line 3
    .line 4
    sput-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchOpen:Z

    .line 5
    .line 6
    sget v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->flingGeneration:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    sput v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->flingGeneration:I

    .line 11
    .line 12
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFinalizeRunnable:Ljava/lang/Runnable;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return p0
.end method

.method private final openStream(FF)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    sput-wide v4, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamDownTime:J

    .line 6
    .line 7
    sput p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamX:F

    .line 8
    .line 9
    sput p2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamY:F

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamOpen:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move-wide v6, v4

    .line 16
    move-object v0, p0

    .line 17
    move v2, p1

    .line 18
    move v3, p2

    .line 19
    invoke-direct/range {v0 .. v7}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPoint(IFFJJ)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method private static final pinchFinalizeRunnable$lambda$4()V
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 2
    .line 3
    invoke-direct {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizePinch()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final pointerDownAction(I)I
    .locals 0

    shl-int/lit8 p0, p1, 0x8

    or-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private final pointerUpAction(I)I
    .locals 0

    shl-int/lit8 p0, p1, 0x8

    or-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private final releaseAndDecline()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeStream()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizePinch()V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private final scale(FFF)Z
    .locals 12

    .line 1
    sget v0, Lb00;->c:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    sget v1, Lb00;->d:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpg-float v3, v0, v2

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    cmpg-float v3, v1, v2

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    cmpg-float v3, p3, v2

    .line 20
    .line 21
    if-gtz v3, :cond_2

    .line 22
    .line 23
    :goto_0
    return v4

    .line 24
    :cond_2
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeStream()V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    sget-object v5, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFinalizeRunnable:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    cmpl-float v6, v1, v0

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    if-ltz v6, :cond_3

    .line 38
    .line 39
    move v6, v7

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move v6, v4

    .line 42
    :goto_1
    sput-boolean v6, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchVertical:Z

    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const v8, 0x3f4ccccd    # 0.8f

    .line 49
    .line 50
    .line 51
    mul-float/2addr v8, v6

    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const/4 v10, 0x5

    .line 61
    const/high16 v11, 0x41200000    # 10.0f

    .line 62
    .line 63
    invoke-static {v10, v11, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    const/high16 v11, 0x40000000    # 2.0f

    .line 68
    .line 69
    mul-float/2addr v9, v11

    .line 70
    sub-float/2addr v6, v9

    .line 71
    cmpg-float v9, v6, v2

    .line 72
    .line 73
    if-gez v9, :cond_4

    .line 74
    .line 75
    move v6, v2

    .line 76
    :cond_4
    cmpl-float v9, v8, v6

    .line 77
    .line 78
    if-lez v9, :cond_5

    .line 79
    .line 80
    move v8, v6

    .line 81
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const/high16 v9, 0x42080000    # 34.0f

    .line 90
    .line 91
    invoke-static {v10, v9, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const v9, 0x3f666666    # 0.9f

    .line 96
    .line 97
    .line 98
    mul-float/2addr v9, v8

    .line 99
    cmpl-float v10, v6, v9

    .line 100
    .line 101
    if-lez v10, :cond_6

    .line 102
    .line 103
    move v6, v9

    .line 104
    :cond_6
    sget-boolean v9, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchOpen:Z

    .line 105
    .line 106
    if-nez v9, :cond_7

    .line 107
    .line 108
    mul-float v9, v6, v8

    .line 109
    .line 110
    float-to-double v9, v9

    .line 111
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v9

    .line 115
    double-to-float v9, v9

    .line 116
    sput v9, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchSpan:F

    .line 117
    .line 118
    sput p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchDesiredFocusX:F

    .line 119
    .line 120
    sput p2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchDesiredFocusY:F

    .line 121
    .line 122
    :cond_7
    sget p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchSpan:F

    .line 123
    .line 124
    mul-float/2addr p1, p3

    .line 125
    invoke-static {p1, v6, v8}, Lgn;->i(FFF)F

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    sput p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchSpan:F

    .line 130
    .line 131
    div-float/2addr p1, v11

    .line 132
    sget p2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchDesiredFocusX:F

    .line 133
    .line 134
    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxX(F)F

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchVertical:Z

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    move v0, v2

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move v0, p1

    .line 145
    :goto_2
    invoke-static {p2, p3, v0}, Lem;->b(FFF)F

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    sput p2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFocusX:F

    .line 150
    .line 151
    sget p2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchDesiredFocusY:F

    .line 152
    .line 153
    invoke-direct {p0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxY(F)F

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchVertical:Z

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    move v2, p1

    .line 162
    :cond_9
    invoke-static {p2, p3, v2}, Lem;->b(FFF)F

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    sput p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFocusY:F

    .line 167
    .line 168
    sget-boolean p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchOpen:Z

    .line 169
    .line 170
    const/4 p2, 0x2

    .line 171
    if-nez p1, :cond_b

    .line 172
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 174
    .line 175
    .line 176
    move-result-wide v0

    .line 177
    sput-wide v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchDownTime:J

    .line 178
    .line 179
    sput-boolean v7, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchOpen:Z

    .line 180
    .line 181
    invoke-direct {p0, v4, v7}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPinch(II)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_a

    .line 186
    .line 187
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    return p0

    .line 192
    :cond_a
    invoke-direct {p0, v7}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pointerDownAction(I)I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-direct {p0, p1, p2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPinch(II)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_b

    .line 201
    .line 202
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    return p0

    .line 207
    :cond_b
    invoke-direct {p0, p2, p2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPinch(II)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_c

    .line 212
    .line 213
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    return p0

    .line 218
    :cond_c
    const-wide/16 p0, 0x12c

    .line 219
    .line 220
    invoke-virtual {v3, v5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    .line 222
    .line 223
    return v7
.end method

.method private final scroll(FF)Z
    .locals 8

    .line 1
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchOpen:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->flingGeneration:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    sput v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->flingGeneration:I

    .line 11
    .line 12
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    sget-object v2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    sget v3, Lb00;->a:I

    .line 20
    .line 21
    sget v3, Lb00;->c:I

    .line 22
    .line 23
    int-to-float v3, v3

    .line 24
    sget v4, Lb00;->d:I

    .line 25
    .line 26
    int-to-float v4, v4

    .line 27
    const/4 v5, 0x0

    .line 28
    cmpg-float v6, v3, v5

    .line 29
    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    cmpg-float v6, v4, v5

    .line 34
    .line 35
    if-nez v6, :cond_2

    .line 36
    .line 37
    :goto_0
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_2
    sget-boolean v6, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamOpen:Z

    .line 40
    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    const/high16 v6, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float v7, v3, v6

    .line 46
    .line 47
    div-float v6, v4, v6

    .line 48
    .line 49
    invoke-direct {p0, v7, v6}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->openStream(FF)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_3

    .line 54
    .line 55
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_3
    sget v6, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamX:F

    .line 61
    .line 62
    sub-float/2addr v6, p1

    .line 63
    invoke-direct {p0, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxX(F)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {v6, v5, p1}, Lgn;->i(FFF)F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    sget v3, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->streamY:F

    .line 72
    .line 73
    sub-float/2addr v3, p2

    .line 74
    invoke-direct {p0, v4}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxY(F)F

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-static {v3, v5, p2}, Lgn;->i(FFF)F

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-direct {p0, p1, p2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->moveTo(FF)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    return p0

    .line 93
    :cond_4
    const-wide/16 p0, 0x32

    .line 94
    .line 95
    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    .line 97
    .line 98
    return v1
.end method

.method private final send(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sput-wide v0, Ls8;->i:J

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 16
    .line 17
    .line 18
    return p0
.end method

.method private final sendPinch(II)Z
    .locals 17

    .line 1
    move/from16 v6, p2

    .line 2
    .line 3
    sget v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchSpan:F

    .line 4
    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    sget-boolean v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchVertical:Z

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-array v5, v2, [F

    .line 16
    .line 17
    sget v7, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFocusX:F

    .line 18
    .line 19
    aput v7, v5, v3

    .line 20
    .line 21
    aput v7, v5, v4

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-array v5, v2, [F

    .line 25
    .line 26
    sget v7, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFocusX:F

    .line 27
    .line 28
    sub-float v8, v7, v0

    .line 29
    .line 30
    aput v8, v5, v3

    .line 31
    .line 32
    add-float/2addr v7, v0

    .line 33
    aput v7, v5, v4

    .line 34
    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-array v1, v2, [F

    .line 38
    .line 39
    sget v2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFocusY:F

    .line 40
    .line 41
    sub-float v7, v2, v0

    .line 42
    .line 43
    aput v7, v1, v3

    .line 44
    .line 45
    add-float/2addr v2, v0

    .line 46
    aput v2, v1, v4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-array v1, v2, [F

    .line 50
    .line 51
    sget v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchFocusY:F

    .line 52
    .line 53
    aput v0, v1, v3

    .line 54
    .line 55
    aput v0, v1, v4

    .line 56
    .line 57
    :goto_1
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 58
    .line 59
    move v0, v3

    .line 60
    :goto_2
    if-ge v0, v6, :cond_2

    .line 61
    .line 62
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 65
    .line 66
    .line 67
    iput v0, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 68
    .line 69
    iput v4, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 70
    .line 71
    aput-object v2, v7, v0

    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 77
    .line 78
    :goto_3
    if-ge v3, v6, :cond_3

    .line 79
    .line 80
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 81
    .line 82
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 83
    .line 84
    .line 85
    aget v2, v5, v3

    .line 86
    .line 87
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 88
    .line 89
    aget v2, v1, v3

    .line 90
    .line 91
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 92
    .line 93
    const/high16 v2, 0x3f800000    # 1.0f

    .line 94
    .line 95
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 96
    .line 97
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 98
    .line 99
    aput-object v0, v8, v3

    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    sget-wide v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->pinchDownTime:J

    .line 105
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    const/16 v15, 0x1002

    .line 111
    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v10, 0x0

    .line 116
    const/high16 v11, 0x3f800000    # 1.0f

    .line 117
    .line 118
    const/high16 v12, 0x3f800000    # 1.0f

    .line 119
    .line 120
    const/4 v13, 0x0

    .line 121
    const/4 v14, 0x0

    .line 122
    move/from16 v5, p1

    .line 123
    .line 124
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-object/from16 v1, p0

    .line 132
    .line 133
    invoke-direct {v1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->send(Landroid/view/MotionEvent;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    return v0
.end method

.method private final sendPoint(IFFJJ)Z
    .locals 18

    .line 1
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 11
    .line 12
    filled-new-array {v0}, [Landroid/view/MotionEvent$PointerProperties;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 19
    .line 20
    .line 21
    move/from16 v1, p2

    .line 22
    .line 23
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 24
    .line 25
    move/from16 v1, p3

    .line 26
    .line 27
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 28
    .line 29
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 32
    .line 33
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 34
    .line 35
    filled-new-array {v0}, [Landroid/view/MotionEvent$PointerCoords;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const/16 v16, 0x1002

    .line 40
    .line 41
    const/16 v17, 0x0

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const/high16 v12, 0x3f800000    # 1.0f

    .line 47
    .line 48
    const/high16 v13, 0x3f800000    # 1.0f

    .line 49
    .line 50
    const/4 v14, 0x0

    .line 51
    const/4 v15, 0x0

    .line 52
    move/from16 v6, p1

    .line 53
    .line 54
    move-wide/from16 v2, p4

    .line 55
    .line 56
    move-wide/from16 v4, p6

    .line 57
    .line 58
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-object/from16 v1, p0

    .line 66
    .line 67
    invoke-direct {v1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->send(Landroid/view/MotionEvent;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    return v0
.end method

.method private final tap(FF)Z
    .locals 10

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizeStream()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->finalizePinch()V

    .line 5
    .line 6
    .line 7
    sget v0, Lb00;->a:I

    .line 8
    .line 9
    sget v0, Lb00;->c:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxX(F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v1, v0}, Lgn;->i(FFF)F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sget p1, Lb00;->d:I

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    invoke-direct {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxY(F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p2, v1, p1}, Lgn;->i(FFF)F

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    const/4 v3, 0x0

    .line 37
    move-wide v8, v6

    .line 38
    move-object v2, p0

    .line 39
    invoke-direct/range {v2 .. v9}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPoint(IFFJJ)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_0

    .line 44
    .line 45
    invoke-direct {v2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_0
    const/4 v3, 0x1

    .line 51
    move-wide v8, v6

    .line 52
    invoke-direct/range {v2 .. v9}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendPoint(IFFJJ)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    invoke-direct {v2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->onSendFailed()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_1
    const/4 p0, 0x1

    .line 64
    return p0
.end method


# virtual methods
.method public final cancelForwardedStream()V
    .locals 18

    .line 1
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardStreamOpen:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardStreamOpen:Z

    .line 8
    .line 9
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardPointerIds:[I

    .line 10
    .line 11
    array-length v7, v1

    .line 12
    if-nez v7, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    new-array v8, v7, [Landroid/view/MotionEvent$PointerProperties;

    .line 16
    .line 17
    :goto_1
    if-ge v0, v7, :cond_2

    .line 18
    .line 19
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardPointerIds:[I

    .line 25
    .line 26
    aget v2, v2, v0

    .line 27
    .line 28
    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 32
    .line 33
    aput-object v1, v8, v0

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    sget-wide v2, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardAnchorUptime:J

    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    sget-object v9, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 45
    .line 46
    const/16 v16, 0x1002

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    const/4 v6, 0x3

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/high16 v12, 0x3f800000    # 1.0f

    .line 54
    .line 55
    const/high16 v13, 0x3f800000    # 1.0f

    .line 56
    .line 57
    const/4 v14, 0x0

    .line 58
    const/4 v15, 0x0

    .line 59
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-object/from16 v1, p0

    .line 67
    .line 68
    invoke-direct {v1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->send(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final forward(Landroid/view/MotionEvent;FFF)Z
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget v2, Lb00;->a:I

    .line 9
    .line 10
    sget v2, Lb00;->c:I

    .line 11
    .line 12
    int-to-float v2, v2

    .line 13
    sget v3, Lb00;->d:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    const/4 v4, 0x0

    .line 17
    cmpg-float v5, v2, v4

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    cmpg-float v5, v3, v4

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    cmpg-float v5, p2, v4

    .line 29
    .line 30
    if-gtz v5, :cond_2

    .line 31
    .line 32
    :goto_0
    return v6

    .line 33
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    sget-wide v11, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardCarDownTime:J

    .line 48
    .line 49
    cmp-long v5, v9, v11

    .line 50
    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v9

    .line 57
    sput-wide v9, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardCarDownTime:J

    .line 58
    .line 59
    sput-wide v7, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardAnchorUptime:J

    .line 60
    .line 61
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/4 v9, 0x1

    .line 66
    if-eq v5, v9, :cond_5

    .line 67
    .line 68
    const/4 v10, 0x3

    .line 69
    if-eq v5, v10, :cond_5

    .line 70
    .line 71
    move v5, v9

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move v5, v6

    .line 74
    :goto_1
    sput-boolean v5, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardStreamOpen:Z

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    sub-float v5, v5, p3

    .line 81
    .line 82
    div-float v5, v5, p2

    .line 83
    .line 84
    invoke-direct {v0, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxX(F)F

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    invoke-static {v5, v4, v10}, Lgn;->i(FFF)F

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    sput v5, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardLastX:F

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    sub-float v5, v5, p4

    .line 99
    .line 100
    div-float v5, v5, p2

    .line 101
    .line 102
    invoke-direct {v0, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxY(F)F

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    invoke-static {v5, v4, v10}, Lgn;->i(FFF)F

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    sput v5, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardLastY:F

    .line 111
    .line 112
    sget-wide v10, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardAnchorUptime:J

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v12

    .line 118
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v14

    .line 122
    sub-long/2addr v12, v14

    .line 123
    add-long/2addr v12, v10

    .line 124
    sget-wide v10, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardAnchorUptime:J

    .line 125
    .line 126
    cmp-long v5, v10, v7

    .line 127
    .line 128
    if-gtz v5, :cond_f

    .line 129
    .line 130
    cmp-long v5, v12, v10

    .line 131
    .line 132
    if-gez v5, :cond_6

    .line 133
    .line 134
    move-wide/from16 v16, v10

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    cmp-long v5, v12, v7

    .line 138
    .line 139
    if-lez v5, :cond_7

    .line 140
    .line 141
    move-wide/from16 v16, v7

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    move-wide/from16 v16, v12

    .line 145
    .line 146
    :goto_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    new-array v7, v5, [Landroid/view/MotionEvent$PointerProperties;

    .line 151
    .line 152
    move v8, v6

    .line 153
    :goto_3
    if-ge v8, v5, :cond_8

    .line 154
    .line 155
    new-instance v10, Landroid/view/MotionEvent$PointerProperties;

    .line 156
    .line 157
    invoke-direct {v10}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v8, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 161
    .line 162
    .line 163
    iput v9, v10, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 164
    .line 165
    aput-object v10, v7, v8

    .line 166
    .line 167
    add-int/lit8 v8, v8, 0x1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    new-array v8, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 171
    .line 172
    move v9, v6

    .line 173
    :goto_4
    if-ge v9, v5, :cond_9

    .line 174
    .line 175
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    .line 176
    .line 177
    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 181
    .line 182
    .line 183
    iget v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 184
    .line 185
    sub-float v11, v11, p3

    .line 186
    .line 187
    div-float v11, v11, p2

    .line 188
    .line 189
    sget-object v12, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 190
    .line 191
    invoke-direct {v12, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxX(F)F

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    invoke-static {v11, v4, v13}, Lgn;->i(FFF)F

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 200
    .line 201
    iget v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 202
    .line 203
    sub-float v11, v11, p4

    .line 204
    .line 205
    div-float v11, v11, p2

    .line 206
    .line 207
    invoke-direct {v12, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->maxY(F)F

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    invoke-static {v11, v4, v12}, Lgn;->i(FFF)F

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 216
    .line 217
    const/high16 v11, 0x3f800000    # 1.0f

    .line 218
    .line 219
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 220
    .line 221
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 222
    .line 223
    aput-object v10, v8, v9

    .line 224
    .line 225
    add-int/lit8 v9, v9, 0x1

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_9
    sget-wide v14, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardAnchorUptime:J

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 231
    .line 232
    .line 233
    move-result v18

    .line 234
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 235
    .line 236
    .line 237
    move-result v22

    .line 238
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 239
    .line 240
    .line 241
    move-result v23

    .line 242
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 243
    .line 244
    .line 245
    move-result v27

    .line 246
    const/16 v28, 0x1002

    .line 247
    .line 248
    const/16 v29, 0x0

    .line 249
    .line 250
    const/high16 v24, 0x3f800000    # 1.0f

    .line 251
    .line 252
    const/high16 v25, 0x3f800000    # 1.0f

    .line 253
    .line 254
    const/16 v26, 0x0

    .line 255
    .line 256
    move/from16 v19, v5

    .line 257
    .line 258
    move-object/from16 v20, v7

    .line 259
    .line 260
    move-object/from16 v21, v8

    .line 261
    .line 262
    invoke-static/range {v14 .. v29}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    move/from16 v3, v19

    .line 267
    .line 268
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    const/4 v5, 0x6

    .line 273
    if-ne v4, v5, :cond_a

    .line 274
    .line 275
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    goto :goto_5

    .line 280
    :cond_a
    const/4 v1, -0x1

    .line 281
    :goto_5
    invoke-static {v6, v3}, Lgn;->I(II)Lnj;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_c

    .line 299
    .line 300
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    move-object v7, v5

    .line 305
    check-cast v7, Ljava/lang/Number;

    .line 306
    .line 307
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    if-eq v7, v1, :cond_b

    .line 312
    .line 313
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    new-array v3, v1, [I

    .line 322
    .line 323
    move v5, v6

    .line 324
    :goto_7
    if-ge v5, v1, :cond_d

    .line 325
    .line 326
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    check-cast v7, Ljava/lang/Number;

    .line 331
    .line 332
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    aget-object v7, v20, v7

    .line 337
    .line 338
    iget v7, v7, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 339
    .line 340
    aput v7, v3, v5

    .line 341
    .line 342
    add-int/lit8 v5, v5, 0x1

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_d
    sput-object v3, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardPointerIds:[I

    .line 346
    .line 347
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    new-array v3, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 352
    .line 353
    :goto_8
    if-ge v6, v1, :cond_e

    .line 354
    .line 355
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Ljava/lang/Number;

    .line 360
    .line 361
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    aget-object v5, v21, v5

    .line 366
    .line 367
    aput-object v5, v3, v6

    .line 368
    .line 369
    add-int/lit8 v6, v6, 0x1

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_e
    sput-object v3, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forwardPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-direct {v0, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->send(Landroid/view/MotionEvent;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    return v0

    .line 382
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 383
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v2, "Cannot coerce value to an empty range: maximum "

    .line 387
    .line 388
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v2, " is less than minimum "

    .line 395
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const/16 v2, 0x2e

    .line 403
    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw v0
.end method

.method public final handleFling(Landroid/content/SharedPreferences;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->isAvailable(Landroid/content/SharedPreferences;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->releaseAndDecline()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-direct {p0, p2, p3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->fling(FF)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final handleScale(Landroid/content/SharedPreferences;FFF)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->isAvailable(Landroid/content/SharedPreferences;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->releaseAndDecline()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->scale(FFF)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final handleScroll(Landroid/content/SharedPreferences;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->isAvailable(Landroid/content/SharedPreferences;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->releaseAndDecline()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-direct {p0, p2, p3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->scroll(FF)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final handleTap(Landroid/content/SharedPreferences;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->isAvailable(Landroid/content/SharedPreferences;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->releaseAndDecline()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-direct {p0, p2, p3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->tap(FF)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isAvailable(Landroid/content/SharedPreferences;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "root_touch_injection"

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getTouchInjectionSupported()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    return v0
.end method

.method public final sendGlobalKey(I)Z
    .locals 1

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getTouchInjectionSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->injectKeyCode(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    sput-wide p0, Ls8;->i:J

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method
