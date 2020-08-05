Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A3223CB1B
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Aug 2020 15:43:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k3Jhk-0005LB-7a; Wed, 05 Aug 2020 13:43:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mst@redhat.com>) id 1k3Jhj-0005L0-C4
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Aug 2020 13:43:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rLyznuEr+YtS56JlIu4IevBHcH0S591inceyWkYffOs=; b=K2sfXdGRpybbQh1Eye7YegU9NQ
 MC1T6AFvfKwS0R/4Lh6p1e8Sgf9ho8B8u6PWLcJnviHFYqS14RT/cF/CnH/pJctVAwsZ84No11Jf5
 fsA/NjpOrS6472fCE84ZSF76Rourrr2wsu9LB0Z1Xbu3FmDUbsmsMrOdjKvEZ4ehnVIg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rLyznuEr+YtS56JlIu4IevBHcH0S591inceyWkYffOs=; b=IGcTi2py5zVqADCA/UGrJeLa/i
 hLoWkGUFLAUMhTD6bYve0HAejz4/kKbG/OM/RLZEktEkXgtPK9yZD+1jbw4YUpU2fGQ4IlyL/JwGB
 2cmeB5DKJ6LlKNu5I5JnJm+wHYLftuq3ZrLJyEPeEgI2iFcM1swiA10hr1wdkk3ORJHg=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k3Jhi-00FD6D-8G
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Aug 2020 13:43:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596635012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rLyznuEr+YtS56JlIu4IevBHcH0S591inceyWkYffOs=;
 b=CLmWPK3wWYa+aQu8ABFfUQVKYJoYAuxOW8AsjNfwxStHfbepObaClOgGeQ0TE3s989kKlK
 FRtNyUFhzUjqNH2UPMJgODNYwAn8Kq5ed5LWy7pEKl+GpTTtUTM1cyeus8m9gN2K0uDxuD
 fJ3KFjAU1hJUh+wjhIDMgevaZx2aU6I=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-486-a3XdaP9POzW8RjP1MZaAMQ-1; Wed, 05 Aug 2020 09:43:29 -0400
X-MC-Unique: a3XdaP9POzW8RjP1MZaAMQ-1
Received: by mail-wr1-f72.google.com with SMTP id t3so12558928wrr.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 05 Aug 2020 06:43:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rLyznuEr+YtS56JlIu4IevBHcH0S591inceyWkYffOs=;
 b=Vvnds0heK8TcVldperx9lp9y2i4AvNSxptC2mq/up+hcbiwtMhlTsIiDOIqzibLb4t
 KgyNah3e1XVzhi9YP+NgcuiIazS9YogKhjgzfRNohep2Bz/+/+FOkyfuy7gs9xVaKpmB
 ye9QrqiXXbNsRrM8R84JkP2Zsi3NzVAOP2iNxor94dw71MKkE6zkDlGePdIRLtnN65tR
 XuiparKpOKWyx73Hr7vKBOv7fgJQlUbwJqPEmGc1iZExdxKUUpK+Mi+ZnhP0sKC8RpHg
 orDBmim6NErydI8dHv+q0p7kNaMF44YJCVgaMELxEhY9yna/7s3WLQQddhnIyrFDiolz
 G+1g==
X-Gm-Message-State: AOAM533J8gGndpYatuS/JdvDt9tNlUtnYJpjMC+hrguu/Jv0FN6MxbcY
 F8c+o4qJC6Pkbz1XTDUuOdKM1pbi0cps0t1X1gzF09d+F8JIfypOsiObe/48y9CUl1EU+fl+nHr
 +U5CU213OPuDW21dGhGjn08uyfHbx2c6nggI=
X-Received: by 2002:a1c:6a05:: with SMTP id f5mr3278043wmc.162.1596635008084; 
 Wed, 05 Aug 2020 06:43:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2OznmEqQQuS3Gj15cuXvaM9QXX3f4/5FduhQJ7Ds5R+28pqvqB/Ctrz8niF5YwYSRgpWi9w==
X-Received: by 2002:a1c:6a05:: with SMTP id f5mr3278028wmc.162.1596635007890; 
 Wed, 05 Aug 2020 06:43:27 -0700 (PDT)
Received: from redhat.com (bzq-79-178-123-8.red.bezeqint.net. [79.178.123.8])
 by smtp.gmail.com with ESMTPSA id
 g25sm2752597wmh.35.2020.08.05.06.43.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Aug 2020 06:43:27 -0700 (PDT)
Date: Wed, 5 Aug 2020 09:43:25 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Message-ID: <20200805134226.1106164-5-mst@redhat.com>
References: <20200805134226.1106164-1-mst@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20200805134226.1106164-1-mst@redhat.com>
X-Mailer: git-send-email 2.27.0.106.g8ac3dc51b1
X-Mutt-Fcc: =sent
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k3Jhi-00FD6D-8G
Subject: [V9fs-developer] [PATCH v3 04/38] virtio_9p: correct tags for
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
 Cornelia Huck <cohuck@redhat.com>, virtualization@lists.linux-foundation.org,
 v9fs-developer@lists.sourceforge.net, Jason Wang <jasowang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tag config space fields as having virtio endian-ness.

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
Reviewed-by: Cornelia Huck <cohuck@redhat.com>
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
