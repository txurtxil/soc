.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Lgt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lgt;"
    }
.end annotation


# instance fields
.field public final l:Len;

.field public final m:Landroid/content/res/ColorStateList;

.field public final n:Lz00;

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lc9;

    invoke-direct {v0, p0}, Lc9;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    const/4 v0, 0x5

    .line 138
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    .line 139
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc9;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lc9;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    .line 11
    .line 12
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v1, Luv;->o:[I

    .line 18
    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-static {p1, v1, v2}, Lqj;->j(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    :cond_0
    const/4 v2, 0x6

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    const v3, 0x7f1103e6

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2, v2, v3}, Lz00;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Ly00;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Ly00;->a()Lz00;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Lz00;

    .line 56
    .line 57
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    const/4 p2, -0x1

    .line 64
    invoke-virtual {v1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:Lz00;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    if-nez p2, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance v2, Len;

    .line 74
    .line 75
    invoke-direct {v2, p2}, Len;-><init>(Lz00;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Len;

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Len;->f(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:Landroid/content/res/ColorStateList;

    .line 84
    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Len;

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Len;->h(Landroid/content/res/ColorStateList;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    new-instance p2, Landroid/util/TypedValue;

    .line 94
    .line 95
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const v3, 0x1010031

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Len;

    .line 109
    .line 110
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 111
    .line 112
    invoke-virtual {p0, p2}, Len;->setTint(I)V

    .line 113
    .line 114
    .line 115
    :goto_0
    const/4 p0, 0x2

    .line 116
    const/high16 p2, -0x40800000    # -1.0f

    .line 117
    .line 118
    invoke-virtual {v1, p0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 119
    .line 120
    .line 121
    const/4 p0, 0x4

    .line 122
    invoke-virtual {v1, p0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 133
    .line 134
    .line 135
    return-void
.end method
