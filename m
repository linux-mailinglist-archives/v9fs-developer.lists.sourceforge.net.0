Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A512B23AE90
	for <lists+v9fs-developer@lfdr.de>; Mon,  3 Aug 2020 22:59:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k2hY1-0004GX-RW; Mon, 03 Aug 2020 20:59:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mst@redhat.com>) id 1k2hY0-0004GQ-Mu
 for v9fs-developer@lists.sourceforge.net; Mon, 03 Aug 2020 20:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EgJGJjLXNDNxv1S9tFSxLl/zl31va0ARwAnPHhIniqo=; b=XZxITUR/5rpfYEeZi+HJObVoAL
 QqtTn9YCxu6XI71orV2hu+QfTA+gS10TKQXHnbQDtnNlBC8/JPOh/NRx5kLox9xWpxPG3gQMW0qcZ
 QCtkj1gFGg3LJSYDroAF3Sce+4fYQ0k0AVxSxtSK2JPTNhYCd6Pm3wfRZeI8JGOJxADw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EgJGJjLXNDNxv1S9tFSxLl/zl31va0ARwAnPHhIniqo=; b=fTWnQSJt8VKJaPLYDEONpXiSOt
 /xwCUZBXPkTBkAUjuZbchBgTfbYdnzcBQ8wqQpbNSAa3weMkq8qQUP1H7o9ar0aX7AuQ8Z94QpcYs
 Np1lgYGy1FA8DwPh4UoSVWdFssUaZnqwympmL7BpbW+rMFSLgd39SqrduVTCUJsog9Jk=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k2hXz-001qbh-AE
 for v9fs-developer@lists.sourceforge.net; Mon, 03 Aug 2020 20:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596488337;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EgJGJjLXNDNxv1S9tFSxLl/zl31va0ARwAnPHhIniqo=;
 b=LyRuZKxX7eK2cmQZVOVIPasxC0CyFldaVZc9fkMcJQN+xUl8PoMmsfOQ9mICnre2gZr9Bk
 o5j+ja+bVCNbQWdi4Ot/HWJd2qMRUyUNPCiJdguiEFaXtGgAkIf07ORRtAtppE/0Oyat8p
 7k3LPuQl3rQ6qnah0xnZM9U9sz0yHKE=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-r6ASerfJPvi79jf8PO947A-1; Mon, 03 Aug 2020 16:58:55 -0400
X-MC-Unique: r6ASerfJPvi79jf8PO947A-1
Received: by mail-qv1-f70.google.com with SMTP id z10so3662151qvm.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 03 Aug 2020 13:58:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EgJGJjLXNDNxv1S9tFSxLl/zl31va0ARwAnPHhIniqo=;
 b=XZwS208HKoijxwgu07kDGRYSfD4aA9qWXjlTIu4rzhqzCMNnGjbZC+0OvkXUNdKvsc
 vI7ixsyqPfnVKg5zTSGAdiGAsq/DI9/cMfhmqsoTwW1pfMi5bKt1Cr36aqqTE39ZGsjw
 cL52w3qN+fEkukxRpMWmiqNfTx5ZWdaAWk5r3cdVo+yjnDxzeEGyKQTmRgXnaFvisdmQ
 VlH3Kr4GHKXppcyOFM6LwLQEF8afkqRh4Lkk/nU5H7ipmSYN4kzZrubmk4SQ/Z/yzeYb
 kxEyXXUKlOgKsfJTdkBJfGJ5hlCrVeMgqIxpmPcIhZEwLCIYTJwCiSliAzj+cIEKa3uK
 FEEA==
X-Gm-Message-State: AOAM533VVUY6OQDxjMPqtNbZFJcDCWRs/xzsfEFK4yMlvPC1Xl2w9r6k
 yytWgM81D9+8IktxYo6okrtdQVV9egPr0CcNJq2vXp6O3W5VLZL/VIBGq/nvxDr56B4Kj6oLovp
 zqVSvkzv9HQUNCYqynvs+nykEukgBPiW8Nrg=
X-Received: by 2002:ae9:e00b:: with SMTP id m11mr16520747qkk.341.1596488335097; 
 Mon, 03 Aug 2020 13:58:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzhufE6JFaK7bGmm6mLbB9GDhDAi6TBHVwCMJewMzhq9hJKY2E/SiLeAoUb/AkDMVbg0hKQkg==
X-Received: by 2002:ae9:e00b:: with SMTP id m11mr16520707qkk.341.1596488334744; 
 Mon, 03 Aug 2020 13:58:54 -0700 (PDT)
Received: from redhat.com (bzq-79-177-102-128.red.bezeqint.net.
 [79.177.102.128])
 by smtp.gmail.com with ESMTPSA id n33sm22173580qtd.43.2020.08.03.13.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Aug 2020 13:58:54 -0700 (PDT)
Date: Mon, 3 Aug 2020 16:58:50 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Message-ID: <20200803205814.540410-5-mst@redhat.com>
References: <20200803205814.540410-1-mst@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20200803205814.540410-1-mst@redhat.com>
X-Mailer: git-send-email 2.27.0.106.g8ac3dc51b1
X-Mutt-Fcc: =sent
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2hXz-001qbh-AE
Subject: [V9fs-developer] [PATCH v2 04/24] virtio_9p: correct tags for
 config space fields
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Jason Wang <jasowang@redhat.com>, virtualization@lists.linux-foundation.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tag config space fields as having virtio endian-ness.

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
---
 include/uapi/linux/virtio_9p.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/virtio_9p.h b/include/uapi/linux/virtio_9p.h
index 277c4ad44e84..441047432258 100644
--- a/include/uapi/linux/virtio_9p.h
+++ b/include/uapi/linux/virtio_9p.h
@@ -25,7 +25,7 @@
  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  * SUCH DAMAGE. */
-#include <linux/types.h>
+#include <linux/virtio_types.h>
 #include <linux/virtio_ids.h>
 #include <linux/virtio_config.h>
 
@@ -36,7 +36,7 @@
 
 struct virtio_9p_config {
 	/* length of the tag name */
-	__u16 tag_len;
+	__virtio16 tag_len;
 	/* non-NULL terminated tag name */
 	__u8 tag[0];
 } __attribute__((packed));
-- 
MST



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
