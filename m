Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD805EDD4D
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 14:57:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odWd6-0005ld-5A;
	Wed, 28 Sep 2022 12:57:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1odWd4-0005lR-IA
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 12:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pCtCdR4hcSJXdfEpM15FpAxB0Mo5A7EEJ67NwSJQlD4=; b=ilpW5/C83uWwbOBnghvRqocNmL
 2PMU2n+nph/alo23DM3r40NQRnVIWblfjf7g3gHU1eNSsBDP57VxUKaMHdXga6tCY+yJu8sjwh5lt
 h5OOyuPLBzxriEPbAGDZmkctVj6VdCR5ltamy1ne8Ih2C/azESbP4jL/Ez/xH3+QW1is=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pCtCdR4hcSJXdfEpM15FpAxB0Mo5A7EEJ67NwSJQlD4=; b=hYtC7x0mwLje0TO4mxUHwAruIK
 v+St3bBh5+mQkXOKXctzlz137fPAYST54X5qlABcFZYGqWlMPoY7yAnOikUBbAeKXhohMBLU8KOrx
 nVYz8x0+ie9wyLCIEOIEjsCTZD088nCA/UsVS06YENrZZjulUUGVseEGMUhuqA7SscJA=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odWd3-005ZGV-Ek for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 12:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=pCtCdR4hcSJXdfEpM15FpAxB0Mo5A7EEJ67NwSJQlD4=; b=WitypfhxKF/58dGgak3ePV28B/
 CECE5zOa4g68BOwEybMiWzUgh2lQSafiaBV2qFyMz8gOMuwT4IV4XkNqO1UZfOpESzwm4xEAWte/u
 R3hWHy0ORt6fyyRgaGy2Odv5a54K4lSOH8SCGVCvBNzyd0WMHs2WYt0D6FtDyo6m/K67nAUZ9E9gS
 qRJLWU+ZqcLPVCI3TiUdO5g567g7LJ3n6f9FnOjO3fBXgD8jV+JR4ldxDYSHPNFpHH2U+dsmBu0u4
 MRl3HH/BzdfUMDGobLcUpecgrQCui8v3G/BsIdZSuPgLF8Y+UibNF0Lok8OTHtGei5TNSKv59dAT5
 Y1CZR/vWFMo3C2zYD1wU2ZImYASUdiQwU5R7NeG6KGHvLCP5Hc3y+00cPFqOj/FILyafqPs6vYkPL
 5H8LB0hb/IR+nRtqlNze3u2gjPRgMJ8GglWJmHJwI66fKwHQVJ3sDL9gUgezv/GvAnIbRCI5GtU/b
 ffifn6sVUapBgVBNa8fAiySfZaAyIC6pAgbDgtfDNS/LTl/ZKzpzy37C6Y1qVh8n1GDuaKG3h1iuS
 cTtjb3pxHR5pcfXJRhIWra5suQ/eCXw2PIsUhbmYn5uxXOELlDUt82xbKKEV9EIs5dnmzqA7345uV
 us8/rw0VHUc2l0Rd0z3pG41OB6/SONYUPxrz2bz4k=;
To: asmadeus@codewreck.org, Leon Romanovsky <leon@kernel.org>
Date: Wed, 28 Sep 2022 14:57:07 +0200
Message-ID: <1783490.kFEjeSjHVE@silver>
In-Reply-To: <YzQ12+jtARpwS5bw@unreal>
References: <00000000000015ac7905e97ebaed@google.com>
 <YzQuoqyGsooyDfId@codewreck.org> <YzQ12+jtARpwS5bw@unreal>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mittwoch, 28. September 2022 13:54:03 CEST Leon Romanovsky
 wrote: > On Wed, Sep 28, 2022 at 08:23:14PM +0900, asmadeus@codewreck.org
 wrote: > > Leon Romanovsky wrote on Wed, Sep 28, 2022 at 01:49:1 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1odWd3-005ZGV-Ek
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 rdma_close
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 syzbot <syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 28. September 2022 13:54:03 CEST Leon Romanovsky wrote:
> On Wed, Sep 28, 2022 at 08:23:14PM +0900, asmadeus@codewreck.org wrote:
> > Leon Romanovsky wrote on Wed, Sep 28, 2022 at 01:49:19PM +0300:
> > > > But I agree I did get that wrong: trans_mod->close() wasn't called if
> > > > create failed.
> > > > We do want the idr_for_each_entry() that is in p9_client_destroy so
> > > > rather than revert the commit (fix a bug, create a new one..) I'd
> > > > rather
> > > > split it out in an internal function that takes a 'bool close' or
> > > > something to not duplicate the rest.
> > > > (Bit of a nitpick, sure)
> > > 
> > > Please do proper unwind without extra variable.
> > > 
> > > Proper unwind means that you will call to symmetrical functions in
> > > destroy as you used in create:
> > > alloc -> free
> > > create -> close
> > > e.t.c
> > > 
> > > When you use some global function like you did, there is huge chance
> > > to see unwind bugs.
> > 
> > No.
> 
> Let's agree to disagree.
> 
> > Duplicating complicated cleanup code leads to leaks like we used to
> > have; that destroy function already frees up things in the right order.
> 
> It is pretty straightforward code, nothing complex there.
> 
> Just pause for a minute, and ask yourself how totally random guy who
> looked on this syzbot bug just because RDMA name in it, found the issue
> so quickly.
> 
> I will give a hint, I saw not symmetrical error unwind in call trace.

OK, maybe it's just me, but ask yourself Leon, if you were the only guy left 
(i.e. Dominique) still actively taking care for 9p, would those exactly be 
motivating phrases for your efforts? Just saying.

From technical perspective, yes, destruction in reverse order is usually the 
better way to go. Whether I would carve that in stone, without any exception, 
probably not.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
