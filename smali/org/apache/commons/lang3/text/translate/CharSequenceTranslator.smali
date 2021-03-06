.class public abstract Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.super Ljava/lang/Object;
.source "CharSequenceTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hex(I)Ljava/lang/String;
    .locals 2
    .parameter "codepoint"

    .prologue
    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
.end method

.method public final translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .parameter "input"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 59
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 6
    .parameter "input"
    .parameter "out"

    .prologue
    const/4 v1, 0x0

    .line 76
    if-nez p2, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p1, :cond_2

    .line 98
    :cond_1
    return-void

    .line 83
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v0, v1

    .line 84
    :goto_0
    if-ge v0, v3, :cond_1

    .line 85
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v4

    .line 86
    if-nez v4, :cond_3

    .line 87
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    .line 88
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write([C)V

    .line 89
    array-length v2, v2

    add-int/2addr v0, v2

    .line 90
    goto :goto_0

    :cond_3
    move v2, v0

    move v0, v1

    .line 94
    :goto_1
    if-ge v0, v4, :cond_4

    .line 95
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 97
    goto :goto_0
.end method

.method public final varargs with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .locals 4
    .parameter "translators"

    .prologue
    const/4 v3, 0x0

    .line 108
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 109
    aput-object p0, v0, v3

    .line 110
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v1, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    return-object v1
.end method
