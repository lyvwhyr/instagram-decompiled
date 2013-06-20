.class public Lcom/instagram/util/ContactHelper;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method private static addEmailAddresses(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/util/ContactHelper$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/instagram/util/ContactHelper$Contact;>;"
    const/4 v6, 0x0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 95
    :try_start_0
    sget-object v2, Lcom/instagram/util/ContactHelper$EmailQuery;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 100
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 102
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {p1, v0}, Lcom/instagram/util/ContactHelper;->getOrCreateContact(Ljava/util/HashMap;I)Lcom/instagram/util/ContactHelper$Contact;

    move-result-object v0

    .line 104
    #getter for: Lcom/instagram/util/ContactHelper$Contact;->emailAddresses:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/instagram/util/ContactHelper$Contact;->access$000(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/instagram/util/ContactHelper$Contact;->emailAddresses:Ljava/util/ArrayList;
    invoke-static {v0, v3}, Lcom/instagram/util/ContactHelper$Contact;->access$002(Lcom/instagram/util/ContactHelper$Contact;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 107
    :cond_0
    #getter for: Lcom/instagram/util/ContactHelper$Contact;->emailAddresses:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/instagram/util/ContactHelper$Contact;->access$000(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 110
    :cond_2
    if-eqz v1, :cond_3

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_3
    return-void

    .line 110
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private static addNames(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/util/ContactHelper$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/instagram/util/ContactHelper$Contact;>;"
    const/4 v6, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 147
    :try_start_0
    sget-object v2, Lcom/instagram/util/ContactHelper$NameQuery;->NAME_PROJECTION:[Ljava/lang/String;

    const-string v3, "mimetype = ? AND data1 IS NOT NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "vnd.android.cursor.item/name"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 153
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 155
    invoke-static {p1, v0}, Lcom/instagram/util/ContactHelper;->getOrCreateContact(Ljava/util/HashMap;I)Lcom/instagram/util/ContactHelper$Contact;

    move-result-object v0

    .line 157
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/instagram/util/ContactHelper$Contact;->firstName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/instagram/util/ContactHelper$Contact;->access$202(Lcom/instagram/util/ContactHelper$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/instagram/util/ContactHelper$Contact;->lastName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/instagram/util/ContactHelper$Contact;->access$302(Lcom/instagram/util/ContactHelper$Contact;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 161
    :cond_1
    if-eqz v1, :cond_2

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_2
    return-void

    .line 161
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private static addPhoneNumbers(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/util/ContactHelper$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/instagram/util/ContactHelper$Contact;>;"
    const/4 v6, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 121
    :try_start_0
    sget-object v2, Lcom/instagram/util/ContactHelper$PhoneQuery;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 126
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 128
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {p1, v0}, Lcom/instagram/util/ContactHelper;->getOrCreateContact(Ljava/util/HashMap;I)Lcom/instagram/util/ContactHelper$Contact;

    move-result-object v0

    .line 130
    #getter for: Lcom/instagram/util/ContactHelper$Contact;->phoneNumbers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/instagram/util/ContactHelper$Contact;->access$100(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/instagram/util/ContactHelper$Contact;->phoneNumbers:Ljava/util/ArrayList;
    invoke-static {v0, v3}, Lcom/instagram/util/ContactHelper$Contact;->access$102(Lcom/instagram/util/ContactHelper$Contact;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 133
    :cond_0
    #getter for: Lcom/instagram/util/ContactHelper$Contact;->phoneNumbers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/instagram/util/ContactHelper$Contact;->access$100(Lcom/instagram/util/ContactHelper$Contact;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 136
    :cond_2
    if-eqz v1, :cond_3

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_3
    return-void

    .line 136
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public static getContacts(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/util/ContactHelper$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-static {p0, v0}, Lcom/instagram/util/ContactHelper;->addEmailAddresses(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 67
    invoke-static {p0, v0}, Lcom/instagram/util/ContactHelper;->addPhoneNumbers(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 68
    invoke-static {p0, v0}, Lcom/instagram/util/ContactHelper;->addNames(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 70
    return-object v0
.end method

.method public static getJsonString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/util/ContactHelper$Contact;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/instagram/util/ContactHelper$Contact;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 75
    new-instance v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v2, "ContactModule"

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 76
    const-class v2, Lcom/instagram/util/ContactHelper$Contact;

    new-instance v3, Lcom/instagram/util/ContactHelper$Contact$Serializer;

    invoke-direct {v3}, Lcom/instagram/util/ContactHelper$Contact$Serializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 77
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 82
    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating json string"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getOrCreateContact(Ljava/util/HashMap;I)Lcom/instagram/util/ContactHelper$Contact;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/util/ContactHelper$Contact;",
            ">;I)",
            "Lcom/instagram/util/ContactHelper$Contact;"
        }
    .end annotation

    .prologue
    .line 168
    .line 169
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/instagram/util/ContactHelper$Contact;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/util/ContactHelper$Contact;

    .line 175
    :goto_0
    return-object v0

    .line 172
    :cond_0
    new-instance v0, Lcom/instagram/util/ContactHelper$Contact;

    invoke-direct {v0}, Lcom/instagram/util/ContactHelper$Contact;-><init>()V

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
