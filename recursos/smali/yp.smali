.class public final synthetic Lyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;FFI)V
    .locals 0

    .line 1
    iput p4, p0, Lyp;->a:I

    iput-object p1, p0, Lyp;->b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    iput p2, p0, Lyp;->c:F

    iput p3, p0, Lyp;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lyp;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lyp;->b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 9
    .line 10
    iget v3, p0, Lyp;->c:F

    .line 11
    .line 12
    iget p0, p0, Lyp;->d:F

    .line 13
    .line 14
    iget-boolean v4, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->m:Z

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v5, 0x1a

    .line 22
    .line 23
    if-lt v4, v5, :cond_2

    .line 24
    .line 25
    iget-object v1, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 26
    .line 27
    iget-object v2, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->l:Lxp;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v4, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget v4, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->f:F

    .line 37
    .line 38
    add-float/2addr v4, v3

    .line 39
    iput v4, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->f:F

    .line 40
    .line 41
    iget v3, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->g:F

    .line 42
    .line 43
    add-float/2addr v3, p0

    .line 44
    iput v3, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->g:F

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, v3, p0}, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b(FF)V

    .line 48
    .line 49
    .line 50
    :goto_0
    const-wide/16 v3, 0x32

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget v4, Lb00;->c:I

    .line 57
    .line 58
    int-to-float v4, v4

    .line 59
    sget v5, Lb00;->d:I

    .line 60
    .line 61
    int-to-float v5, v5

    .line 62
    cmpg-float v6, v4, v2

    .line 63
    .line 64
    if-nez v6, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    cmpg-float v2, v5, v2

    .line 68
    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    .line 73
    .line 74
    div-float/2addr v4, v2

    .line 75
    div-float/2addr v5, v2

    .line 76
    new-instance v7, Landroid/graphics/Path;

    .line 77
    .line 78
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 82
    .line 83
    .line 84
    sub-float/2addr v4, v3

    .line 85
    sub-float/2addr v5, p0

    .line 86
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    .line 88
    .line 89
    new-instance v6, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 90
    .line 91
    const-wide/16 v8, 0x0

    .line 92
    .line 93
    const-wide/16 v10, 0x50

    .line 94
    .line 95
    invoke-direct/range {v6 .. v11}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 96
    .line 97
    .line 98
    new-instance p0, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 99
    .line 100
    invoke-direct {p0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v6}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    sput-wide v2, Ls8;->i:J

    .line 119
    .line 120
    invoke-virtual {v0, p0, v1, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lyp;->b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 125
    .line 126
    iget v2, p0, Lyp;->c:F

    .line 127
    .line 128
    iget p0, p0, Lyp;->d:F

    .line 129
    .line 130
    sget-object v3, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 131
    .line 132
    new-instance v5, Landroid/graphics/Path;

    .line 133
    .line 134
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v2, p0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    .line 139
    .line 140
    const v3, 0x3dcccccd    # 0.1f

    .line 141
    .line 142
    .line 143
    add-float/2addr v2, v3

    .line 144
    invoke-virtual {v5, v2, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    .line 146
    .line 147
    new-instance v4, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 148
    .line 149
    const-wide/16 v6, 0x0

    .line 150
    .line 151
    const-wide/16 v8, 0x32

    .line 152
    .line 153
    invoke-direct/range {v4 .. v9}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 154
    .line 155
    .line 156
    new-instance p0, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 157
    .line 158
    invoke-direct {p0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v4}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v2

    .line 176
    sput-wide v2, Ls8;->i:J

    .line 177
    .line 178
    invoke-virtual {v0, p0, v1, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_1
    iget-object v0, p0, Lyp;->b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 183
    .line 184
    iget v1, p0, Lyp;->c:F

    .line 185
    .line 186
    iget p0, p0, Lyp;->d:F

    .line 187
    .line 188
    iget-boolean v3, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->m:Z

    .line 189
    .line 190
    if-eqz v3, :cond_5

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    iget-object v3, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 194
    .line 195
    iget-object v4, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->l:Lxp;

    .line 196
    .line 197
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    .line 199
    .line 200
    iput v2, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->f:F

    .line 201
    .line 202
    iput v2, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->g:F

    .line 203
    .line 204
    iget-boolean v2, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z

    .line 205
    .line 206
    if-eqz v2, :cond_6

    .line 207
    .line 208
    const/4 v2, 0x1

    .line 209
    iput-boolean v2, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->h:Z

    .line 210
    .line 211
    iput v1, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->i:F

    .line 212
    .line 213
    iput p0, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->j:F

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_6
    invoke-virtual {v0, v1, p0}, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a(FF)V

    .line 217
    .line 218
    .line 219
    :goto_2
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
