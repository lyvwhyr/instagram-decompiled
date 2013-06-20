.class public Lcom/instagram/android/service/AutoCompleteHashtagService;
.super Landroid/app/IntentService;
.source "AutoCompleteHashtagService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AutoCompleteHashtagService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/instagram/android/service/AutoCompleteHashtagService;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static addTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 54
    invoke-static {}, Lcom/instagram/android/service/AutoCompleteHashtagService;->getTagsPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    invoke-static {p0}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;->addTag(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static addTagsFromText(Ljava/lang/String;)V
    .locals 5
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    .line 38
    invoke-static {p0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/instagram/util/StringUtil;->hashMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/instagram/android/service/AutoCompleteHashtagService;->getTagsPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-interface {v1, v2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-static {v2}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;->addTag(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/instagram/android/service/AutoCompleteHashtagService;->getTagsPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-static {}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;->clearTags()V

    .line 65
    return-void
.end method

.method private static getTagsPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 59
    const-string v0, "AutoCompleteHashtagService"

    invoke-static {v0}, Lcom/instagram/util/PreferenceUtil;->getUserSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private loadCachedSetFromDisk()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/instagram/android/service/AutoCompleteHashtagService;->getTagsPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;->addTag(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/android/service/AutoCompleteHashtagService;->loadCachedSetFromDisk()V

    .line 27
    return-void
.end method
