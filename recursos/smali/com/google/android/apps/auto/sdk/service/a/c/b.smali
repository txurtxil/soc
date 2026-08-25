.class public final Lcom/google/android/apps/auto/sdk/service/a/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "P::",
        "Lcom/google/android/apps/auto/sdk/service/a/c/a<",
        "T",
        "L;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "T",
            "L;",
            "TP;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/apps/auto/sdk/service/a/c/c<",
            "T",
            "L;",
            "TP;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/apps/auto/sdk/service/a/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/auto/sdk/service/a/c/d<",
            "T",
            "L;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/service/a/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/auto/sdk/service/a/c/d<",
            "T",
            "L;",
            "TP;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->c:Lcom/google/android/apps/auto/sdk/service/a/c/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")TP;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/auto/sdk/service/a/c/c;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/auto/sdk/service/a/c/c;->a(Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/apps/auto/sdk/service/a/c/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "T",
            "L;",
            ")TP;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/auto/sdk/service/a/c/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/apps/auto/sdk/service/a/c/c;

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->c:Lcom/google/android/apps/auto/sdk/service/a/c/d;

    invoke-direct {v1, v2}, Lcom/google/android/apps/auto/sdk/service/a/c/c;-><init>(Lcom/google/android/apps/auto/sdk/service/a/c/d;)V

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/auto/sdk/service/a/c/a;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->c:Lcom/google/android/apps/auto/sdk/service/a/c/d;

    invoke-interface {p1, p2}, Lcom/google/android/apps/auto/sdk/service/a/c/d;->a(Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->a:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, v1, Lcom/google/android/apps/auto/sdk/service/a/c/c;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "T",
            "L;",
            ")TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/auto/sdk/service/a/c/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/google/android/apps/auto/sdk/service/a/c/c;->a(Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/apps/auto/sdk/service/a/c/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v3, v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/auto/sdk/service/a/c/c;

    invoke-virtual {v4, p2}, Lcom/google/android/apps/auto/sdk/service/a/c/c;->b(Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
