Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3DB6344A6
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 20:33:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxZ1f-0005hM-VY;
	Tue, 22 Nov 2022 19:33:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <e0edec84b1c80119ae937ce854b4f5f6dbe2d08c@lizzy.crudebyte.com>)
 id 1oxZ1S-0005hE-0A for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 19:33:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+Lw5Yj6TM+hHPWr+jQTkw9CKbMZOMA2vynPfEzxVjGo=; b=juqWFCEBdbzt0paeQyNZvMUEa+
 dtH7wUn3XmIT0+Tkvk0ehGg4zo6hy9EeH1m8FzbBOw4RIp52fTOjlQPqgjCsivE0lRNMWTL76bjl1
 EEBzTZHoU3SK93wczYK+qKPXgAUuDURXJV3kAwXjBGhRRlEp4A5A4QNuwucE9hhpRCYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+Lw5Yj6TM+hHPWr+jQTkw9CKbMZOMA2vynPfEzxVjGo=; b=b35LlrjAlEhxa4rMe2QxKVqmGP
 q8QNdAqgMWl5geooJgxp0aMeRxegH4nuwWT8WH7bThXrjwcIuVRYnKfwBIOWCOcH0QzbvICWrgCEi
 HGFAmuKasmFQNObdU8c6iCk0RVxEUDpqDA7U7dEW8AfbBFoA6q3fJ46LQ9wbwxlQMTsI=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxZ1P-00ClW8-Td for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 19:33:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=+Lw5Yj6TM+hHPWr+jQTkw9CKbMZOMA2vynPfEzxVjGo=; b=eTkNq
 DEJGfm5EinjESW5SPfc+fH9xo0gJHL/h03ZqpclUoQQQXFv0ZLSwhb5BlB+9e9aOiGvCwTRDsX/D5
 4j1JUcc4URGRLo3e18YP10Rsj8MyV4/WGq4/+zRLyrWcD3O9YB1XDwIHFd+V1f4MNzirKbRYhTnt7
 6HUrNy/JaEWhY3Eh1G3R7b8/dKW5hdzk+f5UuA3FQboCnU6Y5CJjAtlPXf3BYZyze8KZUSw/ZhZeX
 jDli/SxpX7XKTTX8/XBEpKNUE6bcuwPOLUwD+z3QLx4LdqscLfoKx/WStfgh3jbDPFv2KLVwE7gJw
 vzhcJFlGlNmuaX1iXBZs/r9PeOB0g==;
Message-Id: <cover.1669144861.git.linux_oss@crudebyte.com>
Date: Tue, 22 Nov 2022 20:21:01 +0100
To: Dominique Martinet <asmadeus@codewreck.org>,
 Stefano Stabellini <sstabellini@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Follow-up fix for:
 https://lore.kernel.org/linux-kernel/Y3hADWgV9JeajmfF@codewreck.org/
 Dominique, I moved `zc` to the end of the structure to somewhat address the
 layout padding. If you prefer a function argument in the first place, let
 me know and I'll send a v3. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oxZ1P-00ClW8-Td
Subject: [V9fs-developer] [PATCH v2 0/2] net/9p: fix response size check in
 p9_check_errors()
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Follow-up fix for:
https://lore.kernel.org/linux-kernel/Y3hADWgV9JeajmfF@codewreck.org/

Dominique, I moved `zc` to the end of the structure to somewhat address
the layout padding. If you prefer a function argument in the first place,
let me know and I'll send a v3.

v1 -> v2:

  * Move `zc` to end of struct p9_rstatf (to avoid huge padding).
    [patch 1]

  * Fix format specifier for `capacity` (reported by kernel test bot).
    [patch 2]

  * Fix code style. [patch 1..2]

  * Extend and adjust commit log messages. [patch 1..2]

Christian Schoenebeck (2):
  net/9p: distinguish zero-copy requests
  net/9p: fix response size check in p9_check_errors()

 include/net/9p/9p.h |  2 ++
 net/9p/client.c     | 13 +++++++++----
 2 files changed, 11 insertions(+), 4 deletions(-)

-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
