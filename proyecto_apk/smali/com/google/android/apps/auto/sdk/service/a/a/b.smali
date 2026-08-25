.class public final Lcom/google/android/apps/auto/sdk/service/a/a/b;
.super Lua0;


# instance fields
.field private a:Lcom/google/android/gms/car/CarAudioRecord;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/car/CarAudioRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/a/b;->a:Lcom/google/android/gms/car/CarAudioRecord;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAudioSessionId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getBufferSize()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/b;->a:Lcom/google/android/gms/car/CarAudioRecord;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarAudioRecord;->getBufferSize()I

    move-result p0

    return p0
.end method

.method public final getRecordingState()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/b;->a:Lcom/google/android/gms/car/CarAudioRecord;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarAudioRecord;->getRecordingState()I

    move-result p0

    return p0
.end method

.method public final getState()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/b;->a:Lcom/google/android/gms/car/CarAudioRecord;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarAudioRecord;->getState()I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/b;->a:Lcom/google/android/gms/car/CarAudioRecord;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/car/CarAudioRecord;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lt90;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/b;->a:Lcom/google/android/gms/car/CarAudioRecord;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarAudioRecord;->release()V

    return-void
.end method

.method public final startRecording()V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/b;->a:Lcom/google/android/gms/car/CarAudioRecord;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/car/CarAudioRecord;->startRecording()V
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Lt90;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final stop()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a/b;->a:Lcom/google/android/gms/car/CarAudioRecord;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarAudioRecord;->stop()V

    return-void
.end method
