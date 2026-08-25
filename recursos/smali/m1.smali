.class public final synthetic Lm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lm1;->a:I

    iput-object p2, p0, Lm1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lm1;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, v0, Lm1;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lc9;

    .line 1
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    if-ne v1, v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput v5, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    :cond_1
    :goto_0
    return-void

    .line 4
    :pswitch_0
    check-cast v0, Ld20;

    .line 5
    iget-object v1, v0, Ld20;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    .line 6
    iget-object v4, v0, Ld20;->b:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 8
    invoke-static {v0}, Le20;->a(Ld20;)V

    return-void

    .line 9
    :pswitch_1
    check-cast v0, Lv10;

    check-cast v0, Lb20;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->c()V

    return-void

    :pswitch_2
    check-cast v0, Lw10;

    check-cast v0, La20;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->b()V

    return-void

    :pswitch_3
    check-cast v0, Lq10;

    .line 10
    :catch_0
    :goto_2
    invoke-virtual {v0, v5}, Lq10;->d(Z)Ll10;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Lq10;->a(Ll10;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    return-void

    .line 12
    :pswitch_4
    check-cast v0, Landroid/media/projection/MediaProjection;

    .line 13
    const-string v1, "ScreenMirrorManager"

    sget-object v2, Lb00;->l:Lzz;

    .line 14
    iget-object v2, v2, Lzz;->c:Landroid/view/Surface;

    .line 15
    sget-object v3, Lb00;->m:Lzz;

    .line 16
    iget-object v3, v3, Lzz;->c:Landroid/view/Surface;

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "setMediaProjection: nav="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " legacy="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sput-boolean v5, Lb00;->f:Z

    .line 19
    sput-object v0, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 20
    sget-object v1, Lb00;->n:Ljava/util/List;

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzz;

    .line 22
    iput-boolean v5, v2, Lzz;->b:Z

    goto :goto_3

    .line 23
    :cond_4
    sget-object v1, Lb00;->q:La00;

    sget-object v2, Lb00;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 24
    invoke-static {}, Lb00;->b()V

    .line 25
    sget-object v1, Lb00;->g:Lcm;

    if-eqz v1, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcm;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_5
    sget-object v1, Lb00;->h:Lx6;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lx6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_6
    sget-object v1, Lb00;->i:Lx6;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lx6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    .line 28
    :pswitch_5
    check-cast v0, Lyz;

    .line 29
    sget-object v1, Lb00;->l:Lzz;

    sget-boolean v3, Lb00;->o:Z

    if-nez v3, :cond_8

    goto :goto_4

    .line 30
    :cond_8
    sget-object v3, Lyz;->b:Lyz;

    if-ne v0, v3, :cond_9

    sget-object v1, Lb00;->m:Lzz;

    .line 31
    :cond_9
    :goto_4
    iget-object v0, v1, Lzz;->j:Leq;

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {v0}, Leq;->d()V

    .line 33
    :cond_a
    iput-boolean v5, v1, Lzz;->k:Z

    .line 34
    iget-object v0, v1, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_b

    .line 35
    invoke-virtual {v0, v2}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 36
    :cond_b
    iput-object v2, v1, Lzz;->c:Landroid/view/Surface;

    return-void

    .line 37
    :pswitch_6
    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :pswitch_7
    check-cast v0, Ll10;

    .line 38
    :try_start_1
    invoke-static {}, Lq10;->c()Lq10;

    move-result-object v1

    .line 39
    iget v2, v1, Lq10;->a:I

    if-lt v2, v4, :cond_c

    goto :goto_5

    :cond_c
    move v4, v5

    :goto_5
    if-eqz v4, :cond_d

    .line 40
    invoke-virtual {v1, v0}, Lq10;->b(Ll10;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 41
    const-string v1, "LIBSU"

    invoke-static {v1, v0}, Lk60;->o(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_d
    :goto_6
    return-void

    .line 42
    :pswitch_8
    check-cast v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 43
    iput-boolean v5, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->D:Z

    .line 44
    iget-object v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v4}, Lidv/lzn/screenonauto/projection/PassThroughColumn;->setPassTouches(Z)V

    .line 45
    iget-object v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v4}, Lidv/lzn/screenonauto/projection/PassThroughScroll;->setPassTouches(Z)V

    .line 46
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_7
    if-ge v5, v1, :cond_e

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    check-cast v2, Landroid/view/View;

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    :cond_e
    return-void

    .line 48
    :cond_f
    const-string v0, "shortcutBarScroll"

    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_10
    const-string v0, "toggleColumn"

    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    throw v2

    .line 50
    :pswitch_9
    check-cast v0, Lbv;

    iget-object v1, v0, Lbv;->f:Landroidx/lifecycle/a;

    .line 51
    iget v2, v0, Lbv;->b:I

    if-nez v2, :cond_11

    .line 52
    iput-boolean v4, v0, Lbv;->c:Z

    .line 53
    sget-object v2, Llk;->ON_PAUSE:Llk;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 54
    :cond_11
    iget v2, v0, Lbv;->a:I

    if-nez v2, :cond_12

    iget-boolean v2, v0, Lbv;->c:Z

    if-eqz v2, :cond_12

    .line 55
    sget-object v2, Llk;->ON_STOP:Llk;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 56
    iput-boolean v4, v0, Lbv;->d:Z

    :cond_12
    return-void

    .line 57
    :pswitch_a
    check-cast v0, Leq;

    .line 58
    iput-boolean v4, v0, Leq;->w:Z

    .line 59
    invoke-virtual {v0, v2}, Leq;->a(Landroid/view/Surface;)V

    .line 60
    iget-object v1, v0, Leq;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_13

    .line 61
    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 62
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 63
    :cond_13
    iput-object v2, v0, Leq;->p:Landroid/graphics/SurfaceTexture;

    .line 64
    iget-object v1, v0, Leq;->C:Landroid/view/Surface;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 65
    :cond_14
    iput-object v2, v0, Leq;->C:Landroid/view/Surface;

    .line 66
    iget-object v1, v0, Leq;->c:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v3}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_8

    .line 67
    :cond_15
    iget-object v1, v0, Leq;->c:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 68
    invoke-static {v1, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 69
    iget-object v1, v0, Leq;->f:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-static {v1, v3}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Leq;->c:Landroid/opengl/EGLDisplay;

    iget-object v3, v0, Leq;->f:Landroid/opengl/EGLSurface;

    invoke-static {v1, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 70
    :cond_16
    iget-object v1, v0, Leq;->d:Landroid/opengl/EGLContext;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v3}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Leq;->c:Landroid/opengl/EGLDisplay;

    iget-object v3, v0, Leq;->d:Landroid/opengl/EGLContext;

    invoke-static {v1, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 71
    :cond_17
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 72
    iget-object v1, v0, Leq;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 73
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Leq;->f:Landroid/opengl/EGLSurface;

    .line 74
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Leq;->d:Landroid/opengl/EGLContext;

    .line 75
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Leq;->c:Landroid/opengl/EGLDisplay;

    .line 76
    iput-object v2, v0, Leq;->e:Landroid/opengl/EGLConfig;

    .line 77
    :goto_8
    iget-object v0, v0, Leq;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    .line 78
    :pswitch_b
    move-object v1, v0

    check-cast v1, Ldf;

    .line 79
    const-string v0, "fetchFonts result is not OK. ("

    iget-object v2, v1, Ldf;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_2
    iget-object v4, v1, Ldf;->h:Lqj;

    if-nez v4, :cond_18

    .line 81
    monitor-exit v2

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    .line 82
    :cond_18
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :try_start_3
    invoke-virtual {v1}, Ldf;->b()Lpf;

    move-result-object v2

    .line 84
    iget v4, v2, Lpf;->e:I

    if-ne v4, v3, :cond_19

    .line 85
    iget-object v3, v1, Ldf;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 86
    :try_start_4
    monitor-exit v3

    goto :goto_9

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :cond_19
    :goto_9
    if-nez v4, :cond_1c

    .line 87
    :try_start_6
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    sget v3, Ln50;->a:I

    .line 88
    invoke-static {v0}, Lm50;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, v1, Ldf;->c:Lhd;

    iget-object v3, v1, Ldf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    filled-new-array {v2}, [Lpf;

    move-result-object v0

    .line 91
    sget-object v4, Lv50;->a:Lk60;

    invoke-virtual {v4, v3, v0, v5}, Lk60;->k(Landroid/content/Context;[Lpf;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 92
    iget-object v3, v1, Ldf;->a:Landroid/content/Context;

    .line 93
    iget-object v2, v2, Lpf;->a:Landroid/net/Uri;

    .line 94
    invoke-static {v3, v2}, Lem;->q(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v2, :cond_1b

    if-eqz v0, :cond_1b

    .line 95
    :try_start_7
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 96
    invoke-static {v3}, Lm50;->a(Ljava/lang/String;)V

    .line 97
    new-instance v3, Lvp;

    invoke-static {v2}, Lgt;->n(Ljava/nio/MappedByteBuffer;)Ltp;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Lvp;-><init>(Landroid/graphics/Typeface;Ltp;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 98
    :try_start_8
    invoke-static {}, Lm50;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 99
    :try_start_9
    invoke-static {}, Lm50;->b()V

    .line 100
    iget-object v2, v1, Ldf;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 101
    :try_start_a
    iget-object v0, v1, Ldf;->h:Lqj;

    if-eqz v0, :cond_1a

    .line 102
    invoke-virtual {v0, v3}, Lqj;->s(Lvp;)V

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_b

    .line 103
    :cond_1a
    :goto_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 104
    :try_start_b
    invoke-virtual {v1}, Ldf;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_e

    .line 105
    :goto_b
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_4
    move-exception v0

    .line 106
    :try_start_e
    sget v2, Ln50;->a:I

    .line 107
    invoke-static {}, Lm50;->b()V

    .line 108
    throw v0

    .line 109
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 110
    :try_start_f
    sget v2, Ln50;->a:I

    .line 111
    invoke-static {}, Lm50;->b()V

    .line 112
    throw v0

    .line 113
    :cond_1c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 114
    :goto_c
    iget-object v3, v1, Ldf;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 115
    :try_start_10
    iget-object v2, v1, Ldf;->h:Lqj;

    if-eqz v2, :cond_1d

    .line 116
    invoke-virtual {v2, v0}, Lqj;->r(Ljava/lang/Throwable;)V

    goto :goto_d

    :catchall_6
    move-exception v0

    goto :goto_f

    .line 117
    :cond_1d
    :goto_d
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 118
    invoke-virtual {v1}, Ldf;->a()V

    :goto_e
    return-void

    .line 119
    :goto_f
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    .line 120
    :goto_10
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0

    .line 121
    :pswitch_c
    check-cast v0, Lo2;

    invoke-static {v0}, Lo2;->b(Lo2;)V

    return-void

    :pswitch_d
    check-cast v0, Lja;

    .line 122
    iget-object v1, v0, Lja;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_1e

    .line 123
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 124
    iput-object v2, v0, Lja;->b:Ljava/lang/Runnable;

    :cond_1e
    return-void

    .line 125
    :pswitch_e
    check-cast v0, Landroidx/activity/a;

    .line 126
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    .line 127
    :pswitch_f
    check-cast v0, Landroidx/car/app/i;

    .line 128
    const-class v1, Landroidx/car/app/k;

    invoke-virtual {v0, v1}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    move-result-object v0

    check-cast v0, Landroidx/car/app/k;

    .line 129
    iget-object v1, v0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 130
    const-string v2, "CarApp"

    invoke-static {}, Ln40;->a()V

    .line 131
    iget-object v3, v0, Landroidx/car/app/k;->c:Landroidx/lifecycle/a;

    .line 132
    iget-object v5, v3, Landroidx/lifecycle/a;->c:Lmk;

    .line 133
    sget-object v6, Lmk;->a:Lmk;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_1f

    .line 134
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 135
    const-string v0, "Popping screens after the DESTROYED state is a no-op"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 136
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v4, :cond_24

    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmq;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 138
    invoke-static {}, Ln40;->a()V

    .line 139
    iget-object v7, v0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmq;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iput-boolean v4, v7, Lmq;->e:Z

    .line 141
    iget-object v0, v0, Landroidx/car/app/k;->b:Landroidx/car/app/i;

    const-class v8, Landroidx/car/app/b;

    invoke-virtual {v0, v8}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    move-result-object v0

    check-cast v0, Landroidx/car/app/b;

    .line 142
    iget-object v0, v0, Landroidx/car/app/b;->c:Landroidx/car/app/j;

    const-string v8, "invalidate"

    new-instance v9, Lc2;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v10, Lbi;

    invoke-direct {v10, v0, v8, v9}, Lbi;-><init>(Landroidx/car/app/j;Ljava/lang/String;Lai;)V

    invoke-static {v8, v10}, Landroidx/car/app/utils/e;->d(Ljava/lang/String;Lix;)V

    .line 144
    iget-object v0, v3, Landroidx/lifecycle/a;->c:Lmk;

    .line 145
    sget-object v8, Lmk;->d:Lmk;

    .line 146
    invoke-virtual {v0, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_20

    .line 147
    sget-object v0, Llk;->ON_START:Llk;

    invoke-virtual {v7, v0}, Lmq;->c(Llk;)V

    .line 148
    :cond_20
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmq;

    .line 149
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Popping screen "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " off the screen stack"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_21
    invoke-static {v5, v4}, Landroidx/car/app/k;->b(Lmq;Z)V

    goto :goto_11

    .line 152
    :cond_22
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Screen "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is at the top of the screen stack"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_23
    iget-object v0, v3, Landroidx/lifecycle/a;->c:Lmk;

    .line 155
    sget-object v2, Lmk;->e:Lmk;

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 157
    invoke-virtual {v1, v7}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 158
    sget-object v0, Llk;->ON_RESUME:Llk;

    invoke-virtual {v7, v0}, Lmq;->c(Llk;)V

    :cond_24
    :goto_12
    return-void

    .line 159
    :pswitch_10
    check-cast v0, Lq7;

    invoke-virtual {v0}, Lq7;->a()V

    return-void

    :pswitch_11
    check-cast v0, La7;

    .line 160
    invoke-virtual {v0}, La7;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 161
    iget-boolean v1, v0, La7;->f:Z

    if-eqz v1, :cond_25

    goto :goto_16

    .line 162
    :cond_25
    iget-object v1, v0, La7;->b:Landroid/content/SharedPreferences;

    const-string v2, "root_screen_off"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 163
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 164
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getDisplayPowerModeSupported()Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v4

    goto :goto_13

    :cond_26
    move v1, v5

    :goto_13
    if-eqz v1, :cond_27

    .line 165
    sget-object v2, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    invoke-virtual {v2, v5}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->setDisplayPowerMode(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 166
    iput-boolean v4, v0, La7;->g:Z

    goto :goto_15

    :cond_27
    if-eqz v1, :cond_29

    .line 167
    iget-boolean v1, v0, La7;->h:Z

    if-eqz v1, :cond_28

    goto :goto_14

    .line 168
    :cond_28
    iput-boolean v4, v0, La7;->h:Z

    .line 169
    iget-object v1, v0, La7;->a:Lidv/lzn/screenonauto/ScreenCaptureService;

    const v2, 0x7f100113

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_29
    :goto_14
    iget-object v1, v0, La7;->j:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3c23d70a    # 0.01f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 171
    iget-object v2, v0, La7;->i:Landroid/view/View;

    if-eqz v2, :cond_2a

    :try_start_13
    iget-object v3, v0, La7;->d:Landroid/view/WindowManager;

    invoke-interface {v3, v2, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 172
    :catchall_7
    :cond_2a
    iput-boolean v5, v0, La7;->g:Z

    .line 173
    :goto_15
    iput-boolean v4, v0, La7;->f:Z

    :cond_2b
    :goto_16
    return-void

    .line 174
    :pswitch_12
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 175
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 176
    sget-object v2, Lq1;->g:Landroid/os/Handler;

    sget-object v0, Lq1;->f:Ljava/lang/reflect/Method;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_2c

    .line 177
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_1b

    :cond_2c
    const/16 v7, 0x1b

    const/16 v8, 0x1a

    if-eq v6, v8, :cond_2d

    if-ne v6, v7, :cond_2e

    :cond_2d
    if-nez v0, :cond_2e

    goto/16 :goto_1a

    .line 178
    :cond_2e
    sget-object v9, Lq1;->e:Ljava/lang/reflect/Method;

    if-nez v9, :cond_2f

    sget-object v9, Lq1;->d:Ljava/lang/reflect/Method;

    if-nez v9, :cond_2f

    goto/16 :goto_1a

    .line 179
    :cond_2f
    :try_start_14
    sget-object v9, Lq1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_30

    goto :goto_1a

    .line 180
    :cond_30
    sget-object v9, Lq1;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_31

    goto :goto_1a

    .line 181
    :cond_31
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v11

    .line 182
    new-instance v12, Lp1;

    invoke-direct {v12, v1}, Lp1;-><init>(Landroid/app/Activity;)V

    .line 183
    invoke-virtual {v11, v12}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 184
    new-instance v13, Lc1;

    invoke-direct {v13, v12, v10, v4, v5}, Lc1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v2, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    if-eq v6, v8, :cond_33

    if-ne v6, v7, :cond_32

    goto :goto_17

    :cond_32
    move v4, v5

    :cond_33
    :goto_17
    if-eqz v4, :cond_34

    .line 185
    :try_start_15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v4, v11

    const/4 v11, 0x0

    move-object v6, v12

    const/4 v12, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v14

    :try_start_16
    filled-new-array/range {v10 .. v18}, [Ljava/lang/Object;

    move-result-object v7

    .line 186
    invoke-virtual {v0, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :catchall_8
    move-exception v0

    goto :goto_19

    :catchall_9
    move-exception v0

    move-object v4, v11

    move-object v6, v12

    goto :goto_19

    :cond_34
    move-object v4, v11

    move-object v6, v12

    .line 187
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 188
    :goto_18
    :try_start_17
    new-instance v0, Lc1;

    invoke-direct {v0, v4, v6, v3, v5}, Lc1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    :goto_19
    new-instance v7, Lc1;

    invoke-direct {v7, v4, v6, v3, v5}, Lc1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 190
    :catchall_a
    :goto_1a
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    :cond_35
    :goto_1b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
