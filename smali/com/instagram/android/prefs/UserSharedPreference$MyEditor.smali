.class Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;
.super Ljava/lang/Object;
.source "UserSharedPreference.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field private mEditorGlobal:Landroid/content/SharedPreferences$Editor;

.field private mEditorLocal:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/instagram/android/prefs/UserSharedPreference;


# direct methods
.method constructor <init>(Lcom/instagram/android/prefs/UserSharedPreference;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->this$0:Lcom/instagram/android/prefs/UserSharedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    #getter for: Lcom/instagram/android/prefs/UserSharedPreference;->mPrefGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/instagram/android/prefs/UserSharedPreference;->access$000(Lcom/instagram/android/prefs/UserSharedPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    .line 133
    #getter for: Lcom/instagram/android/prefs/UserSharedPreference;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/instagram/android/prefs/UserSharedPreference;->access$100(Lcom/instagram/android/prefs/UserSharedPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    #getter for: Lcom/instagram/android/prefs/UserSharedPreference;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/instagram/android/prefs/UserSharedPreference;->access$100(Lcom/instagram/android/prefs/UserSharedPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    :cond_0
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 162
    :cond_0
    return-object p0
.end method

.method public commit()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 142
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->this$0:Lcom/instagram/android/prefs/UserSharedPreference;

    #getter for: Lcom/instagram/android/prefs/UserSharedPreference;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/instagram/android/prefs/UserSharedPreference;->access$100(Lcom/instagram/android/prefs/UserSharedPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    :goto_0
    return-object p0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->this$0:Lcom/instagram/android/prefs/UserSharedPreference;

    #getter for: Lcom/instagram/android/prefs/UserSharedPreference;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/instagram/android/prefs/UserSharedPreference;->access$100(Lcom/instagram/android/prefs/UserSharedPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 206
    :goto_0
    return-object p0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->this$0:Lcom/instagram/android/prefs/UserSharedPreference;

    #getter for: Lcom/instagram/android/prefs/UserSharedPreference;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/instagram/android/prefs/UserSharedPreference;->access$100(Lcom/instagram/android/prefs/UserSharedPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    :goto_0
    return-object p0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->this$0:Lcom/instagram/android/prefs/UserSharedPreference;

    #getter for: Lcom/instagram/android/prefs/UserSharedPreference;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/instagram/android/prefs/UserSharedPreference;->access$100(Lcom/instagram/android/prefs/UserSharedPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 197
    :goto_0
    return-object p0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->this$0:Lcom/instagram/android/prefs/UserSharedPreference;

    #getter for: Lcom/instagram/android/prefs/UserSharedPreference;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/instagram/android/prefs/UserSharedPreference;->access$100(Lcom/instagram/android/prefs/UserSharedPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    :goto_0
    return-object p0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/instagram/android/prefs/UserSharedPreference$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    :cond_0
    return-object p0
.end method
