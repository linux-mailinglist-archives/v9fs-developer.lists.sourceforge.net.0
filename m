Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F36BB4768A9
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 04:26:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxhPY-00085S-3m; Thu, 16 Dec 2021 03:26:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zhuran@mail.ustc.edu.cn>) id 1mxhPX-00085M-4v
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 03:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w1vsd7GanfbTXy86A2IeFU7xbgNKpgAWPzP/c6CKamE=; b=M1xdA4e14gS39tu5srt0Afvt1r
 4SmJiWaX7QNiPUDpnDOVE0qz3KgwN6nApSOYLuLHOOKMpH7k2+4LPPpEZxKnaypKg/2UmaqSyp+39
 Pek5C+kPucPrkEHjeVzIc1oYdqWXIyrpPjeglpyCVynV5+TBwb3oitGRWUcju/G0Ug7Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=w1vsd7GanfbTXy86A2IeFU7xbgNKpgAWPzP/c6CKamE=; b=Q
 36V6y6dmoY3qqhS3IS6S8knHEptZxEdUES/cAsQHeSkAKq1ufmezzpLGUcc4m0Y+9dJBcy6eD2xNK
 AmykOxlXGoLXB6agWMYt9ffW7Vlf4ldWeAktgo1c9px6Ktm1d8KC9+LfgqdILx4EFHeSC/xmQ4GLR
 WK7ENk/afuLs75QI=;
Received: from smtp2.ustc.edu.cn ([202.38.64.46] helo=ustc.edu.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mxhPS-00HBmB-B1
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 03:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mail.ustc.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
 Message-Id:MIME-Version:Content-Transfer-Encoding; bh=w1vsd7Ganf
 bTXy86A2IeFU7xbgNKpgAWPzP/c6CKamE=; b=g2kIdfjkrZ5wS6F0JaJfzCMcxq
 3otmN4Vji2nZ1yida2pXjtGnIO9FFmpg5KJ078Y51mmDe83sFic/tinCVokU4FVZ
 KYI07Ptwsct6hyCwMiP3BbT36Z/6C+00KgmNrO0a9S3haE9JamMYHeuhtAf+kW2w
 WB8Mpl9lANQOhGaPs=
Received: from localhost.localdomain (unknown [106.11.196.156])
 by newmailweb.ustc.edu.cn (Coremail) with SMTP id
 LkAmygCXn2+2rbphTDl6AA--.300S4; 
 Thu, 16 Dec 2021 11:08:39 +0800 (CST)
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 davem@davemloft.net, kuba@kernel.org
Date: Thu, 16 Dec 2021 11:08:36 +0800
Message-Id: <20211216030836.81989-1-zhuran@mail.ustc.edu.cn>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CM-TRANSID: LkAmygCXn2+2rbphTDl6AA--.300S4
X-Coremail-Antispam: 1UD129KBjvdXoW7JF1xur4Uur4UZrW5ArWfuFg_yoWfCwbEka
 48X39Fvr1UAFW3CrWUCw4rXrn2kw4xWa1UX39xKayI934DXFs8W3ykKr9xX3W8Wr4DCrn7
 tFWDXrn0vw13ujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbwkFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_
 Gr1UM28EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
 4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCF04k20xvY0x0EwIxG
 rwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4
 vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IY
 x2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26c
 xKx2IYs7xG6r4j6FyUMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAF
 wI0_Jr0_GrUvcSsGvfC2KfnxnUUI43ZEXa7VU1a9aPUUUUU==
X-CM-SenderInfo: x2kx2t3q6ptxnoox23vfohv3gofq/
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: start my first kernel patch commit Signed-off-by: zhuxinran
 <zhuran@mail.ustc.edu.cn> --- net/9p/trans_virtio.c | 2 +- 1 file changed,
 1 insertion(+),
 1 deletion(-) diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
 index bd5a89c4960d..f7dc561ca516 100644 --- a/net/9p/trans_virtio.c +++
 b/net/9p/trans_virtio.c
 @@ -648,7 +648,7 @@ static int p9_virtio_prob [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.38.64.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxhPS-00HBmB-B1
Subject: [V9fs-developer] [PATCH] virtio: fix spelling error
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
From: zhuxinran via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: zhuxinran <zhuran@mail.ustc.edu.cn>
Cc: zhuxinran <zhuran@mail.ustc.edu.cn>, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

start my first kernel patch commit

Signed-off-by: zhuxinran <zhuran@mail.ustc.edu.cn>
---
 net/9p/trans_virtio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index bd5a89c4960d..f7dc561ca516 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -648,7 +648,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
  * @args: args passed from sys_mount() for per-transport options (unused)
  *
  * This sets up a transport channel for 9p communication.  Right now
- * we only match the first available channel, but eventually we couldlook up
+ * we only match the first available channel, but eventually we could look up
  * alternate channels by matching devname versus a virtio_config entry.
  * We use a simple reference count mechanism to ensure that only a single
  * mount has a channel open at a time.
-- 
2.33.1




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
