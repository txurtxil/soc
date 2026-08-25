.class public final Lnz;
.super Loz;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lmz;

.field public b:Z

.field public final synthetic c:Lpz;


# direct methods
.method public constructor <init>(Lpz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnz;->c:Lpz;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lnz;->b:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lmz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnz;->a:Lmz;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, v0, Lmz;->d:Lmz;

    .line 6
    .line 7
    iput-object p1, p0, Lnz;->a:Lmz;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lnz;->b:Z

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnz;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lnz;->c:Lpz;

    .line 6
    .line 7
    iget-object p0, p0, Lpz;->a:Lmz;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lnz;->a:Lmz;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lmz;->c:Lmz;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnz;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lnz;->b:Z

    .line 7
    .line 8
    iget-object v0, p0, Lnz;->c:Lpz;

    .line 9
    .line 10
    iget-object v0, v0, Lpz;->a:Lmz;

    .line 11
    .line 12
    iput-object v0, p0, Lnz;->a:Lmz;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lnz;->a:Lmz;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lmz;->c:Lmz;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iput-object v0, p0, Lnz;->a:Lmz;

    .line 24
    .line 25
    :goto_1
    iget-object p0, p0, Lnz;->a:Lmz;

    .line 26
    .line 27
    return-object p0
.end method
