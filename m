Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A513A6D6C
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Jun 2021 19:45:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lsqeP-0000IY-BC; Mon, 14 Jun 2021 17:45:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lsqeO-0000IE-PC
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 17:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6H4VN0TQLGM3nnVWpoc1Pex4P44R3EjC+GamNulSNTA=; b=R9ghpGfjmQNe1vdCH6ynsFP9X2
 OQy4pbcrJt29+5IB+EAHuFbmWWwErziAM8Wtj11pRRHlTLUG4oTbnWkvWFz6PXVqAOOVPymzV8szK
 d9a6VJLHzzR8T++BIDwxRI+tfo/jcIYk98Samz8arngRbtuYcKc3qfQNlbhl694HR82o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6H4VN0TQLGM3nnVWpoc1Pex4P44R3EjC+GamNulSNTA=; b=D1UIl2JHKwGQPlW0YPqlhxOvPf
 3Z93Qb6GPs1Bn80Y0Tu5+FlWOVtcnloDcPwiF3rXdN4d1YOGkQyMAJ0oXKnni2nD3/NuJ4/y+d8+4
 LwR8o0McC5hiCRZS1QyDB1/pQN6IAS+9SMjbBKMexv9K9h2I7hwnFuq6agCPfoy9paPs=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lsqeL-0003K9-2t
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 17:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623692720;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6H4VN0TQLGM3nnVWpoc1Pex4P44R3EjC+GamNulSNTA=;
 b=dhgzdDGFhKzGwSPw7E9P/RcyqidCdzsm398ZkF8wvel3vFwGd4CWYj+u7L6rQYeIe+qOQL
 HHOWBGORxGdId8DEPHU2/h5SVs4ecqu1tLB1ztqxt2r7jVQor0oD6wYD6KbpqdVe5SgXHI
 RLP7wsCVoRJ0ovEsUrl4P0WPKKU3Kvc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-fPxLTNScPqebiCAFCZVQ7g-1; Mon, 14 Jun 2021 13:45:19 -0400
X-MC-Unique: fPxLTNScPqebiCAFCZVQ7g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69D119F936;
 Mon, 14 Jun 2021 17:45:17 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-174.rdu2.redhat.com [10.10.114.174])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D482160657;
 Mon, 14 Jun 2021 17:45:06 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 62478225FCE; Mon, 14 Jun 2021 13:45:06 -0400 (EDT)
From: Vivek Goyal <vgoyal@redhat.com>
To: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtio-fs@redhat.com
Date: Mon, 14 Jun 2021 13:44:54 -0400
Message-Id: <20210614174454.903555-3-vgoyal@redhat.com>
In-Reply-To: <20210614174454.903555-1-vgoyal@redhat.com>
References: <20210614174454.903555-1-vgoyal@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lsqeL-0003K9-2t
Subject: [V9fs-developer] [PATCH v2 2/2] init/do_mounts.c: Add 9pfs to the
 list of tag based filesystems
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
Cc: hch@infradead.org, miklos@szeredi.hu, richard.weinberger@gmail.com,
 dgilbert@redhat.com, dhowells@redhat.com, viro@zeniv.linux.org.uk,
 stefanha@redhat.com, v9fs-developer@lists.sourceforge.net, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add 9p to the list of tag based filesystems. I tested basic testing
with kernel command line "root=hostShared rootfstype=9p rw" and it
works for me.

Signed-off-by: Vivek Goyal <vgoyal@redhat.com>
---
 init/do_mounts.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/init/do_mounts.c b/init/do_mounts.c
index 2a18238f4962..7c86bfdab15b 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -35,6 +35,9 @@ static char *__initdata tag_based_rootfs[] = {
 #if IS_BUILTIN(CONFIG_VIRTIO_FS)
 	"virtiofs",
 #endif
+#if IS_BUILTIN(CONFIG_9P_FS)
+	"9p",
+#endif
 };
 static bool __initdata tag_based_root;
 static int root_wait;
-- 
2.25.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
