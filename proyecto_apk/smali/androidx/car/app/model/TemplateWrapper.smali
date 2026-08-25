.class public final Landroidx/car/app/model/TemplateWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Le9;
.end annotation


# instance fields
.field private mCurrentTaskStep:I

.field private mId:Ljava/lang/String;

.field private mIsRefresh:Z

.field private mTemplate:Le40;

.field private mTemplateInfoForScreenStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/TemplateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplateInfoForScreenStack:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Le40;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>(Le40;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplateInfoForScreenStack:Ljava/util/List;

    .line 21
    iput-object p1, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Le40;

    .line 22
    iput-object p2, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    return-void
.end method

.method public static copyOf(Landroidx/car/app/model/TemplateWrapper;)Landroidx/car/app/model/TemplateWrapper;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getTemplate()Le40;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroidx/car/app/model/TemplateWrapper;->wrap(Le40;Ljava/lang/String;)Landroidx/car/app/model/TemplateWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->isRefresh()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/car/app/model/TemplateWrapper;->setRefresh(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getCurrentTaskStep()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/car/app/model/TemplateWrapper;->setCurrentTaskStep(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getTemplateInfosForScreenStack()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroidx/car/app/model/TemplateWrapper;->setTemplateInfosForScreenStack(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v0
.end method

.method private static createRandomId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static wrap(Le40;)Landroidx/car/app/model/TemplateWrapper;
    .locals 1

    .line 15
    invoke-static {}, Landroidx/car/app/model/TemplateWrapper;->createRandomId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/car/app/model/TemplateWrapper;->wrap(Le40;Ljava/lang/String;)Landroidx/car/app/model/TemplateWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Le40;Ljava/lang/String;)Landroidx/car/app/model/TemplateWrapper;
    .locals 1

    .line 1
    new-instance v0, Landroidx/car/app/model/TemplateWrapper;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p0, Le40;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/TemplateWrapper;-><init>(Le40;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public getCurrentTaskStep()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/car/app/model/TemplateWrapper;->mCurrentTaskStep:I

    .line 2
    .line 3
    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getTemplate()Le40;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Le40;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p0, Le40;

    .line 7
    .line 8
    return-object p0
.end method

.method public getTemplateInfosForScreenStack()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/TemplateInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplateInfoForScreenStack:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method

.method public isRefresh()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/car/app/model/TemplateWrapper;->mIsRefresh:Z

    .line 2
    .line 3
    return p0
.end method

.method public setCurrentTaskStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/car/app/model/TemplateWrapper;->mCurrentTaskStep:I

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/car/app/model/TemplateWrapper;->mIsRefresh:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTemplate(Le40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Le40;

    .line 2
    .line 3
    return-void
.end method

.method public setTemplateInfosForScreenStack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/TemplateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplateInfoForScreenStack:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[template: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Le40;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", ID: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "]"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
