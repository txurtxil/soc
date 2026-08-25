.class public final synthetic Lwz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lyz;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lyz;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz;->a:Lyz;

    iput p2, p0, Lwz;->b:I

    iput p3, p0, Lwz;->c:I

    iput p4, p0, Lwz;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "resizeMirroring("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lwz;->a:Lyz;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "): w="

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lwz;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, " h="

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v3, p0, Lwz;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, " dpi="

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lwz;->d:I

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v4, "ScreenMirrorManager"

    .line 48
    .line 49
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    sget-object v0, Lb00;->l:Lzz;

    .line 53
    .line 54
    sget-boolean v4, Lb00;->o:Z

    .line 55
    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object v4, Lyz;->b:Lyz;

    .line 60
    .line 61
    if-ne v1, v4, :cond_1

    .line 62
    .line 63
    sget-object v0, Lb00;->m:Lzz;

    .line 64
    .line 65
    :cond_1
    :goto_0
    iput v2, v0, Lzz;->d:I

    .line 66
    .line 67
    iput v3, v0, Lzz;->e:I

    .line 68
    .line 69
    iput p0, v0, Lzz;->f:I

    .line 70
    .line 71
    iget-object v1, v0, Lzz;->j:Leq;

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    iget-object p0, v1, Leq;->b:Landroid/os/Handler;

    .line 76
    .line 77
    new-instance v0, Lcq;

    .line 78
    .line 79
    const/4 v4, 0x2

    .line 80
    invoke-direct {v0, v1, v2, v3, v4}, Lcq;-><init>(Ljava/lang/Object;III)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iget-object v1, v0, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3, p0}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 92
    .line 93
    .line 94
    iput v2, v0, Lzz;->g:I

    .line 95
    .line 96
    iput v3, v0, Lzz;->h:I

    .line 97
    .line 98
    :cond_3
    return-void
.end method
