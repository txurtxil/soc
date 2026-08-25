.class public final Lf8;
.super Landroid/content/ContextWrapper;


# instance fields
.field public final a:I

.field public b:Ll8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Le8;->b()Le8;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const p1, 0x7f010002

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lf8;->a:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "layout_inflater"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lf8;->b:Ll8;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ll8;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lf8;->a:I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {p1, v0, p0, v1, v2}, Ll8;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;IZ)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lf8;->b:Ll8;

    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lf8;->b:Ll8;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
