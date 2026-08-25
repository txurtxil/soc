.class public final synthetic Lzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(FLidv/lzn/screenonauto/MirrorAccessibilityService;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzp;->a:F

    iput-object p2, p0, Lzp;->b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    iput p3, p0, Lzp;->c:F

    iput p4, p0, Lzp;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 2
    .line 3
    sget v0, Lb00;->c:I

    .line 4
    .line 5
    int-to-float v0, v0

    .line 6
    sget v1, Lb00;->d:I

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    cmpg-float v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    cmpg-float v0, v1, v2

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget v0, p0, Lzp;->a:F

    .line 21
    .line 22
    cmpg-float v1, v0, v2

    .line 23
    .line 24
    if-gtz v1, :cond_2

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_2
    iget-object v1, p0, Lzp;->b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 28
    .line 29
    iget-boolean v2, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->m:Z

    .line 30
    .line 31
    iget-object v3, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->r:Lxp;

    .line 32
    .line 33
    iget-object v4, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    iput-boolean v2, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->m:Z

    .line 39
    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    iput v2, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->n:F

    .line 43
    .line 44
    :cond_3
    iget v2, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->n:F

    .line 45
    .line 46
    mul-float/2addr v2, v0

    .line 47
    iput v2, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->n:F

    .line 48
    .line 49
    iget v0, p0, Lzp;->c:F

    .line 50
    .line 51
    iput v0, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->o:F

    .line 52
    .line 53
    iget p0, p0, Lzp;->d:F

    .line 54
    .line 55
    iput p0, v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->q:F

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0x64

    .line 61
    .line 62
    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
