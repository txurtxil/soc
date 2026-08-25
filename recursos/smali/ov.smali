.class public final Lov;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;


# direct methods
.method public constructor <init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lov;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 5
    .line 6
    iget-object p0, p0, Lov;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

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
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

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
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    sub-float/2addr v4, p0

    .line 56
    div-float/2addr v4, v0

    .line 57
    invoke-static {v4, v1, v3}, Lgn;->i(FFF)F

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    sget-object v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget-object v1, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v3, Lzp;

    .line 72
    .line 73
    invoke-direct {v3, p1, v0, v2, p0}, Lzp;-><init>(FLidv/lzn/screenonauto/MirrorAccessibilityService;FF)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    :cond_1
    const/4 p0, 0x1

    .line 80
    return p0
.end method
