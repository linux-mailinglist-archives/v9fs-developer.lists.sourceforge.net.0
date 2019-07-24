Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3002272620
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qZ-0000Ml-E1; Wed, 24 Jul 2019 04:25:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qX-0000MY-Rd
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I1wDMaqOj/gzGRufAfLYBvs0e80ibIJerHEY6qRx+9Q=; b=hefmAzvfD1TmZ9m7H1el4ewyAk
 yln3SQWexrNUKndP7hKzrwof4LID7WgIPtpbCHTT7QgWlU9FnxRLcIz22Wnjk53/jaz6evO0m1jGx
 ykA5GH20x5PtAO7VZT6sDFJzJhMnrOxsDj2cPTicy8/gM3PRzQiM1oAYW/lLMklGgpQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I1wDMaqOj/gzGRufAfLYBvs0e80ibIJerHEY6qRx+9Q=; b=JYuSoKCOxkiNfIfUmjnu+ilKIV
 3lZTXNqzyBtGxomU7KOY707QLPpuEPJuPEJwS0A3lelA+3eSIJXI0/g98NgYi2QA3k/yh1q9CZ6BZ
 MhHByGSWEH0fJ70VTlW8Bq4SCCXpgBDznpEZ8GZlcezZfTKFl/9GskVabu4ZBQNTD7lM=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qW-00FRUm-1R
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:45 +0000
Received: by mail-pg1-f194.google.com with SMTP id o13so20495925pgp.12
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I1wDMaqOj/gzGRufAfLYBvs0e80ibIJerHEY6qRx+9Q=;
 b=AJiRp1Uswxxxj2fjLfbqacoLwH06WJ9mszsK/zlNhFuhNoSLtvKRmhFo9KLI7JLl8B
 hxIxG1xThvmkqqGsj4H+PIkZgqzG39WvTfqHCYX31eWH9qZ8HHJptRyRkIYZTdhpSSJA
 nZA7WnB2fukiDrq9dsIiMnZ4oXRSDbx8C0GrWwEoTfJ4nGsrUGvTe9DUv98TbDoHZftU
 2sPJK+pDMsCNPpAzyI5pMUhaliFeOadZMdLhzw1frV4a114QmQGutmlMg9ocT4gPTziz
 ZW1wdryUHfhxRuoKX5pPJ1KukLjcZAbAo24BFz30vzwXdEBQHRvTjXN7uylJkrR8anzL
 2E2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I1wDMaqOj/gzGRufAfLYBvs0e80ibIJerHEY6qRx+9Q=;
 b=BIffzcnAIlMoqsDd7nnwUCGXuev6D5Q3pI3iazS3rejJ/xypFemqh1CT3BcormxDP7
 lq+eldCpXPsnM9dcZPP9Prfj8k/UXPA7CtGG9hObDsszfCUueTN7eDJ0aNtFzSc31SjE
 bRlibhgGjLHqKCX79QrgI57K09QFqg8JUzzDOFPh2t8C4luPiofmwF4xcUPly3kqxphV
 N11C0Vis1FiWw/UJmGLcXVeMAiS+cg02kQ5zv54lm8nrGuIDPymXkVc0NbQpfDLp6sh6
 9y93pQuAjzDGrvogBsZI2Cw+3QHJkaY1mUQAHxLTM+gArbxKARB+iVbhEXfJQhhGs/q/
 rcMg==
X-Gm-Message-State: APjAAAUOi0suuIkd1Cf8nWendGsp0nkNayCvxOo0vFj7LaBb5vIjPZ+Q
 8sHAW8XW2MakolOovNDhmrE=
X-Google-Smtp-Source: APXvYqwVZxneCPfv2nDeo72FQ4K0Ri4nG9i/Jh52gTbxtuFDM1ER91LNrK6Q0r6xmbSBuioIPNnbSg==
X-Received: by 2002:a62:38c6:: with SMTP id f189mr9250236pfa.157.1563942338440; 
 Tue, 23 Jul 2019 21:25:38 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:38 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:18 -0700
Message-Id: <20190724042518.14363-13-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724042518.14363-1-jhubbard@nvidia.com>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qW-00FRUm-1R
Subject: [V9fs-developer] [PATCH 12/12] fs/ceph: fix a build warning:
 returning a value from void function
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, kvm@vger.kernel.org,
 "Michael S . Tsirkin" <mst@redhat.com>,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 Christoph Hellwig <hch@lst.de>, linux-cifs@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-rdma@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 v9fs-developer@lists.sourceforge.net, Jason Wang <jasowang@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 linux-block@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: John Hubbard <jhubbard@nvidia.com>

Trivial build warning fix: don't return a value from a function
whose type is "void".

Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/ceph/debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ceph/debugfs.c b/fs/ceph/debugfs.c
index 2eb88ed22993..fa14c8e8761d 100644
--- a/fs/ceph/debugfs.c
+++ b/fs/ceph/debugfs.c
@@ -294,7 +294,7 @@ void ceph_fs_debugfs_init(struct ceph_fs_client *fsc)
 
 void ceph_fs_debugfs_init(struct ceph_fs_client *fsc)
 {
-	return 0;
+	return;
 }
 
 void ceph_fs_debugfs_cleanup(struct ceph_fs_client *fsc)
-- 
2.22.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
