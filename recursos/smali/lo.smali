.class public final Llo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loo;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_2

    .line 5
    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x1c

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Lmo;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2, p3}, Loo;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2, p3}, Ly;->o(IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Llo;->a:Loo;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Loo;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2, p3}, Loo;-><init>(IILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Llo;->a:Loo;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string p0, "packageName should be nonempty"

    .line 38
    .line 39
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    throw p0

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 45
    .line 46
    const-string p1, "package shouldn\'t be null"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Llo;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    iget-object p0, p0, Llo;->a:Loo;

    .line 12
    .line 13
    check-cast p1, Llo;

    .line 14
    .line 15
    iget-object p1, p1, Llo;->a:Loo;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Loo;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Llo;->a:Loo;

    .line 2
    .line 3
    invoke-virtual {p0}, Loo;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
