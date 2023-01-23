Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7A867817B
	for <lists+v9fs-developer@lfdr.de>; Mon, 23 Jan 2023 17:31:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pJzjB-00061v-Sf;
	Mon, 23 Jan 2023 16:31:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pJzjA-00061k-QM
 for v9fs-developer@lists.sourceforge.net;
 Mon, 23 Jan 2023 16:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jxizD/Q3eZgm8v2atJKpzOhe4pIRsKwj+ZQgS95fBiA=; b=CaGOEo0JEfwSWkxyLrcem5cMXy
 ZkIhN6io1cm+7+jglxOFBlzvhY3vfnQ1K6tyI7yl/CG3mTd2FadBkbPZnavXFOIji6TGMDbVaTowg
 Olh1w6JOxhGCiRZo18fL9EBQ8P3wOw8a23bEBkP27g6vVafJp83/krm4D3E9hR+QmToY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jxizD/Q3eZgm8v2atJKpzOhe4pIRsKwj+ZQgS95fBiA=; b=ORcbs6CmjoPHpodxYQ9WVg86Hb
 qZP9v7jffrr3JBWf2e7pl3E1/YY4fqQSJZAw5haP17gKoHE87KynxRrWiZxhUgzr3P57XoakkWrai
 vM/JT2AUnLdBOBixnsOKBBbeQ3AiHAZtMQJVKv0soDwcLF8p4mkAu+h/HLYdgkzRoSwQ=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pJzj4-00059R-OZ for v9fs-developer@lists.sourceforge.net;
 Mon, 23 Jan 2023 16:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=jxizD/Q3eZgm8v2atJKpzOhe4pIRsKwj+ZQgS95fBiA=; b=M2NrmAr0OqXvl//udKahfWWwbd
 t+cYTklTVox4MzeOrzE38tFHWDBGtUwMPfBg5HTM7Zrl18oBa6sx8StzUNRKNlG9dYfrnqxO9wY13
 WpxnDLgUfu8vbfQZ3GlAoeYfnINvDQ3wHP619T9Xp4tJIZZpNTTL9VwnNyBCyCra6vOwhI23x7Sjm
 seu9hN8qGfxVzCbhIUoB35QY+2bgL33Au26PTt2VrNCMv/sljWn4lob9ivdXb2TbRaUf1ZrvWLXa8
 grqt2he0F19b14mv3KrVspUNGLZEMS+C9jlURJnQJVvfZkzViqxPdxdHwU0gfsXBhKLaia9QfZX6I
 isSJn4iPMqCx3r401PLYZkjwFZdmH/2eBSVBLURMJJb7jKZsXNRbxQ9r1eFc/eVi3PYT98HMRRWTF
 L88qa0j5mXyBMLlbGd+xrurYB14sQvyOHU0FjC54MzkHma7AFW6oJye1JzhQiNLn8B9zLBuW5/XE2
 y1z3UigeIlmR3KFHj6s8gKISV7hVJtRr0u8Jzbmus3E/dR4qrINCItP6FLl2GJhslceBtNeNj15P+
 vKxj0MImY/TOp2bp3R2h6IkBPgITpkxQGifTudpVECucv/GR9aXfU9HIXksczvq19YnlsxVNK6koq
 dQ4w5vHwe6nKNxKxKQUqGmwg5lZcmYVWJYNSH22gI=;
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net,
 Eric Van Hensbergen <evanhensbergen@icloud.com>
Date: Mon, 23 Jan 2023 17:31:05 +0100
Message-ID: <4478705.9R3AOq7agI@silver>
In-Reply-To: <20221218232217.1713283-1-evanhensbergen@icloud.com>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, December 19,
 2022 12:22:07 AM CET Eric Van Hensbergen
 wrote: > This is the second version of a patch series which adds a number
 > of features to improve read/write performance in the 9p fil [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pJzj4-00059R-OZ
Subject: Re: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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
Cc: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, December 19, 2022 12:22:07 AM CET Eric Van Hensbergen wrote:
> This is the second version of a patch series which adds a number
> of features to improve read/write performance in the 9p filesystem.
> Mostly it focuses on fixing caching to help utilize the recently
> increased MSIZE limits and also fixes some problematic behavior
> within the writeback code.
> 
> Altogether, these show roughly 10x speed increases on simple
> file transfers.  Future patch sets will improve cache consistency
> and directory caching.
> 
> These patches are also available on github:
> https://github.com/v9fs/linux/tree/ericvh/9p-next
> 
> Tested against qemu, cpu, and diod with fsx, dbench, and some
> simple benchmarks.
> 
> Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>

Hi Eric,

what's your plan on this series? I just had a look at your github repo and saw
there is a lot of stuff marked as WIP.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
