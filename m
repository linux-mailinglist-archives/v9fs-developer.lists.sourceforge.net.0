Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E28D476A43
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 07:15:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxk2l-0003jo-Ei; Thu, 16 Dec 2021 06:15:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zhuran@mail.ustc.edu.cn>) id 1mxk2k-0003jh-1X
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 06:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hlvjmNz9Ta7zMTtduJCDWHluXR2XR4Uohbj95WOScZ4=; b=WQailV27BN5UiqzMJCrnDjip78
 4Qih1bT5GrVU8MykCAHNhynz0etv/qHYkhO1KWXQCjnD+YC02yVYxAZOx90EKo94wPp7uvm36xIsi
 IgrwoY53mHyqslLwz5U36TeZIjUTvLOHYlq1D6Up1JSMEFdXODMchKt2bFQTj3GSRCbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hlvjmNz9Ta7zMTtduJCDWHluXR2XR4Uohbj95WOScZ4=; b=e
 kDQ5kXezH4VT/BkIaTxVwA0UMyxnA86wLpkJQNcZix200RgPKnlnU7EQmC6Opry+H81S3ffPpY1Dz
 9d2uZiTSoMlODMzTfQUhpfXTUsiXHpkKZdkA5zc4PtuS2NqjLvVMpg+sbyUntKizS38qVmWZv6GSd
 EZQJawndKAzbep1Q=;
Received: from smtp2.ustc.edu.cn ([202.38.64.46] helo=ustc.edu.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mxk2e-0001Pc-RQ
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 06:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mail.ustc.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
 Message-Id:MIME-Version:Content-Transfer-Encoding; bh=hlvjmNz9Ta
 7zMTtduJCDWHluXR2XR4Uohbj95WOScZ4=; b=bQk0tpAWwXUMbCpYM6Tb6Q7ajp
 ZS+YeKWFAAh/6u6elisFrtE8nEvqtoHxEjC9wOeQUhw5SkA1uIU9Sk/AtAM3uPFY
 O9RoL0i3KFODRTg0rhE6V88fg/Z1TLU66aEx1vSYQlT2XJNMgAe5F615UAofxdSn
 9Cvw9wIW38GOZyaZk=
Received: from localhost.localdomain (unknown [106.11.196.150])
 by newmailweb.ustc.edu.cn (Coremail) with SMTP id
 LkAmygDX3GxT2bphT1F7AA--.949S4; 
 Thu, 16 Dec 2021 14:14:44 +0800 (CST)
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 davem@davemloft.net, kuba@kernel.org
Date: Thu, 16 Dec 2021 14:14:39 +0800
Message-Id: <20211216061439.4186-1-zhuran@mail.ustc.edu.cn>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CM-TRANSID: LkAmygDX3GxT2bphT1F7AA--.949S4
X-Coremail-Antispam: 1UD129KBjvdXoW7XFykur1ftF1kJr13WFykXwb_yoWfKrbEka
 48Z39Fvr1UAFW3CrWUCw4rXrn2kw4fGF4UJ39xKayI934DAFs8W3ykKr9xX3W8Wr1DCrn3
 tFZ8Xwn0vw1fujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbwAFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_
 Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
 jxv20xvE14v26r106r15McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr
 1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxAIw28IcxkI7VAKI48J
 MxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwV
 AFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv2
 0xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4
 v20xvaj40_Zr0_Wr1UMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAF
 wI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUZa9-UUUUU=
X-CM-SenderInfo: x2kx2t3q6ptxnoox23vfohv3gofq/
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Fix typo in the comment for p9_virtio_create() couldlook ==>
 could look Signed-off-by: zhuxinran <zhuran@mail.ustc.edu.cn> ---
 net/9p/trans_virtio.c
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
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
X-Headers-End: 1mxk2e-0001Pc-RQ
Subject: [V9fs-developer] [PATCH V2] 9p/trans_virtio: Fix typo in the
 comment for p9_virtio_create()
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

Fix typo in the comment for p9_virtio_create()
couldlook ==> could look

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
