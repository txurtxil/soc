.class public final synthetic Lxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lyz;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(IIILyz;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lxz;->a:Lyz;

    iput p1, p0, Lxz;->b:I

    iput p2, p0, Lxz;->c:I

    iput p3, p0, Lxz;->d:I

    iput-object p5, p0, Lxz;->e:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget-object v0, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "startMirroring("

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lxz;->a:Lyz;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, "): mediaProjection="

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " w="

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lxz;->b:I

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " h="

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v3, p0, Lxz;->c:I

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, " dpi="

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v4, p0, Lxz;->d:I

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v5, "ScreenMirrorManager"

    .line 58
    .line 59
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    sget-object v1, Lb00;->l:Lzz;

    .line 63
    .line 64
    sget-boolean v5, Lb00;->o:Z

    .line 65
    .line 66
    if-nez v5, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    sget-object v5, Lyz;->b:Lyz;

    .line 70
    .line 71
    if-ne v2, v5, :cond_1

    .line 72
    .line 73
    sget-object v1, Lb00;->m:Lzz;

    .line 74
    .line 75
    :cond_1
    :goto_0
    iget-object p0, p0, Lxz;->e:Landroid/view/Surface;

    .line 76
    .line 77
    iput-object p0, v1, Lzz;->c:Landroid/view/Surface;

    .line 78
    .line 79
    iput v0, v1, Lzz;->d:I

    .line 80
    .line 81
    iput v3, v1, Lzz;->e:I

    .line 82
    .line 83
    iput v4, v1, Lzz;->f:I

    .line 84
    .line 85
    sget-object v2, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    invoke-static {v1, p0, v0, v3, v4}, Lb00;->a(Lzz;Landroid/view/Surface;III)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method
