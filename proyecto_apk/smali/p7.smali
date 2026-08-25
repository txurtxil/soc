.class public abstract Lp7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:Lue;

.field public static final t:Landroid/view/animation/LinearInterpolator;

.field public static final u:Lue;

.field public static final v:Landroid/os/Handler;

.field public static final w:[I

.field public static final x:Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/animation/TimeInterpolator;

.field public final e:Landroid/animation/TimeInterpolator;

.field public final f:Landroid/animation/TimeInterpolator;

.field public final g:Landroid/view/ViewGroup;

.field public final h:Landroid/content/Context;

.field public final i:Lo7;

.field public final j:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public final q:Landroid/view/accessibility/AccessibilityManager;

.field public final r:Lm7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lv2;->b:Lue;

    .line 2
    .line 3
    sput-object v0, Lp7;->s:Lue;

    .line 4
    .line 5
    sget-object v0, Lv2;->a:Landroid/view/animation/LinearInterpolator;

    .line 6
    .line 7
    sput-object v0, Lp7;->t:Landroid/view/animation/LinearInterpolator;

    .line 8
    .line 9
    sget-object v0, Lv2;->c:Lue;

    .line 10
    .line 11
    sput-object v0, Lp7;->u:Lue;

    .line 12
    .line 13
    const v0, 0x7f0403d1

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lp7;->w:[I

    .line 21
    .line 22
    const-class v0, Lp7;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lp7;->x:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lj7;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lp7;->v:Landroid/os/Handler;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm7;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lm7;-><init>(Lp7;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp7;->r:Lm7;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p3, :cond_7

    .line 13
    .line 14
    if-eqz p4, :cond_6

    .line 15
    .line 16
    iput-object p2, p0, Lp7;->g:Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object p4, p0, Lp7;->j:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 19
    .line 20
    iput-object p1, p0, Lp7;->h:Landroid/content/Context;

    .line 21
    .line 22
    sget-object p4, Ls8;->f:[I

    .line 23
    .line 24
    const-string v0, "Theme.AppCompat"

    .line 25
    .line 26
    invoke-static {p1, p4, v0}, Ls8;->n(Landroid/content/Context;[ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    sget-object v0, Lp7;->w:[I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    .line 47
    .line 48
    if-eq v3, v2, :cond_0

    .line 49
    .line 50
    const v0, 0x7f0c005a

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const v0, 0x7f0c0024

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p4, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lo7;

    .line 62
    .line 63
    iput-object p2, p0, Lp7;->i:Lo7;

    .line 64
    .line 65
    invoke-static {p2, p0}, Lo7;->a(Lo7;Lp7;)V

    .line 66
    .line 67
    .line 68
    instance-of p4, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 69
    .line 70
    if-eqz p4, :cond_2

    .line 71
    .line 72
    move-object p4, p3

    .line 73
    check-cast p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 74
    .line 75
    invoke-virtual {p2}, Lo7;->getActionTextColorAlpha()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/high16 v2, 0x3f800000    # 1.0f

    .line 80
    .line 81
    cmpl-float v2, v0, v2

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    iget-object v2, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const v3, 0x7f040116

    .line 92
    .line 93
    .line 94
    invoke-static {p4, v3}, Ls8;->p(Landroid/view/View;I)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-static {v3, v2, v0}, Ls8;->w(IIF)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object v2, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 103
    .line 104
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {p2}, Lo7;->getMaxInlineActionWidth()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p4, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    sget-object p3, Lu70;->a:Ljava/util/WeakHashMap;

    .line 118
    .line 119
    const/4 p3, 0x1

    .line 120
    invoke-static {p2, p3}, Lg70;->f(Landroid/view/View;I)V

    .line 121
    .line 122
    .line 123
    invoke-static {p2, p3}, Le70;->s(Landroid/view/View;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 127
    .line 128
    .line 129
    new-instance p3, Lc9;

    .line 130
    .line 131
    const/4 p4, 0x6

    .line 132
    invoke-direct {p3, p4, p0}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p2, p3}, Lj70;->u(Landroid/view/View;Lwr;)V

    .line 136
    .line 137
    .line 138
    new-instance p3, Ll7;

    .line 139
    .line 140
    invoke-direct {p3, v1, p0}, Ll7;-><init>(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p2, p3}, Lu70;->h(Landroid/view/View;Lw;)V

    .line 144
    .line 145
    .line 146
    const-string p2, "accessibility"

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 153
    .line 154
    iput-object p2, p0, Lp7;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 155
    .line 156
    const p2, 0x7f04031a

    .line 157
    .line 158
    .line 159
    invoke-static {p1, p2}, Lem;->t(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    const/16 p4, 0x10

    .line 164
    .line 165
    if-eqz p3, :cond_3

    .line 166
    .line 167
    iget v0, p3, Landroid/util/TypedValue;->type:I

    .line 168
    .line 169
    if-ne v0, p4, :cond_3

    .line 170
    .line 171
    iget p3, p3, Landroid/util/TypedValue;->data:I

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_3
    const/16 p3, 0xfa

    .line 175
    .line 176
    :goto_1
    iput p3, p0, Lp7;->c:I

    .line 177
    .line 178
    invoke-static {p1, p2}, Lem;->t(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    if-eqz p2, :cond_4

    .line 183
    .line 184
    iget p3, p2, Landroid/util/TypedValue;->type:I

    .line 185
    .line 186
    if-ne p3, p4, :cond_4

    .line 187
    .line 188
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_4
    const/16 p2, 0x96

    .line 192
    .line 193
    :goto_2
    iput p2, p0, Lp7;->a:I

    .line 194
    .line 195
    const p2, 0x7f04031d

    .line 196
    .line 197
    .line 198
    invoke-static {p1, p2}, Lem;->t(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    if-eqz p2, :cond_5

    .line 203
    .line 204
    iget p3, p2, Landroid/util/TypedValue;->type:I

    .line 205
    .line 206
    if-ne p3, p4, :cond_5

    .line 207
    .line 208
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_5
    const/16 p2, 0x4b

    .line 212
    .line 213
    :goto_3
    iput p2, p0, Lp7;->b:I

    .line 214
    .line 215
    sget-object p2, Lp7;->t:Landroid/view/animation/LinearInterpolator;

    .line 216
    .line 217
    invoke-static {p1, p2}, Lem;->v(Landroid/content/Context;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    iput-object p2, p0, Lp7;->d:Landroid/animation/TimeInterpolator;

    .line 222
    .line 223
    sget-object p2, Lp7;->u:Lue;

    .line 224
    .line 225
    invoke-static {p1, p2}, Lem;->v(Landroid/content/Context;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    iput-object p2, p0, Lp7;->f:Landroid/animation/TimeInterpolator;

    .line 230
    .line 231
    sget-object p2, Lp7;->s:Lue;

    .line 232
    .line 233
    invoke-static {p1, p2}, Lem;->v(Landroid/content/Context;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iput-object p1, p0, Lp7;->e:Landroid/animation/TimeInterpolator;

    .line 238
    .line 239
    return-void

    .line 240
    :cond_6
    const-string p0, "Transient bottom bar must have non-null callback"

    .line 241
    .line 242
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :cond_7
    const-string p0, "Transient bottom bar must have non-null content"

    .line 247
    .line 248
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-static {}, Lvp;->c()Lvp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lp7;->r:Lm7;

    .line 6
    .line 7
    iget-object v2, v0, Lvp;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    invoke-virtual {v0, v1}, Lvp;->d(Lm7;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lvp;->c:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v1, v0, Lvp;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ln20;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lvp;->h()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lp7;->i:Lo7;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    .line 44
    iget-object p0, p0, Lp7;->i:Lo7;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p0
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Lvp;->c()Lvp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lp7;->r:Lm7;

    .line 6
    .line 7
    iget-object v1, v0, Lvp;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {v0, p0}, Lvp;->d(Lm7;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, v0, Lvp;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ln20;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lvp;->g(Ln20;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lp7;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v0

    .line 22
    :goto_0
    iget-object v2, p0, Lp7;->i:Lo7;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance v0, Lk7;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, p0, v1}, Lk7;-><init>(Lp7;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Lp7;->b()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp7;->i:Lo7;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    sget-object v3, Lp7;->x:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string p0, "Unable to update margins because layout params are not MarginLayoutParams"

    .line 14
    .line 15
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v2, v0, Lo7;->j:Landroid/graphics/Rect;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const-string p0, "Unable to update margins because original view margins are not set"

    .line 24
    .line 25
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget v2, p0, Lp7;->k:I

    .line 37
    .line 38
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    .line 40
    iget-object v3, v0, Lo7;->j:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    add-int/2addr v4, v2

    .line 45
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    iget v5, p0, Lp7;->l:I

    .line 48
    .line 49
    add-int/2addr v2, v5

    .line 50
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    iget v6, p0, Lp7;->m:I

    .line 53
    .line 54
    add-int/2addr v5, v6

    .line 55
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 58
    .line 59
    if-ne v6, v4, :cond_4

    .line 60
    .line 61
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 62
    .line 63
    if-ne v6, v2, :cond_4

    .line 64
    .line 65
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 66
    .line 67
    if-ne v6, v5, :cond_4

    .line 68
    .line 69
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 70
    .line 71
    if-eq v6, v3, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v6, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    :goto_0
    const/4 v6, 0x1

    .line 77
    :goto_1
    if-eqz v6, :cond_5

    .line 78
    .line 79
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    .line 81
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 82
    .line 83
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 84
    .line 85
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 88
    .line 89
    .line 90
    :cond_5
    if-nez v6, :cond_6

    .line 91
    .line 92
    iget v1, p0, Lp7;->o:I

    .line 93
    .line 94
    iget v2, p0, Lp7;->n:I

    .line 95
    .line 96
    if-eq v1, v2, :cond_7

    .line 97
    .line 98
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v2, 0x1d

    .line 101
    .line 102
    if-lt v1, v2, :cond_7

    .line 103
    .line 104
    iget p0, p0, Lp7;->n:I

    .line 105
    .line 106
    if-lez p0, :cond_7

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    :cond_7
    :goto_2
    return-void
.end method
