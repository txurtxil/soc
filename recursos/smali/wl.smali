.class public final Lwl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lwl;


# instance fields
.field public final a:Lxl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/util/Locale;

    .line 3
    .line 4
    invoke-static {v0}, Lvl;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lwl;

    .line 9
    .line 10
    new-instance v2, Lxl;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lxl;-><init>(Landroid/os/LocaleList;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lwl;-><init>(Lxl;)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lwl;->b:Lwl;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lxl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwl;->a:Lxl;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lwl;
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v0, ","

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v0, p0

    .line 18
    new-array v1, v0, [Ljava/util/Locale;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    aget-object v3, p0, v2

    .line 24
    .line 25
    invoke-static {v3}, Lul;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v1}, Lvl;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v0, Lwl;

    .line 39
    .line 40
    new-instance v1, Lxl;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lxl;-><init>(Landroid/os/LocaleList;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lwl;-><init>(Lxl;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    :goto_1
    sget-object p0, Lwl;->b:Lwl;

    .line 50
    .line 51
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lwl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lwl;

    .line 6
    .line 7
    iget-object p1, p1, Lwl;->a:Lxl;

    .line 8
    .line 9
    iget-object p0, p0, Lwl;->a:Lxl;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lxl;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwl;->a:Lxl;

    .line 2
    .line 3
    iget-object p0, p0, Lxl;->a:Landroid/os/LocaleList;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/LocaleList;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwl;->a:Lxl;

    .line 2
    .line 3
    iget-object p0, p0, Lxl;->a:Landroid/os/LocaleList;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
