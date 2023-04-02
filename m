Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 183BF6D3AFD
	for <lists+v9fs-developer@lfdr.de>; Mon,  3 Apr 2023 01:53:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pj7W7-00082h-J1;
	Sun, 02 Apr 2023 23:53:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pj7Vq-00082Y-4X
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 23:53:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jikUOWaxvLN2UX72FIb16g3NGz9vMYbviyH1VRrCTL8=; b=Kpj9yRUWwN2XMXSFbvRbNCOHb3
 5DeUL92Q2iM8UO/I+Q27cfOwlcNVh0bh2L4EXnMf+PEuArV6aecQ8fQiWz0dUKjaFMroSieRKkh+f
 Lxw5CwNHDuO/Y4SxIY+LTJdn9Ap8jFRCccKw2ocVIkNL4Rq1n1FaraHQJWnbVhs9bi+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jikUOWaxvLN2UX72FIb16g3NGz9vMYbviyH1VRrCTL8=; b=H
 S2Jd/pcP6VwMY0a0Js/xDSRRieDQzMQMCO5RKk5HyICdElVTJo7dt4xPnwzSLZEclXQu3MGfoET1X
 qvSS8aXJEu/jocRuHGjGHU0boZATQzrniaAAeUMq6bqM/R+Ee7uzp132Gp6EFy4lLGXPTPHP8FmjY
 YF83QPedLjk7tZ8E=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pj7Vk-00DCn0-Kc for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 23:53:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 603CFB80ED7;
 Sun,  2 Apr 2023 23:53:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96DF6C433D2;
 Sun,  2 Apr 2023 23:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680479595;
 bh=ltPEbF2nHt2rsmy/3jx2u3rUnXIX6TvuDwOBnZTp1cE=;
 h=From:Date:Subject:To:Cc:From;
 b=DICcnRV+7l/iOeli6NE7rUq5KXhuUFZLIJA/5guYMlMB5Sq8xHi77Kv52SqEKF8eh
 UdQvvHGgPpfHtcKejHrc63UwogMhkoEsw+w/lvS6POh86ziJtVbscWrhhcdMl/xFlG
 sDSBL0uUEgpcdMQ3LNvJknVEpaHKp+Q2PZy9oncZl14I0vjbZrYabVY5Km88il2Fgl
 6krDssp9TABSt+Xat+8TSWL6Kht0uO7j1/brNEZrfAdFA33Z5j7eOK7iziuJyV4kab
 QOrPysL4lFLUd0ge0v7IMfUUnpTzSwOrcd8YVS688WE3oycCLjZu839IT4rmdV2ZKi
 /uDjQiZq203CA==
From: Eric Van Hensbergen <ericvh@kernel.org>
Date: Sun, 02 Apr 2023 23:53:00 +0000
MIME-Version: 1.0
Message-Id: <20230401-ericvh-fix-maintainers-v2-1-ece364bc6543@kernel.org>
X-B4-Tracking: v=1; b=H4sIAFsVKmQC/4WOTQ6CMBCFr2JmbRVaSowr72FYtHWgE7WYKWkwh
 Ls7cAEXs/jeT+YtkJEJM1wPCzAWyjQmAX08QIguDajoIQy60qZqqlpJPJSoeprV21Ga5JCzurS
 2sRrb0BgHUvYuo/LsUohbXeKYzwnnaTM/jLsgzr0TjpSnkb/7iFJv6t9/pVbimWCN9drb0N+ey
 Alfp5EH6NZ1/QFBN6Qw2gAAAA==
