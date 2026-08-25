.class public final synthetic Llq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmq;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lmq;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llq;->a:Lmq;

    iput p2, p0, Llq;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Llq;->a:Lmq;

    .line 2
    .line 3
    iget p0, p0, Llq;->b:I

    .line 4
    .line 5
    iput p0, v0, Lmq;->f:I

    .line 6
    .line 7
    sget v1, Lb00;->a:I

    .line 8
    .line 9
    iget v1, v0, Lmq;->g:I

    .line 10
    .line 11
    iget v0, v0, Lmq;->h:I

    .line 12
    .line 13
    sget-object v2, Lb00;->k:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v3, Lwz;

    .line 16
    .line 17
    sget-object v4, Lyz;->a:Lyz;

    .line 18
    .line 19
    invoke-direct {v3, v4, p0, v1, v0}, Lwz;-><init>(Lyz;III)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
