Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FA2400C98
	for <lists+v9fs-developer@lfdr.de>; Sat,  4 Sep 2021 20:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SDo/+ei4ljrn0eJYd0WMPIBB7vWjMw0vXry6Y8FqZzs=; b=SZL4YowssQsjAhDpYfGz3cOroR
	XABEftCn7NaxUkHXNsiptASbcWr3JeGC3tfuN9VImcvnGgkgosiVhvOBcRx77IFEqNeWptob4wDZf
	a0tf6JElthou8XjxL/zrMQwjQqQ9AAlYPayqNG8WAC7g2bOqUq5Zg3MIy4a9rSgcKV0w=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mMaRR-0008Iv-KM; Sat, 04 Sep 2021 18:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <61ea0f0faaaaf26dd3c762eabe4420306ced21b9@lizzy.crudebyte.com>)
 id 1mMaRD-0008Ic-64
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 18:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2PacTOPFHG4uyTsOWJLrF0cv36iJKa7RYdDCEzjZX9k=; b=Y9THsTeJKu2Xyt6/Gnmz65+NN
 GhZSGXGRrA5KhSwhYLBuOwxtuQtECMiOSr/aDdMpGGywpRpolmvSAX0Qo8bWMGx9uJTgoRKtq5EFw
 kzGS68yRBLFtw6e9UgiLJHJ6dhkMN4LfKcrMDP4EsioXHilNgq9PqARgD8k1RmjOhrNQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2PacTOPFHG4uyTsOWJLrF0cv36iJKa7RYdDCEzjZX9k=; b=lhwLp3qOAmLDcl03p9+ZHtuI+5
 ALG6P0eDKNyQsFPfv0vsp8CnbWIYsobhLCVz/WgGbGEEc3Mzsdq95yKFNkL+k+tjwbIcKGv0wH77K
 78XUKvBf7F3+tDqD2RUB9gCsoFZIqnDMNJcwSBs6pdepJ2+ez+Dk6RDrknXsNkvndOKM=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mMaR2-00Eq7c-F4
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 18:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=2PacTOPFHG4uyTsOWJLrF0cv36iJKa7RYdDCEzjZX9k=; b=d+2Or
 PEGXGJP3Yt2f59HoVYIXXGAFy0rW0BOsPVvLVDxGXLiyPfsybQ2Emm+BOIeoSRTKY4rY8Yiav434d
 Pnx+HTGky3NXrV0MtdDKoEH14LFLNUqj2iDMbe6gplecx91Kh/snbHWttBetF3+qrDPRcgvnJ+a/V
 zzYfZBkxv2KNPkz4IZA3W6yt4C1TE47RjgYGGthi8RdZwXSx3XsGdiYLuI/whyBNSJ1P4+FZWKjZa
 gxc6BAmXEgQkhI5U+PHFaORHfNuCq1IqvxQXebZcea4Qh7kjTfY2rS8y4wfOWjOMDCp6BBtDTmJLh
 ZDFW0EWWCZw3Jx5CNUkKRbArmkSYw==;
Message-Id: <61ea0f0faaaaf26dd3c762eabe4420306ced21b9.1630770829.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1630770829.git.linux_oss@crudebyte.com>
References: <cover.1630770829.git.linux_oss@crudebyte.com>
Date: Sat, 4 Sep 2021 17:12:51 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Let's raise the default msize value to 128k. The 'msize'
 option
 defines the maximum message size allowed for any message being transmitted
 (in both directions) between 9p server and 9p client during a 9p session.
 Content analysis details:   (0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gitlab.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mMaR2-00Eq7c-F4
Subject: [V9fs-developer] [PATCH 2/2] net/9p: increase default msize to 128k
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, Latchesar Ionkov <lucho@ionkov.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Let's raise the default msize value to 128k.

The 'msize' option defines the maximum message size allowed for any
message being transmitted (in both directions) between 9p server and 9p
client during a 9p session.

Currently the default 'msize' is just 8k, which is way too conservative.
Such a small 'msize' value has quite a negative performance impact,
because individual 9p messages have to be split up far too often into
numerous smaller messages to fit into this message size limitation.

A default value of just 8k also has a much higher probablity of hitting
short-read issues like: https://gitlab.com/qemu-project/qemu/-/issues/409

Unfortunately user feedback showed that many 9p users are not aware that
this option even exists, nor the negative impact it might have if it is
too low.

Link: https://lists.gnu.org/archive/html/qemu-devel/2021-03/msg01003.html
Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 1cb255587fff..213f12ed76cd 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -30,7 +30,7 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/9p.h>
 
-#define DEFAULT_MSIZE 8192
+#define DEFAULT_MSIZE (128 * 1024)
 
 /*
   * Client Option Parsing (code inspired by NFS code)
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
