Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 184C6376D91
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 May 2021 02:00:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lfANz-00006r-Gb; Fri, 07 May 2021 23:59:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <changbin.du@gmail.com>) id 1lfANy-00006e-Gt
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 23:59:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZryPiI1aj5OPp2LLfkdKXs07LsCC3xu5eq2Sse1t2n0=; b=ATVNjRSkwpHGCXppF4o5XHy538
 utB9VwIsVNjHi2W2BPkAdvqUDEgJ6fia+KC/5WHuyu3o5lCHlcVbpLtjTIRkXNMJA5MisnjnqvnjL
 UZrmRdb1MpH/KHmz1IReq+rMTyqFhWp7a8eA8ZARzVWxggS5+yYo6O4kAK9DHDuN9Zf8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZryPiI1aj5OPp2LLfkdKXs07LsCC3xu5eq2Sse1t2n0=; b=ZjlYXxGqg6SWFy73KOCmpfkzNu
 1Ua8C8lueOJN+ct94j3Mnu3YhAefJQth5DyA+I1I0P3T5rNsKCmP7DUqC+E0YgzvDUduihtn8jGGB
 DKOfLuHBYiLkH+upB8jYIYWO/iGdaOf7fKsIgVplld1Yd8PcIitCO8H3IRHOYwvwBwuk=;
Received: from mail-pf1-f177.google.com ([209.85.210.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lfANu-00BYK3-FF
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 23:59:58 +0000
Received: by mail-pf1-f177.google.com with SMTP id 10so9143533pfl.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 May 2021 16:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZryPiI1aj5OPp2LLfkdKXs07LsCC3xu5eq2Sse1t2n0=;
 b=NLI91gYxPSA2lEPlvOyZhr/jBcXxIjCAelKLly7HIjFm8/oSyrE+Gswedzvi7AREdz
 KAZciMOQcP3fvwqk0OaVpSbokdURQvfFR4jvOU/AL9EV56oQSRR3pGumnubhuib3yAqZ
 84bronBzNWDIDeNVA/cIcHbCReUB8rkoSDrcI/5HE/R8d55IibI2T1XxyxKKbrBKlrON
 7+7ZxgZXDNVL3zV4DR+055lkuOWI08IZT86cPZczvfH3OGiTg0NRAlyjDcZKNhj6NYoO
 PvhVuNIuQkwoLdob3LnbtbCGBbTdTzD/82bYPgNHUID5om2CvVAty8RoqRVbuPFeBR5z
 cMqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZryPiI1aj5OPp2LLfkdKXs07LsCC3xu5eq2Sse1t2n0=;
 b=UlTyMF7j5nzfoBmwgQJn80W6tCvVEkT49UMa8ACMlADI3KDyyap7faPxVkw9nJ/brm
 TU8wzqNCk0Y9q+IZFmKcFzwd/33UrfTK6564EDlv9j6jPQsTX1n0coPA6cLEqm8Me3OV
 M7Lt6rArzb5/FwEMk0nlQHAuqh5FoOe/MNDxSokHg1krIbFMzAPf1sPE6Tu1gDxAYkjR
 BCLA4pb41l+gXUBGYs096yapdc8aHLxbSM4qtq2YO77XO1+GdDtN4Z6YzC+Fqz/nvzkP
 1XZH/hPGZgRCbbUz2uoZo3RLRDkQ1GeAFkaOpbmAy8qUMJzC/9Z/Yi9629hSumFC0zWA
 YC5A==
X-Gm-Message-State: AOAM5308xdz97/Mw0TxEzn1cPMOygHi2zumN7W5LSwQeBkGbtt593Ss+
 JTYunK8VSW6CLB+rZea/3TKn5rTZ6TcPbw==
X-Google-Smtp-Source: ABdhPJydRJNOEFJNhhy2ZrYutQBrKpcybP3bX1zUkOWnLJNk9+S4uIf2+jkMDNlMaXwiKyx8hNBuoQ==
X-Received: by 2002:a62:5f87:0:b029:263:d07d:e88e with SMTP id
 t129-20020a625f870000b0290263d07de88emr13082747pfb.39.1620431988981; 
 Fri, 07 May 2021 16:59:48 -0700 (PDT)
Received: from WRT-WX9.. ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id g18sm5700449pfb.178.2021.05.07.16.59.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 16:59:48 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Sat,  8 May 2021 07:58:41 +0800
Message-Id: <20210507235842.16796-3-changbin.du@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210507235842.16796-1-changbin.du@gmail.com>
References: <20210507235842.16796-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: swik.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.177 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfANu-00BYK3-FF
Subject: [V9fs-developer] [PATCH v2 2/3] 9p: doc: move to a new dedicated
 folder
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, "Enrico Weigelt,
 metux IT consult" <lkml@metux.net>, v9fs-developer@lists.sourceforge.net,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Later we will add another documentation for v9fs.

Signed-off-by: Changbin Du <changbin.du@gmail.com>
---
 Documentation/filesystems/index.rst         |  2 +-
 Documentation/filesystems/{ => v9fs}/9p.rst |  0
 Documentation/filesystems/v9fs/index.rst    | 11 +++++++++++
 MAINTAINERS                                 |  2 +-
 4 files changed, 13 insertions(+), 2 deletions(-)
 rename Documentation/filesystems/{ => v9fs}/9p.rst (100%)
 create mode 100644 Documentation/filesystems/v9fs/index.rst

diff --git a/Documentation/filesystems/index.rst b/Documentation/filesystems/index.rst
index d4853cb919d2..e53992636a49 100644
--- a/Documentation/filesystems/index.rst
+++ b/Documentation/filesystems/index.rst
@@ -63,7 +63,7 @@ Documentation for filesystem implementations.
 .. toctree::
    :maxdepth: 2
 
-   9p
+   v9fs/index
    adfs
    affs
    afs
diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/v9fs/9p.rst
similarity index 100%
rename from Documentation/filesystems/9p.rst
rename to Documentation/filesystems/v9fs/9p.rst
diff --git a/Documentation/filesystems/v9fs/index.rst b/Documentation/filesystems/v9fs/index.rst
new file mode 100644
index 000000000000..a1e45b89e2a2
--- /dev/null
+++ b/Documentation/filesystems/v9fs/index.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+====
+v9fs
+====
+
+.. toctree::
+   :maxdepth: 6
+   :numbered:
+
+   9p
diff --git a/MAINTAINERS b/MAINTAINERS
index c9f9c89bad13..2d22e2af4d10 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -232,7 +232,7 @@ W:	http://swik.net/v9fs
 Q:	http://patchwork.kernel.org/project/v9fs-devel/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 T:	git git://github.com/martinetd/linux.git
-F:	Documentation/filesystems/9p.rst
+F:	Documentation/filesystems/v9fs/
 F:	fs/9p/
 F:	include/net/9p/
 F:	include/trace/events/9p.h
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
