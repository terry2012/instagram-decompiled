.class final Lcom/a/a/b/gq;
.super Lcom/a/a/b/do;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/do",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:[Lcom/a/a/b/gt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/a/a/b/gt",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Lcom/a/a/b/gt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/a/a/b/gt",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient c:I

.field private final transient d:I

.field private transient e:Lcom/a/a/b/dv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dv",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient f:Lcom/a/a/b/dv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dv",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient g:Lcom/a/a/b/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/dg",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/a/a/b/do;-><init>()V

    .line 49
    array-length v6, p1

    .line 50
    invoke-direct {p0, v6}, Lcom/a/a/b/gq;->b(I)[Lcom/a/a/b/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/gq;->a:[Lcom/a/a/b/gt;

    .line 52
    invoke-static {v6}, Lcom/a/a/b/gq;->a(I)I

    move-result v0

    .line 53
    invoke-direct {p0, v0}, Lcom/a/a/b/gq;->b(I)[Lcom/a/a/b/gt;

    move-result-object v3

    iput-object v3, p0, Lcom/a/a/b/gq;->b:[Lcom/a/a/b/gt;

    .line 54
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/gq;->c:I

    move v4, v2

    move v0, v2

    .line 57
    :goto_0
    if-ge v4, v6, :cond_2

    .line 60
    aget-object v3, p1, v4

    .line 61
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 63
    add-int v5, v0, v8

    .line 64
    invoke-static {v8}, Lcom/a/a/b/db;->a(I)I

    move-result v0

    iget v8, p0, Lcom/a/a/b/gq;->c:I

    and-int/2addr v8, v0

    .line 65
    iget-object v0, p0, Lcom/a/a/b/gq;->b:[Lcom/a/a/b/gt;

    aget-object v0, v0, v8

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3, v0}, Lcom/a/a/b/gq;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/gt;)Lcom/a/a/b/gt;

    move-result-object v3

    .line 69
    iget-object v9, p0, Lcom/a/a/b/gq;->b:[Lcom/a/a/b/gt;

    aput-object v3, v9, v8

    .line 70
    iget-object v8, p0, Lcom/a/a/b/gq;->a:[Lcom/a/a/b/gt;

    aput-object v3, v8, v4

    move-object v3, v0

    .line 71
    :goto_1
    if-eqz v3, :cond_1

    .line 72
    invoke-interface {v3}, Lcom/a/a/b/gt;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_2
    const-string v8, "duplicate key: %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v2

    invoke-static {v0, v8, v9}, Lcom/a/a/a/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-interface {v3}, Lcom/a/a/b/gt;->a()Lcom/a/a/b/gt;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 72
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_0

    .line 76
    :cond_2
    iput v0, p0, Lcom/a/a/b/gq;->d:I

    .line 77
    return-void
.end method

.method private static a(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v3, v0, 0x1

    .line 82
    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "table too large: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/a/a/a/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v3

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/gt;)Lcom/a/a/b/gt;
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lcom/a/a/b/gt",
            "<TK;TV;>;)",
            "Lcom/a/a/b/gt",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    if-nez p2, :cond_0

    new-instance v0, Lcom/a/a/b/gv;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/gv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    check-cast v0, Lcom/a/a/b/gt;

    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/gu;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/b/gu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/b/gt;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/b/gq;)[Lcom/a/a/b/gt;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/a/a/b/gq;->a:[Lcom/a/a/b/gt;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/b/gq;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/a/a/b/gq;->d:I

    return v0
.end method

.method private b(I)[Lcom/a/a/b/gt;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/a/a/b/gt",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-array v0, p1, [Lcom/a/a/b/gt;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/a/a/b/gq;->e:Lcom/a/a/b/dv;

    .line 194
    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/b/gr;

    invoke-direct {v0, p0}, Lcom/a/a/b/gr;-><init>(Lcom/a/a/b/gq;)V

    iput-object v0, p0, Lcom/a/a/b/gq;->e:Lcom/a/a/b/dv;

    :cond_0
    return-object v0
.end method

.method public b()Lcom/a/a/b/dv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dv",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/a/a/b/gq;->f:Lcom/a/a/b/dv;

    .line 220
    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/b/gs;

    invoke-direct {v0, p0}, Lcom/a/a/b/gs;-><init>(Lcom/a/a/b/gq;)V

    iput-object v0, p0, Lcom/a/a/b/gq;->f:Lcom/a/a/b/dv;

    :cond_0
    return-object v0
.end method

.method public c()Lcom/a/a/b/dg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/dg",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/a/a/b/gq;->g:Lcom/a/a/b/dg;

    .line 250
    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/b/gw;

    invoke-direct {v0, p0}, Lcom/a/a/b/gw;-><init>(Lcom/a/a/b/gq;)V

    iput-object v0, p0, Lcom/a/a/b/gq;->g:Lcom/a/a/b/dg;

    :cond_0
    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/a/a/b/gq;,"Lcom/a/a/b/gq<TK;TV;>;"
    const/4 v0, 0x0

    .line 175
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/a/a/b/gq;->a:[Lcom/a/a/b/gt;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 179
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method d()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/a/a/b/gq;->a()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/a/a/b/gq;,"Lcom/a/a/b/gq<TK;TV;>;"
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/a/a/b/db;->a(I)I

    move-result v1

    iget v2, p0, Lcom/a/a/b/gq;->c:I

    and-int/2addr v1, v2

    .line 147
    iget-object v2, p0, Lcom/a/a/b/gq;->b:[Lcom/a/a/b/gt;

    aget-object v1, v2, v1

    .line 148
    :goto_1
    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1}, Lcom/a/a/b/gt;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v1}, Lcom/a/a/b/gt;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v1}, Lcom/a/a/b/gt;->a()Lcom/a/a/b/gt;

    move-result-object v1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/a/a/b/gq;->b()Lcom/a/a/b/dv;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/b/gq;->a:[Lcom/a/a/b/gt;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/a/a/b/gq;->size()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/b/x;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/a/a/b/x;->a:Lcom/a/a/a/h;

    iget-object v2, p0, Lcom/a/a/b/gq;->a:[Lcom/a/a/b/gt;

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/h;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/a/a/b/gq;->c()Lcom/a/a/b/dg;

    move-result-object v0

    return-object v0
.end method
