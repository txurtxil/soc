.class public final Lidv/lzn/screenonauto/car/MirrorScreen$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac;


# instance fields
.field public final synthetic a:Lmq;


# direct methods
.method public constructor <init>(Lmq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lidv/lzn/screenonauto/car/MirrorScreen$2;->a:Lmq;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/car/MirrorScreen$2;->a:Lmq;

    .line 2
    .line 3
    iget-object p1, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iget-object p0, p0, Lmq;->q:Liq;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final e(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/car/MirrorScreen$2;->a:Lmq;

    .line 2
    .line 3
    iget-object p1, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iget-object p0, p0, Lmq;->q:Liq;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
