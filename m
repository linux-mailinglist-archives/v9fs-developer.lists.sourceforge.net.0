Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4137739D2A9
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Jun 2021 03:39:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lq4Ed-0003DB-S7; Mon, 07 Jun 2021 01:39:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <changbin.du@gmail.com>) id 1lq4EV-0003Bo-FL
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 01:39:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JhZN7KKaKCv7HNFS5txFLEUB6UgBFOh/XOVxD+WngTc=; b=dfdHbfjG7RActEwdZIwhRyHS92
 mATVrIFFJFQVFeMFDOedYgzkfGov3XTbAwhqYviFjmutufm0QBQ5nCHir6hB5kNXs8iv+7QK6EBG4
 v7aYu/brMd/CVxkC8qEvM/+rnVD6BscGSAbkPkCfFlrwtnx4vkbA6ggjNUSJpBMhW72M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JhZN7KKaKCv7HNFS5txFLEUB6UgBFOh/XOVxD+WngTc=; b=cJf/fYQsQNh7vpFfI7vHlZ7Nmy
 q8Zi6ibO9WFekrkM+Bt9zjD5xP/2fZAF0SP7EnVbTH2ec5pbSfgMuArtkSfjayMHAl8TXqbyCpmDx
 DhcEPOT9bZDjO1+M2XCIQ4J+7661Whe4fCLxyQs0WOG6vaY+TwOm9s7thPFSn1SXLBIU=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lq4EP-00BfvK-Bq
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 01:39:16 +0000
Received: by mail-oi1-f180.google.com with SMTP id v142so16065639oie.9
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 06 Jun 2021 18:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JhZN7KKaKCv7HNFS5txFLEUB6UgBFOh/XOVxD+WngTc=;
 b=p0ja2QyILLQE3xZheBYcONtVgT93DwiUzK0izJcYbc2E2euF/aDA7285cwe6Lb2jqC
 bFw85jWWFrzSLuFIzJjiarn1Rz2O346t7E+aHbscntiXQybfkXHYHVHA5CREYniQl8G+
 KxCQOLrhQy4dfoqmEz7QIPLQqVU7Q122UOO59/NzPLmCU5KAVzCQ98jXoSvrpPZudYz3
 j3HSGY+Otfpyji0hy7TBNOkB4SuiC7xsmdK5uFvzJ4g1ZTnFJt43OHlEdFlkdU0pQy4t
 hgwWzxFm6RvbLIxcn15X1RYeNT2EJ2BrbWo48BFzQe2TeLeDKP9rIwBPyvNoqv5PyiSx
 3ysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JhZN7KKaKCv7HNFS5txFLEUB6UgBFOh/XOVxD+WngTc=;
 b=axdscdGlinwvEqeJBJliV0+/ZPmN457l06s22e/CnufHCwugUFdND2amNL9i088fqo
 GvMnnqCiumlrCryPcNVC3BbiphmLfU5o0+/4QxQ/A9M3ktYMcKMgiwtvkMOTFLylCKUn
 TpUqnY3fwSxU0daRvQXBdptF73Tq/ecc3sC5JZht9gnsvtZuQVTS5hxAMDDn8WN31xlp
 hfLK593FF7M5efmCVeVVlbcKzgI+wwet8YqpZxNIKC6JzVeioOMmbpoHJSkKcfcSFv52
 O84Gs4oWeQIA3fixQUULhCcVBVmFxzx3SHRqXWWLDvtYKJ+1sw6ZW03IWKrwi0ZjJE8Y
 v64Q==
X-Gm-Message-State: AOAM533HMDZ0CGO9uTop+d8h7YxXDZaweuGNGitth0Ho/vPEan2X4dm5
 gIfU2TiMCmNqZVUjDxrbqJFZYfnyOHpNnQ==
X-Google-Smtp-Source: ABdhPJxCVNTIVuq9x/8ALU1cNA0s8JhSoIMxiODWzqG2b2WSiMx+EchW7kGt8WTBuxTN8YREAkfjSQ==
X-Received: by 2002:a17:90a:9bc4:: with SMTP id
 b4mr28848399pjw.42.1623020994934; 
 Sun, 06 Jun 2021 16:09:54 -0700 (PDT)
Received: from WRT-WX9.. ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id f15sm6775672pgg.23.2021.06.06.16.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Jun 2021 16:09:54 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon,  7 Jun 2021 07:09:21 +0800
Message-Id: <20210606230922.77268-3-changbin.du@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210606230922.77268-1-changbin.du@gmail.com>
References: <20210606230922.77268-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lq4EP-00BfvK-Bq
Subject: [V9fs-developer] [PATCH v3 2/3] 9p: doc: move to a new dedicated
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
index 35b2c8f614d0..3da44eef1471 100644
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
