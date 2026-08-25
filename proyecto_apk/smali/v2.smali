.class public abstract Lv2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Lue;

.field public static final c:Lue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv2;->a:Landroid/view/animation/LinearInterpolator;

    .line 7
    .line 8
    new-instance v0, Lue;

    .line 9
    .line 10
    sget-object v1, Lue;->d:[F

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lue;-><init>([F)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lv2;->b:Lue;

    .line 16
    .line 17
    new-instance v0, Lue;

    .line 18
    .line 19
    sget-object v1, Lue;->c:[F

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lue;-><init>([F)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lue;

    .line 25
    .line 26
    sget-object v1, Lue;->e:[F

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lue;-><init>([F)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lv2;->c:Lue;

    .line 32
    .line 33
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static a(FFFFF)F
    .locals 1

    .line 1
    cmpg-float v0, p4, p2

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    cmpl-float v0, p4, p3

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    return p1

    .line 11
    :cond_1
    sub-float/2addr p4, p2

    .line 12
    sub-float/2addr p3, p2

    .line 13
    div-float/2addr p4, p3

    .line 14
    sub-float/2addr p1, p0

    .line 15
    mul-float/2addr p1, p4

    .line 16
    add-float/2addr p1, p0

    .line 17
    return p1
.end method
