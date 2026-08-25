.class public final Lnv;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;


# direct methods
.method public constructor <init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p1, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 5
    .line 6
    iget-object p0, p0, Lnv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 7
    .line 8
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k()Lq50;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    iget-object p0, p0, Lq50;->a:Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    sget-object p2, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    div-float/2addr p3, p0

    .line 27
    div-float/2addr p4, p0

    .line 28
    iget-object p0, p2, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v0, Lyp;

    .line 31
    .line 32
    invoke-direct {v0, p2, p3, p4, p1}, Lyp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;FFI)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 p0, 0x1

    .line 39
    return p0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p1, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 5
    .line 6
    iget-object p0, p0, Lnv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 7
    .line 8
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k()Lq50;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lq50;->a:Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    sget-object p1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    div-float/2addr p3, p0

    .line 27
    div-float/2addr p4, p0

    .line 28
    iget-object p0, p1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance p2, Lyp;

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-direct {p2, p1, p3, p4, v0}, Lyp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;FFI)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 5
    .line 6
    iget-object p0, p0, Lnv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 7
    .line 8
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k()Lq50;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v0, p0, Lq50;->a:Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lq50;->b:Ljava/lang/Float;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object p0, p0, Lq50;->c:Ljava/lang/Float;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    sget v2, Lb00;->c:I

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    sget v3, Lb00;->d:I

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    sub-float/2addr v4, v1

    .line 45
    div-float/2addr v4, v0

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v4, v1, v2}, Lgn;->i(FFF)F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    sub-float/2addr p1, p0

    .line 56
    div-float/2addr p1, v0

    .line 57
    invoke-static {p1, v1, v3}, Lgn;->i(FFF)F

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    sget-object p1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object v1, p1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 67
    .line 68
    new-instance v3, Lyp;

    .line 69
    .line 70
    invoke-direct {v3, p1, v2, p0, v0}, Lyp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;FFI)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    return v0
.end method
