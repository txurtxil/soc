.class public Lcom/google/android/gms/car/CarAudioConfig;
.super Ljava/lang/Object;


# instance fields
.field public final audioFormat:I

.field public final channelConfig:I

.field public final sampleRate:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/car/CarAudioConfig;->sampleRate:I

    iput p2, p0, Lcom/google/android/gms/car/CarAudioConfig;->channelConfig:I

    iput p3, p0, Lcom/google/android/gms/car/CarAudioConfig;->audioFormat:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/car/CarAudioConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/car/CarAudioConfig;

    iget v0, p0, Lcom/google/android/gms/car/CarAudioConfig;->sampleRate:I

    iget v2, p1, Lcom/google/android/gms/car/CarAudioConfig;->sampleRate:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/car/CarAudioConfig;->channelConfig:I

    iget v2, p1, Lcom/google/android/gms/car/CarAudioConfig;->channelConfig:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget p0, p0, Lcom/google/android/gms/car/CarAudioConfig;->audioFormat:I

    iget p1, p1, Lcom/google/android/gms/car/CarAudioConfig;->audioFormat:I

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/car/CarAudioConfig;->sampleRate:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/car/CarAudioConfig;->channelConfig:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/gms/car/CarAudioConfig;->audioFormat:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/car/CarAudioConfig;->sampleRate:I

    iget v2, p0, Lcom/google/android/gms/car/CarAudioConfig;->channelConfig:I

    iget p0, p0, Lcom/google/android/gms/car/CarAudioConfig;->audioFormat:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[sampleRate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",channelConfig="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",audioFormat="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
