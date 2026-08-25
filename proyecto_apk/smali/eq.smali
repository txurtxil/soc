.class public final Leq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Ljava/nio/FloatBuffer;

.field public volatile B:I

.field public volatile C:Landroid/view/Surface;

.field public D:Landroid/view/Surface;

.field public E:I

.field public final a:Landroid/os/HandlerThread;

.field public final b:Landroid/os/Handler;

.field public c:Landroid/opengl/EGLDisplay;

.field public d:Landroid/opengl/EGLContext;

.field public e:Landroid/opengl/EGLConfig;

.field public f:Landroid/opengl/EGLSurface;

.field public g:Landroid/opengl/EGLSurface;

.field public h:Landroid/view/Surface;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Landroid/graphics/SurfaceTexture;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public final y:[F

.field public final z:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    .line 6
    const-string v1, "MirrorCompositor"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Leq;->a:Landroid/os/HandlerThread;

    .line 15
    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Leq;->b:Landroid/os/Handler;

    .line 26
    .line 27
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 33
    .line 34
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Leq;->d:Landroid/opengl/EGLContext;

    .line 40
    .line 41
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Leq;->f:Landroid/opengl/EGLSurface;

    .line 47
    .line 48
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 54
    .line 55
    const/16 v0, 0x10

    .line 56
    .line 57
    new-array v0, v0, [F

    .line 58
    .line 59
    iput-object v0, p0, Leq;->y:[F

    .line 60
    .line 61
    const/16 v0, 0x20

    .line 62
    .line 63
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Leq;->z:Ljava/nio/FloatBuffer;

    .line 83
    .line 84
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Leq;->A:Ljava/nio/FloatBuffer;

    .line 104
    .line 105
    return-void
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    new-array v1, p1, [I

    .line 17
    .line 18
    const v2, 0x8b81

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 23
    .line 24
    .line 25
    aget v1, v1, v3

    .line 26
    .line 27
    if-eq v1, p1, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "compile: shader failed: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "MirrorCompositor"

    .line 48
    .line 49
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/Surface;)V
    .locals 8

    .line 1
    iget-object v0, p0, Leq;->h:Landroid/view/Surface;

    .line 2
    .line 3
    const/16 v1, 0x3056

    .line 4
    .line 5
    const/16 v2, 0x3057

    .line 6
    .line 7
    const-string v3, "x"

    .line 8
    .line 9
    const-string v4, "MirrorCompositor"

    .line 10
    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 16
    .line 17
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 18
    .line 19
    invoke-static {v0, v5}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_0
    if-eqz p1, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Leq;->g(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, v1}, Leq;->g(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez p1, :cond_8

    .line 36
    .line 37
    if-lez v0, :cond_8

    .line 38
    .line 39
    iget v1, p0, Leq;->i:I

    .line 40
    .line 41
    if-ne p1, v1, :cond_1

    .line 42
    .line 43
    iget v2, p0, Leq;->j:I

    .line 44
    .line 45
    if-ne v0, v2, :cond_1

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_1
    iget v2, p0, Leq;->j:I

    .line 50
    .line 51
    const-string v5, "refreshOutSize: car surface "

    .line 52
    .line 53
    const-string v6, " -> "

    .line 54
    .line 55
    invoke-static {v5, v1, v3, v2, v6}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iput p1, p0, Leq;->i:I

    .line 76
    .line 77
    iput v0, p0, Leq;->j:I

    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 81
    .line 82
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 83
    .line 84
    invoke-static {v0, v5}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    iget-object v0, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 91
    .line 92
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 93
    .line 94
    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 95
    .line 96
    invoke-static {v0, v5, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 100
    .line 101
    iget-object v5, p0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 102
    .line 103
    invoke-static {v0, v5}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 104
    .line 105
    .line 106
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 112
    .line 113
    :cond_3
    iput-object p1, p0, Leq;->h:Landroid/view/Surface;

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    iput v0, p0, Leq;->i:I

    .line 117
    .line 118
    iput v0, p0, Leq;->j:I

    .line 119
    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_8

    .line 127
    .line 128
    iget-object v5, p0, Leq;->e:Landroid/opengl/EGLConfig;

    .line 129
    .line 130
    if-nez v5, :cond_4

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_4
    :try_start_0
    iget-object v6, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 135
    .line 136
    const/16 v7, 0x3038

    .line 137
    .line 138
    filled-new-array {v7}, [I

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-static {v6, v5, p1, v7, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 143
    .line 144
    .line 145
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v5

    .line 148
    const-string v6, "applyOutput: eglCreateWindowSurface failed"

    .line 149
    .line 150
    invoke-static {v4, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 154
    .line 155
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iput-object v5, p0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 159
    .line 160
    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 161
    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_7

    .line 167
    .line 168
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Leq;->h:Landroid/view/Surface;

    .line 170
    .line 171
    iget-object v0, p0, Leq;->D:Landroid/view/Surface;

    .line 172
    .line 173
    if-eq v0, p1, :cond_5

    .line 174
    .line 175
    iput-object p1, p0, Leq;->D:Landroid/view/Surface;

    .line 176
    .line 177
    const/16 v0, 0xa

    .line 178
    .line 179
    iput v0, p0, Leq;->E:I

    .line 180
    .line 181
    :cond_5
    iget v0, p0, Leq;->E:I

    .line 182
    .line 183
    if-gtz v0, :cond_6

    .line 184
    .line 185
    const-string p0, "applyOutput: giving up on the car surface after 10 attempts"

    .line 186
    .line 187
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 192
    .line 193
    iput v0, p0, Leq;->E:I

    .line 194
    .line 195
    new-instance v0, Ly5;

    .line 196
    .line 197
    const/4 v1, 0x3

    .line 198
    invoke-direct {v0, p0, v1, p1}, Ly5;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    const-wide/16 v1, 0x32

    .line 202
    .line 203
    iget-object p0, p0, Leq;->b:Landroid/os/Handler;

    .line 204
    .line 205
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_7
    iput v0, p0, Leq;->E:I

    .line 210
    .line 211
    invoke-virtual {p0, v2}, Leq;->g(I)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iput p1, p0, Leq;->i:I

    .line 216
    .line 217
    invoke-virtual {p0, v1}, Leq;->g(I)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iput p1, p0, Leq;->j:I

    .line 222
    .line 223
    iget v0, p0, Leq;->i:I

    .line 224
    .line 225
    iget v1, p0, Leq;->u:I

    .line 226
    .line 227
    iget p0, p0, Leq;->v:I

    .line 228
    .line 229
    const-string v2, "applyOutput: car surface "

    .line 230
    .line 231
    const-string v5, " box "

    .line 232
    .line 233
    invoke-static {v2, v0, v3, p1, v5}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    :cond_8
    :goto_1
    return-void
.end method

.method public final c(II)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x800

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    :cond_0
    new-instance v1, Landroid/graphics/SurfaceTexture;

    .line 11
    .line 12
    iget v2, p0, Leq;->o:I

    .line 13
    .line 14
    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ldq;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Ldq;-><init>(Leq;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Leq;->b:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Leq;->p:Landroid/graphics/SurfaceTexture;

    .line 31
    .line 32
    iput v0, p0, Leq;->B:I

    .line 33
    .line 34
    iput v0, p0, Leq;->s:I

    .line 35
    .line 36
    iput v0, p0, Leq;->t:I

    .line 37
    .line 38
    iput p1, p0, Leq;->q:I

    .line 39
    .line 40
    iput p2, p0, Leq;->r:I

    .line 41
    .line 42
    new-instance v2, Landroid/view/Surface;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Leq;->C:Landroid/view/Surface;

    .line 48
    .line 49
    const-string p0, "x"

    .line 50
    .line 51
    const-string v1, " in "

    .line 52
    .line 53
    const-string v2, "createInput: phone "

    .line 54
    .line 55
    invoke-static {v2, p1, p0, p2, v1}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, "\u00b2 buffer"

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "MirrorCompositor"

    .line 72
    .line 73
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ly5;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, v2, v0}, Ly5;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Leq;->b:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0x1f4

    .line 19
    .line 20
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const-string p0, "MirrorCompositor"

    .line 29
    .line 30
    const-string v0, "detachOutput: timed out, the VD swap may find the surface still taken"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Leq;->w:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Leq;->p:Landroid/graphics/SurfaceTexture;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_1
    iget-object v2, v0, Leq;->d:Landroid/opengl/EGLContext;

    .line 16
    .line 17
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 18
    .line 19
    invoke-static {v2, v3}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    :goto_0
    move v2, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v2, v0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 29
    .line 30
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 31
    .line 32
    invoke-static {v2, v4}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    iget-object v2, v0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object v2, v0, Leq;->f:Landroid/opengl/EGLSurface;

    .line 42
    .line 43
    :goto_1
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 44
    .line 45
    invoke-static {v2, v4}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    iget-object v4, v0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 53
    .line 54
    iget-object v5, v0, Leq;->d:Landroid/opengl/EGLContext;

    .line 55
    .line 56
    invoke-static {v4, v2, v2, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_2
    if-nez v2, :cond_5

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_5
    const/4 v2, 0x1

    .line 65
    iget-object v4, v0, Leq;->y:[F

    .line 66
    .line 67
    if-nez p1, :cond_6

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, v0, Leq;->x:Z

    .line 76
    .line 77
    :cond_6
    iget-boolean v1, v0, Leq;->x:Z

    .line 78
    .line 79
    if-nez v1, :cond_7

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_7
    iget-object v1, v0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 84
    .line 85
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 86
    .line 87
    invoke-static {v1, v5}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_b

    .line 92
    .line 93
    iget v1, v0, Leq;->i:I

    .line 94
    .line 95
    if-lez v1, :cond_b

    .line 96
    .line 97
    iget v1, v0, Leq;->j:I

    .line 98
    .line 99
    if-gtz v1, :cond_8

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_8
    iget v1, v0, Leq;->q:I

    .line 104
    .line 105
    if-lez v1, :cond_b

    .line 106
    .line 107
    iget v5, v0, Leq;->r:I

    .line 108
    .line 109
    if-lez v5, :cond_b

    .line 110
    .line 111
    iget v6, v0, Leq;->u:I

    .line 112
    .line 113
    if-lez v6, :cond_b

    .line 114
    .line 115
    iget v6, v0, Leq;->v:I

    .line 116
    .line 117
    if-gtz v6, :cond_9

    .line 118
    .line 119
    goto/16 :goto_3

    .line 120
    .line 121
    :cond_9
    iget v6, v0, Leq;->s:I

    .line 122
    .line 123
    if-lez v6, :cond_b

    .line 124
    .line 125
    iget v7, v0, Leq;->t:I

    .line 126
    .line 127
    if-gtz v7, :cond_a

    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_a
    int-to-float v6, v6

    .line 132
    int-to-float v1, v1

    .line 133
    div-float/2addr v6, v1

    .line 134
    int-to-float v1, v7

    .line 135
    int-to-float v5, v5

    .line 136
    div-float/2addr v1, v5

    .line 137
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iget v5, v0, Leq;->q:I

    .line 142
    .line 143
    int-to-float v5, v5

    .line 144
    mul-float/2addr v5, v1

    .line 145
    iget v6, v0, Leq;->s:I

    .line 146
    .line 147
    int-to-float v6, v6

    .line 148
    div-float/2addr v5, v6

    .line 149
    const/high16 v6, 0x3f800000    # 1.0f

    .line 150
    .line 151
    sub-float v5, v6, v5

    .line 152
    .line 153
    const/high16 v7, 0x40000000    # 2.0f

    .line 154
    .line 155
    div-float/2addr v5, v7

    .line 156
    iget v8, v0, Leq;->r:I

    .line 157
    .line 158
    int-to-float v8, v8

    .line 159
    mul-float/2addr v8, v1

    .line 160
    iget v1, v0, Leq;->t:I

    .line 161
    .line 162
    int-to-float v1, v1

    .line 163
    div-float/2addr v8, v1

    .line 164
    sub-float v1, v6, v8

    .line 165
    .line 166
    div-float/2addr v1, v7

    .line 167
    iget-object v8, v0, Leq;->A:Ljava/nio/FloatBuffer;

    .line 168
    .line 169
    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 170
    .line 171
    .line 172
    sub-float v9, v6, v5

    .line 173
    .line 174
    sub-float v10, v6, v1

    .line 175
    .line 176
    const/16 v11, 0x8

    .line 177
    .line 178
    new-array v12, v11, [F

    .line 179
    .line 180
    aput v5, v12, v3

    .line 181
    .line 182
    aput v1, v12, v2

    .line 183
    .line 184
    const/4 v13, 0x2

    .line 185
    aput v9, v12, v13

    .line 186
    .line 187
    const/4 v14, 0x3

    .line 188
    aput v1, v12, v14

    .line 189
    .line 190
    const/4 v1, 0x4

    .line 191
    aput v5, v12, v1

    .line 192
    .line 193
    const/4 v5, 0x5

    .line 194
    aput v10, v12, v5

    .line 195
    .line 196
    const/4 v15, 0x6

    .line 197
    aput v9, v12, v15

    .line 198
    .line 199
    const/4 v9, 0x7

    .line 200
    aput v10, v12, v9

    .line 201
    .line 202
    invoke-virtual {v8, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    .line 207
    .line 208
    iget v8, v0, Leq;->u:I

    .line 209
    .line 210
    int-to-float v8, v8

    .line 211
    iget v10, v0, Leq;->q:I

    .line 212
    .line 213
    int-to-float v10, v10

    .line 214
    div-float/2addr v8, v10

    .line 215
    iget v10, v0, Leq;->v:I

    .line 216
    .line 217
    int-to-float v10, v10

    .line 218
    iget v12, v0, Leq;->r:I

    .line 219
    .line 220
    int-to-float v12, v12

    .line 221
    div-float/2addr v10, v12

    .line 222
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    iget v10, v0, Leq;->q:I

    .line 227
    .line 228
    int-to-float v10, v10

    .line 229
    mul-float/2addr v10, v8

    .line 230
    iget v12, v0, Leq;->r:I

    .line 231
    .line 232
    int-to-float v12, v12

    .line 233
    mul-float/2addr v12, v8

    .line 234
    iget v8, v0, Leq;->u:I

    .line 235
    .line 236
    int-to-float v8, v8

    .line 237
    sub-float/2addr v8, v10

    .line 238
    div-float/2addr v8, v7

    .line 239
    move/from16 p1, v7

    .line 240
    .line 241
    iget v7, v0, Leq;->v:I

    .line 242
    .line 243
    int-to-float v7, v7

    .line 244
    sub-float/2addr v7, v12

    .line 245
    div-float v7, v7, p1

    .line 246
    .line 247
    mul-float v16, v8, p1

    .line 248
    .line 249
    move/from16 v17, v9

    .line 250
    .line 251
    iget v9, v0, Leq;->i:I

    .line 252
    .line 253
    int-to-float v9, v9

    .line 254
    div-float v16, v16, v9

    .line 255
    .line 256
    sub-float v16, v16, v6

    .line 257
    .line 258
    add-float/2addr v8, v10

    .line 259
    mul-float v8, v8, p1

    .line 260
    .line 261
    div-float/2addr v8, v9

    .line 262
    sub-float/2addr v8, v6

    .line 263
    mul-float v9, v7, p1

    .line 264
    .line 265
    iget v10, v0, Leq;->j:I

    .line 266
    .line 267
    int-to-float v10, v10

    .line 268
    div-float/2addr v9, v10

    .line 269
    sub-float v9, v6, v9

    .line 270
    .line 271
    add-float/2addr v7, v12

    .line 272
    mul-float v7, v7, p1

    .line 273
    .line 274
    div-float/2addr v7, v10

    .line 275
    sub-float v7, v6, v7

    .line 276
    .line 277
    iget-object v10, v0, Leq;->z:Ljava/nio/FloatBuffer;

    .line 278
    .line 279
    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 280
    .line 281
    .line 282
    new-array v11, v11, [F

    .line 283
    .line 284
    aput v16, v11, v3

    .line 285
    .line 286
    aput v7, v11, v2

    .line 287
    .line 288
    aput v8, v11, v13

    .line 289
    .line 290
    aput v7, v11, v14

    .line 291
    .line 292
    aput v16, v11, v1

    .line 293
    .line 294
    aput v9, v11, v5

    .line 295
    .line 296
    aput v8, v11, v15

    .line 297
    .line 298
    aput v9, v11, v17

    .line 299
    .line 300
    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v10, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    .line 305
    .line 306
    iget v7, v0, Leq;->i:I

    .line 307
    .line 308
    iget v8, v0, Leq;->j:I

    .line 309
    .line 310
    invoke-static {v3, v3, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 311
    .line 312
    .line 313
    const/4 v7, 0x0

    .line 314
    invoke-static {v7, v7, v7, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 315
    .line 316
    .line 317
    const/16 v6, 0x4000

    .line 318
    .line 319
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 320
    .line 321
    .line 322
    iget v6, v0, Leq;->k:I

    .line 323
    .line 324
    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 325
    .line 326
    .line 327
    const v6, 0x84c0

    .line 328
    .line 329
    .line 330
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 331
    .line 332
    .line 333
    iget v6, v0, Leq;->o:I

    .line 334
    .line 335
    const v7, 0x8d65

    .line 336
    .line 337
    .line 338
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 339
    .line 340
    .line 341
    iget v6, v0, Leq;->n:I

    .line 342
    .line 343
    invoke-static {v6, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 344
    .line 345
    .line 346
    iget v2, v0, Leq;->l:I

    .line 347
    .line 348
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 349
    .line 350
    .line 351
    iget v8, v0, Leq;->l:I

    .line 352
    .line 353
    const/4 v12, 0x0

    .line 354
    iget-object v13, v0, Leq;->z:Ljava/nio/FloatBuffer;

    .line 355
    .line 356
    const/4 v9, 0x2

    .line 357
    const/16 v10, 0x1406

    .line 358
    .line 359
    const/4 v11, 0x0

    .line 360
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 361
    .line 362
    .line 363
    iget v2, v0, Leq;->m:I

    .line 364
    .line 365
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 366
    .line 367
    .line 368
    iget v8, v0, Leq;->m:I

    .line 369
    .line 370
    iget-object v13, v0, Leq;->A:Ljava/nio/FloatBuffer;

    .line 371
    .line 372
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 373
    .line 374
    .line 375
    invoke-static {v5, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 376
    .line 377
    .line 378
    iget v1, v0, Leq;->l:I

    .line 379
    .line 380
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 381
    .line 382
    .line 383
    iget v1, v0, Leq;->m:I

    .line 384
    .line 385
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 386
    .line 387
    .line 388
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 389
    .line 390
    .line 391
    iget-object v1, v0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 392
    .line 393
    iget-object v0, v0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 394
    .line 395
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 396
    .line 397
    .line 398
    :cond_b
    :goto_3
    return-void
.end method

.method public final f()Z
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 10
    .line 11
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    new-array v2, v1, [I

    .line 23
    .line 24
    iget-object v3, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    const/16 v2, 0xd

    .line 36
    .line 37
    new-array v6, v2, [I

    .line 38
    .line 39
    fill-array-data v6, :array_0

    .line 40
    .line 41
    .line 42
    new-array v8, v4, [Landroid/opengl/EGLConfig;

    .line 43
    .line 44
    new-array v11, v4, [I

    .line 45
    .line 46
    iget-object v5, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_a

    .line 57
    .line 58
    aget v2, v11, v0

    .line 59
    .line 60
    if-gtz v2, :cond_2

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_2
    aget-object v2, v8, v0

    .line 65
    .line 66
    iput-object v2, p0, Leq;->e:Landroid/opengl/EGLConfig;

    .line 67
    .line 68
    iget-object v3, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 69
    .line 70
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 71
    .line 72
    const/16 v6, 0x3098

    .line 73
    .line 74
    const/16 v7, 0x3038

    .line 75
    .line 76
    filled-new-array {v6, v1, v7}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v3, v2, v5, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Leq;->d:Landroid/opengl/EGLContext;

    .line 88
    .line 89
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_3
    iget-object v1, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 100
    .line 101
    iget-object v2, p0, Leq;->e:Landroid/opengl/EGLConfig;

    .line 102
    .line 103
    const/16 v3, 0x3057

    .line 104
    .line 105
    const/16 v5, 0x3056

    .line 106
    .line 107
    filled-new-array {v3, v4, v5, v4, v7}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v1, v2, v3, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Leq;->f:Landroid/opengl/EGLSurface;

    .line 119
    .line 120
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :cond_4
    iget-object v1, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 131
    .line 132
    iget-object v2, p0, Leq;->f:Landroid/opengl/EGLSurface;

    .line 133
    .line 134
    iget-object v3, p0, Leq;->d:Landroid/opengl/EGLContext;

    .line 135
    .line 136
    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :cond_5
    const v1, 0x8b31

    .line 145
    .line 146
    .line 147
    const-string v2, "\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTexCoord = (uTexMatrix * aTexCoord).xy;\n}\n"

    .line 148
    .line 149
    invoke-static {v1, v2}, Leq;->b(ILjava/lang/String;)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/4 v2, 0x0

    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    const v3, 0x8b30

    .line 161
    .line 162
    .line 163
    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTexCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTexCoord);\n}\n"

    .line 164
    .line 165
    invoke-static {v3, v5}, Leq;->b(ILjava/lang/String;)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-eqz v3, :cond_8

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-nez v5, :cond_6

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_6
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 183
    .line 184
    .line 185
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 186
    .line 187
    .line 188
    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 189
    .line 190
    .line 191
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 192
    .line 193
    .line 194
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 195
    .line 196
    .line 197
    new-array v1, v4, [I

    .line 198
    .line 199
    const v3, 0x8b82

    .line 200
    .line 201
    .line 202
    invoke-static {v5, v3, v1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 203
    .line 204
    .line 205
    aget v1, v1, v0

    .line 206
    .line 207
    if-eq v1, v4, :cond_7

    .line 208
    .line 209
    invoke-static {v5}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v6, "buildProgram: link failed: "

    .line 216
    .line 217
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v3, "MirrorCompositor"

    .line 228
    .line 229
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    :cond_8
    :goto_0
    if-eqz v2, :cond_a

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    iput v1, p0, Leq;->k:I

    .line 247
    .line 248
    const-string v2, "aPosition"

    .line 249
    .line 250
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    iput v1, p0, Leq;->l:I

    .line 255
    .line 256
    iget v1, p0, Leq;->k:I

    .line 257
    .line 258
    const-string v2, "aTexCoord"

    .line 259
    .line 260
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    iput v1, p0, Leq;->m:I

    .line 265
    .line 266
    iget v1, p0, Leq;->k:I

    .line 267
    .line 268
    const-string v2, "uTexMatrix"

    .line 269
    .line 270
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    iput v1, p0, Leq;->n:I

    .line 275
    .line 276
    new-array v1, v4, [I

    .line 277
    .line 278
    invoke-static {v4, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 279
    .line 280
    .line 281
    aget v1, v1, v0

    .line 282
    .line 283
    if-nez v1, :cond_9

    .line 284
    .line 285
    move v1, v0

    .line 286
    goto :goto_1

    .line 287
    :cond_9
    const v2, 0x8d65

    .line 288
    .line 289
    .line 290
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 291
    .line 292
    .line 293
    const/16 v3, 0x2801

    .line 294
    .line 295
    const/16 v5, 0x2601

    .line 296
    .line 297
    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 298
    .line 299
    .line 300
    const/16 v3, 0x2800

    .line 301
    .line 302
    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 303
    .line 304
    .line 305
    const/16 v3, 0x2802

    .line 306
    .line 307
    const v5, 0x812f

    .line 308
    .line 309
    .line 310
    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 311
    .line 312
    .line 313
    const/16 v3, 0x2803

    .line 314
    .line 315
    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 316
    .line 317
    .line 318
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 319
    .line 320
    .line 321
    :goto_1
    iput v1, p0, Leq;->o:I

    .line 322
    .line 323
    if-eqz v1, :cond_a

    .line 324
    .line 325
    return v4

    .line 326
    :cond_a
    :goto_2
    return v0

    .line 327
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x5
        0x3038
    .end array-data
.end method

.method public final g(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 5
    .line 6
    iget-object p0, p0, Leq;->g:Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, p0, p1, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    aget p0, v0, v2

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    return v2
.end method
