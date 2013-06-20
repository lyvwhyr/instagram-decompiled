.class public Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;
.super Landroid/widget/Filter;
.source "UsernameAutoCompleteFilter.java"


# static fields
.field protected static sFullnames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static sUsernames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mMediaFullnames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMediaUsernames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sUsernames:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sFullnames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->mMediaUsernames:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->mMediaFullnames:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/model/Media;)V
    .locals 5
    .parameter "media"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->mMediaUsernames:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->mMediaFullnames:Ljava/util/HashMap;

    .line 32
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getActiveComments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment;

    .line 33
    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->mMediaUsernames:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToUsernameMap(Lcom/instagram/android/model/User;Ljava/util/HashMap;Z)V

    .line 34
    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->mMediaUsernames:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToUsernameMap(Lcom/instagram/android/model/User;Ljava/util/HashMap;Z)V

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method private static addToFullnameMaps(Lcom/instagram/android/model/User;Ljava/util/HashMap;)V
    .locals 6
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/model/User;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/util/HashSet<Lcom/instagram/android/model/User;>;>;"
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 64
    invoke-static {v4}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 66
    invoke-static {p0, p1, v4}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToMap(Lcom/instagram/android/model/User;Ljava/util/HashMap;Ljava/lang/Character;)V

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method private static addToMap(Lcom/instagram/android/model/User;Ljava/util/HashMap;Ljava/lang/Character;)V
    .locals 1
    .parameter "user"
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/model/User;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/util/HashSet<Lcom/instagram/android/model/User;>;>;"
    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    return-void
.end method

.method private addToResultsWithPredicate(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/android/model/User;)V
    .locals 1
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Lcom/instagram/android/model/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Lcom/instagram/android/model/User;>;"
    if-eqz p2, :cond_1

    .line 158
    invoke-interface {p2, p3}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static addToUsernameMap(Lcom/instagram/android/model/User;Ljava/util/HashMap;Z)V
    .locals 1
    .parameter "user"
    .parameter
    .parameter "isFullname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/model/User;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/util/HashSet<Lcom/instagram/android/model/User;>;>;"
    invoke-static {p0, p2}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->getFirstCharacter(Lcom/instagram/android/model/User;Z)Ljava/lang/Character;

    move-result-object v0

    .line 44
    invoke-static {p0, p1, v0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToMap(Lcom/instagram/android/model/User;Ljava/util/HashMap;Ljava/lang/Character;)V

    .line 45
    return-void
.end method

.method public static addUser(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 172
    sget-object v0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sUsernames:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToUsernameMap(Lcom/instagram/android/model/User;Ljava/util/HashMap;Z)V

    .line 173
    sget-object v0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sFullnames:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToFullnameMaps(Lcom/instagram/android/model/User;Ljava/util/HashMap;)V

    .line 174
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sUsernames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 196
    sget-object v0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sFullnames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 197
    return-void
.end method

.method private static getFirstCharacter(Lcom/instagram/android/model/User;Z)Ljava/lang/Character;
    .locals 3
    .parameter "user"
    .parameter "fullname"

    .prologue
    const/4 v2, 0x0

    .line 73
    const/4 v0, 0x0

    .line 75
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeUser(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->getFirstCharacter(Lcom/instagram/android/model/User;Z)Ljava/lang/Character;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    sget-object v1, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sUsernames:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->getFirstCharacter(Lcom/instagram/android/model/User;Z)Ljava/lang/Character;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    sget-object v1, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sFullnames:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 188
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method protected addToMatchingFullnameConcatSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V
    .locals 4
    .parameter "text"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p3, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/User;>;"
    .local p4, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Lcom/instagram/android/model/User;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 133
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFullNameConcat()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-direct {p0, p2, p4, v0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToResultsWithPredicate(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/android/model/User;)V

    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method

.method protected addToMatchingFullnameConcatSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/internal/util/Predicate;)V
    .locals 2
    .parameter "text"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/util/HashSet<Lcom/instagram/android/model/User;>;>;"
    .local p4, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Lcom/instagram/android/model/User;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 125
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToMatchingFullnameConcatSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected addToMatchingUsernameSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V
    .locals 4
    .parameter "text"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p3, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/User;>;"
    .local p4, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Lcom/instagram/android/model/User;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 150
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-direct {p0, p2, p4, v0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToResultsWithPredicate(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/android/model/User;)V

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method protected addToMatchingUsernameSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/internal/util/Predicate;)V
    .locals 2
    .parameter "text"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/util/HashSet<Lcom/instagram/android/model/User;>;>;"
    .local p4, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Lcom/instagram/android/model/User;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 142
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToMatchingUsernameSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V

    .line 145
    :cond_0
    return-void
.end method

.method protected computeMatchingUserAutoCompleteSet(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;
    .locals 2
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Lcom/instagram/android/model/User;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 112
    sget-object v1, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sUsernames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToMatchingUsernameSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/internal/util/Predicate;)V

    .line 113
    iget-object v1, p0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->mMediaUsernames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToMatchingUsernameSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/internal/util/Predicate;)V

    .line 115
    sget-object v1, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->sFullnames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToMatchingFullnameConcatSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/internal/util/Predicate;)V

    .line 116
    iget-object v1, p0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->mMediaFullnames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->addToMatchingFullnameConcatSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/internal/util/Predicate;)V

    .line 118
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter "text"

    .prologue
    .line 89
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/instagram/util/StringUtil;->getCleanText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 94
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 96
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 105
    :goto_0
    return-object v0

    .line 100
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->computeMatchingUserAutoCompleteSet(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 169
    return-void
.end method
