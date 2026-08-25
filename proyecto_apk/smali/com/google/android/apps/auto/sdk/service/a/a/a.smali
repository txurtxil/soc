.class public final Lcom/google/android/apps/auto/sdk/service/a/a/a;
.super Lta0;


# static fields
.field private static final c:Landroid/media/AudioFormat;


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Lcom/google/android/gms/car/CarAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/16 v1, 0x3e80

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->c:Landroid/media/AudioFormat;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioManager;Lcom/google/android/gms/car/CarAudioManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->a:Landroid/media/AudioManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->b:Lcom/google/android/gms/car/CarAudioManager;

    .line 7
    .line 8
    return-void
.end method

.method private static a(II)Landroid/media/AudioAttributes;
    .locals 1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public final createCarAudioRecord(I)Lua0;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/apps/auto/sdk/service/a/a/b;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->b:Lcom/google/android/gms/car/CarAudioManager;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1, v1, p1}, Lcom/google/android/gms/car/CarAudioManager;->createCarAudioRecord(III)Lcom/google/android/gms/car/CarAudioRecord;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/apps/auto/sdk/service/a/a/b;-><init>(Lcom/google/android/gms/car/CarAudioRecord;)V
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/car/CarNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :catch_1
    move-exception p0

    .line 22
    new-instance p1, Lt90;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public final getAudioAttributesForCarUsage(I)Landroid/media/AudioAttributes;
    .locals 1

    const/4 p0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "An unknown audio usage was passed in.  Audio usage = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarAudioManagerGms"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/google/android/apps/auto/sdk/service/a/a/a;->a(II)Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, 0x4

    const/16 p1, 0xd

    invoke-static {p0, p1}, Lcom/google/android/apps/auto/sdk/service/a/a/a;->a(II)Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/16 p1, 0xc

    invoke-static {p0, p1}, Lcom/google/android/apps/auto/sdk/service/a/a/a;->a(II)Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p1, 0x2

    invoke-static {p1, p0}, Lcom/google/android/apps/auto/sdk/service/a/a/a;->a(II)Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getAudioRecordAudioFormat()Landroid/media/AudioFormat;
    .locals 0

    sget-object p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->c:Landroid/media/AudioFormat;

    return-object p0
.end method

.method public final getAudioRecordMaxBufferSize()I
    .locals 0

    const/high16 p0, 0x80000

    return p0
.end method

.method public final getAudioRecordMinBufferSize()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->b:Lcom/google/android/gms/car/CarAudioManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0, v0}, Lcom/google/android/gms/car/CarAudioManager;->getAudioRecordMinBufferSize(II)I

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/car/CarNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return p0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    new-instance v0, Lt90;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final isAudioRecordSupported()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->b:Lcom/google/android/gms/car/CarAudioManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/google/android/gms/car/CarAudioManager;->isAudioRecordStreamSupported(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return p0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lt90;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final isMediaMuted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public final requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;I)I
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/auto/sdk/service/a/a/a;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    move-result p0

    return p0
.end method

.method public final requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "requestAudioFocus"

    const-class v2, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-class v3, Landroid/media/AudioAttributes;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v4, v4}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/a;->a:Landroid/media/AudioManager;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string p1, "CarAudioManagerGms"

    const-string p2, "Audio focus request failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setMediaMute(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
