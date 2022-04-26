Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AF7510210
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Apr 2022 17:39:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1njNHK-0007R6-54; Tue, 26 Apr 2022 15:39:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1njNHH-0007Qv-Rc
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Apr 2022 15:38:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fj9TPZPeaJ77hv7VnUDtPRvcWeH3nXnlDCA0r5MVNDQ=; b=HTDysaH403JrZaM8SoZGGoRdEw
 B4kqt7u24sZ6vRBp3aJUnrE1yOqSnYKuSafzUwc1dNdPMAcmGRlmgruVMWCUYVGowKqflUms/A5+w
 aHSqd5/CjDWXOQOJX0liu0h22HpVxjD9Vj+k/mOdfoD3mJnLJP+94UDIsA9tJXJOu4Cg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fj9TPZPeaJ77hv7VnUDtPRvcWeH3nXnlDCA0r5MVNDQ=; b=hXsrItw50lZ2IMTtfZWSqUiju1
 deSBNtryTfxeZ1lqVm6iDieE/zPNtPojwUNPvNjB1sN4qb832YYxVS9tB7YbJRIDHrAtyOdvsuxd1
 eYks6VygAWKEPCmfpaOuJ4Ovv9p3AdzO9HYx1oCOSMlkvG3wtNGnuvEJI1eoHwc5+sGA=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njNHB-0002fU-83
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Apr 2022 15:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=fj9TPZPeaJ77hv7VnUDtPRvcWeH3nXnlDCA0r5MVNDQ=; b=fYGzlnHRfohR0LgdCqIxKi6XB+
 sXWizY+2kwiDVxGyfR9tf1NNEwFuxDDVKb/tnxWUVNOP3Iq8MjzMo4+E3KzgL04Sp7+65OF3L3siu
 riide0hOA1paUQpUC01oD5Imje2rYcpN8U+r/mcuobLPEFPymfeE9XGkCWwHDwpMXASZO1454oOov
 bgj1jpmihJNELx8L10AnLflNJ3cqmdD1gZN5xQPxWyiBX9Cu7M//u1eDiQyYIR+hwloWd8yxHYXc7
 iTYnWSrVgKQOv4nOS4vrLWZapThmInl3RFaith8laO3E3rHhDVeLUjIf2qEYeHfbqJqcIbXn1BllL
 J4cdBWFiPtpoUrEhtICMIOGhHZeNdbYwMWS9UV9FNDyucUxUTgZ7QJveU2zoe7kr/ReEk9hfGiwl4
 WZ/9Xql5IBavt3ILNBhTzaiOTqslV9+VbArcK5qO6DYg+YewBiWPdml+uZWgkfaPVXb9RTPm0mRWx
 B3OFRY5AZ6IkuhkgXGxb89Cps4KYIlW96DSLfXePm7a3hEE+bUXWe8AKXQVgaXszOGwaVnSUGrcrw
 ZEAxRR/Z9mizubTC9f59aHi3zaupBPwr3Sfb0FracV0Qr4y3CTn4mp5Nztw5Yy3vPbbGIF7zTlInT
 hYLl47/2IfeVQ5wDdBnweVyGEschux4btBdqBzrrA=;
To: David Howells <dhowells@redhat.com>
Date: Tue, 26 Apr 2022 17:38:30 +0200
Message-ID: <1817722.O6u07f4CCs@silver>
In-Reply-To: <3174158.1650895816@warthog.procyon.org.uk>
References: <YmKp68xvZEjBFell@codewreck.org> <1817268.LulUJvKFVv@silver>
 <3174158.1650895816@warthog.procyon.org.uk>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag, 25. April 2022 16:10:16 CEST David Howells wrote:
 > There may be a quick and dirty workaround. I think the problem is that
 > unless the O_APPEND read starts at the beginning of a page, netf [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1njNHB-0002fU-83
Subject: Re: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
 tests/benchmark (was: 9p fscache Duplicate cookie detected))
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 25. April 2022 16:10:16 CEST David Howells wrote:
> There may be a quick and dirty workaround.  I think the problem is that
> unless the O_APPEND read starts at the beginning of a page, netfs is going
> to enforce a read.  Does the attached patch fix the problem?  (note that
> it's untested)

Patch doesn't apply for me on master:

checking file fs/9p/vfs_addr.c
Hunk #1 FAILED at 291.
1 out of 1 hunk FAILED
checking file fs/netfs/buffered_read.c
Hunk #1 FAILED at 364.
1 out of 1 hunk FAILED
checking file fs/netfs/internal.h
checking file fs/netfs/stats.c
Hunk #2 FAILED at 38.
1 out of 2 hunks FAILED

commit d615b5416f8a1afeb82d13b238f8152c572d59c0 (HEAD -> master, origin/master, origin/HEAD)
Merge: 0fc74d820a01 4d8ec9120819
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Mon Apr 25 10:53:56 2022 -0700

What was is based on?

> Also, can you get the contents of /proc/fs/fscache/stats from after
> reproducing the problem?

FS-Cache statistics
Cookies: n=684 v=1 vcol=0 voom=0
Acquire: n=689 ok=689 oom=0
LRU    : n=0 exp=0 rmv=0 drp=0 at=0
Invals : n=0
Updates: n=2095 rsz=0 rsn=0
Relinqs: n=5 rtr=0 drop=5
NoSpace: nwr=0 ncr=0 cull=0
IO     : rd=0 wr=0
RdHelp : RA=974 RP=0 WB=13323 WBZ=2072 rr=0 sr=0
RdHelp : ZR=13854 sh=0 sk=2072
RdHelp : DL=14297 ds=14297 df=13322 di=0
RdHelp : RD=0 rs=0 rf=0
RdHelp : WR=0 ws=0 wf=0

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
