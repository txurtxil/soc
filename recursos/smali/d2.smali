.class public final Ld2;
.super Lgu;
.source "SourceFile"


# static fields
.field public static final c0:Ljava/util/List;


# instance fields
.field public final b0:Lb2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "map_action_home"

    .line 2
    .line 3
    const-string v1, "map_action_recents"

    .line 4
    .line 5
    const-string v2, "map_action_force_landscape"

    .line 6
    .line 7
    const-string v3, "map_action_auto_dim"

    .line 8
    .line 9
    const-string v4, "map_action_back"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ld2;->c0:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgu;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lb2;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld2;->b0:Lb2;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final N(Ljava/lang/String;)V
    .locals 2

    .line 1
    const v0, 0x7f130001

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lgu;->P(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "vd_width_gap"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lc2;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p1, Landroidx/preference/EditTextPreference;->V:Lc2;

    .line 23
    .line 24
    :cond_0
    const-string p1, "vd_height_gap"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    new-instance v0, Lc2;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Landroidx/preference/EditTextPreference;->V:Lc2;

    .line 40
    .line 41
    :cond_1
    sget-object p1, Ld2;->c0:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Ld2;->b0:Lb2;

    .line 66
    .line 67
    iput-object v1, v0, Landroidx/preference/Preference;->e:Lau;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method
