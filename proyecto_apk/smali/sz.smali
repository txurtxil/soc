.class public final synthetic Lsz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk;


# instance fields
.field public final synthetic a:Lf3;


# direct methods
.method public synthetic constructor <init>(Lf3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsz;->a:Lf3;

    return-void
.end method


# virtual methods
.method public final g(Lsk;Llk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lsz;->a:Lf3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p1, Llk;->ON_START:Llk;

    .line 7
    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lf3;->e:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object p1, Llk;->ON_STOP:Llk;

    .line 15
    .line 16
    if-ne p2, p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lf3;->e:Z

    .line 20
    .line 21
    :cond_1
    return-void
.end method
