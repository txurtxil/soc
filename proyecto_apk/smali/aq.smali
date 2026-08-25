.class public final Laq;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lidv/lzn/screenonauto/MirrorAccessibilityService;


# direct methods
.method public constructor <init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laq;->a:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iget-object p0, p0, Laq;->a:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 6
    .line 7
    iput-object p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->f:F

    .line 14
    .line 15
    iput v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->g:F

    .line 16
    .line 17
    iput-boolean p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->h:Z

    .line 18
    .line 19
    return-void
.end method

.method public final onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Laq;->a:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->h:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->h:Z

    .line 14
    .line 15
    iget p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->i:F

    .line 16
    .line 17
    iget v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->j:F

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a(FF)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->f:F

    .line 24
    .line 25
    iget v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->g:F

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    cmpg-float v2, p1, v1

    .line 29
    .line 30
    const/16 v3, 0x1a

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    cmpg-float v2, v0, v1

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    if-lt p1, v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iput v1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->f:F

    .line 47
    .line 48
    iput v1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->g:F

    .line 49
    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    if-lt v1, v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, p1, v0}, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b(FF)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method
