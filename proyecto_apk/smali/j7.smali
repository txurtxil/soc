.class public final Lj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p0, :cond_5

    .line 6
    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lp7;

    .line 13
    .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    iget-object v2, p0, Lp7;->i:Lo7;

    .line 17
    .line 18
    iget-object v3, p0, Lp7;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    invoke-virtual {v2}, Lo7;->getAnimationMode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x2

    .line 46
    if-ne v2, v1, :cond_2

    .line 47
    .line 48
    new-array v2, v3, [F

    .line 49
    .line 50
    fill-array-data v2, :array_0

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Lp7;->d:Landroid/animation/TimeInterpolator;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Li7;

    .line 63
    .line 64
    invoke-direct {v3, p0, v0, v0}, Li7;-><init>(Lp7;IB)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    .line 69
    .line 70
    iget v3, p0, Lp7;->b:I

    .line 71
    .line 72
    int-to-long v3, v3

    .line 73
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    .line 76
    new-instance v3, Lh7;

    .line 77
    .line 78
    invoke-direct {v3, p0, p1, v0}, Lh7;-><init>(Lp7;II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :cond_2
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lp7;->i:Lo7;

    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    instance-of v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    .line 105
    if-eqz v6, :cond_3

    .line 106
    .line 107
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    .line 109
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 110
    .line 111
    add-int/2addr v5, v4

    .line 112
    :cond_3
    filled-new-array {v0, v5}, [I

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lp7;->e:Landroid/animation/TimeInterpolator;

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    .line 123
    .line 124
    iget v4, p0, Lp7;->c:I

    .line 125
    .line 126
    int-to-long v4, v4

    .line 127
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    .line 130
    new-instance v4, Lh7;

    .line 131
    .line 132
    invoke-direct {v4, p0, p1, v3}, Lh7;-><init>(Lp7;II)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Li7;

    .line 139
    .line 140
    const/4 v3, 0x3

    .line 141
    invoke-direct {p1, p0, v3, v0}, Li7;-><init>(Lp7;IB)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 148
    .line 149
    .line 150
    return v1

    .line 151
    :cond_4
    invoke-virtual {p0}, Lp7;->a()V

    .line 152
    .line 153
    .line 154
    return v1

    .line 155
    :cond_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Lp7;

    .line 158
    .line 159
    iget-object p1, p0, Lp7;->i:Lo7;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-nez v2, :cond_6

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lp7;->g:Landroid/view/ViewGroup;

    .line 171
    .line 172
    iput-boolean v1, p1, Lo7;->k:Z

    .line 173
    .line 174
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    iput-boolean v0, p1, Lo7;->k:Z

    .line 178
    .line 179
    invoke-virtual {p0}, Lp7;->d()V

    .line 180
    .line 181
    .line 182
    const/4 v0, 0x4

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    :cond_6
    sget-object v0, Lu70;->a:Ljava/util/WeakHashMap;

    .line 187
    .line 188
    invoke-static {p1}, Lg70;->c(Landroid/view/View;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    invoke-virtual {p0}, Lp7;->c()V

    .line 195
    .line 196
    .line 197
    return v1

    .line 198
    :cond_7
    iput-boolean v1, p0, Lp7;->p:Z

    .line 199
    .line 200
    return v1

    .line 201
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