To: linux-kernel@vger.kernel.org
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1548; i=ericvh@kernel.org;
 h=from:subject:message-id; bh=ltPEbF2nHt2rsmy/3jx2u3rUnXIX6TvuDwOBnZTp1cE=;
 b=owEBbQKS/ZANAwAKAYj/1ftKX/+YAcsmYgBkKhVq9UaRUyrm7OT+RT06zI14mjM6O1P84aSUf
 KJOkic6ZDmJAjMEAAEKAB0WIQSWlvDRlqWQmKTK0VGI/9X7Sl//mAUCZCoVagAKCRCI/9X7Sl//
 mC/TEAC1d4L6RPq0umdzXwdr5iKjvczkId8RQzBjJDdXwd/HizkIsBMv9ZonNdQ7hgeOap3R6kD
 lPr/rRJ8s1AxPH7Lh6r0sKXaaCkp1exmAtWdEHXGYh1AjoyEj8ZJTbg77g0qb1FVbPFiRflDEm8
 Ds5a5P4g7xBomvcQjQ14uBMxbmc64KP5v/pgOqJnXPOFjglKLs3kUEaMAB+C8uGJ2hH+TkBvfNV
 nMcO2ezYLj7ZkJYJESemyftZTkU5TsChyAab7tDARLijHTlOdQe1plSNMqR1gzimx+1pO16KE22
 /QwBTv0+cmPB919jDAQKFNMjf3pcV8u2Se5fqEW1Umv1xN+qaiYNs4TTxjyXxgae2W/NEjhRbL5
 HPHWlIzss+crw2jSF/jXY0TFfeQECGiRwjApMkhen7K1UlXZ8mCfvXxTVFVDIyoj3FfNj0EoU2h
 O22x1bVnXDebhNHNhyGQQ6E4/hAivxCM37yMQprEpeiRFF1EFk80VFCnh9qf2ghEqjBk1CvfYSN
 Xxo5jzMpqiwAa4JimjFxa1jjUVgLNQvk5t8PcaGtIgXIX/PgjzMmdgaS5oAjsgiIc9K156zSGBm
 kL6fWKvSjj/2IEnZ/vqxUMllWOVrOKgka7trqhe9jaOignxz9AxGAmTouu74uo+Z1Uhmi0o8eMV
 0bSc/PyCECNwpJw==
X-Developer-Key: i=ericvh@kernel.org; a=openpgp;
 fpr=9696F0D196A59098A4CAD15188FFD5FB4A5FFF98
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We've recently moved the mailing list to lists.linux.dev to
 move away from the sourceforge infrastructure. This also updates the website
 from the (no longer v9fs relevant?) swik.net address to the git [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pj7Vk-00DCn0-Kc
Subject: [V9fs-developer] [PATCH v2] Update email address and mailing list
 for v9fs
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: v9fs-developer@lists.sourceforge.net, v9fs@lists.linux.dev,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We've recently moved the mailing list to lists.linux.dev to move away
from the sourceforge infrastructure.  This also updates the website
from the (no longer v9fs relevant?) swik.net address to the github
group which contains pointers to test cases, the protocol, servers,
etc.  This also changes my email from my gmail to my kernel.org
address.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
Acked-by: Dominique Martinet <asmadeus@codewreck.org>
Acked-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 MAINTAINERS | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8d5bc223f305..8799a222048b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -224,13 +224,13 @@ S:	Orphan / Obsolete
 F:	drivers/net/ethernet/8390/
 
 9P FILE SYSTEM
-M:	Eric Van Hensbergen <ericvh@gmail.com>
+M:	Eric Van Hensbergen <ericvh@kernel.org>
 M:	Latchesar Ionkov <lucho@ionkov.net>
 M:	Dominique Martinet <asmadeus@codewreck.org>
 R:	Christian Schoenebeck <linux_oss@crudebyte.com>
-L:	v9fs-developer@lists.sourceforge.net
+L:	v9fs@lists.linux.dev
 S:	Maintained
-W:	http://swik.net/v9fs
+W:	http://github.com/v9fs
 Q:	http://patchwork.kernel.org/project/v9fs-devel/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 T:	git git://github.com/martinetd/linux.git

---
base-commit: 707823e7f22f3864ddc7d85e8e9b614afe4f1b16
change-id: 20230401-ericvh-fix-maintainers-865452e6c43a

Best regards,
-- 
Eric Van Hensbergen <ericvh@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
