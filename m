Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E38A56836CE
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 Jan 2023 20:49:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMwda-00044f-LA;
	Tue, 31 Jan 2023 19:49:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pMwdY-00044X-2I
 for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 19:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x6SSohfrWBTvLquupcOzYUj9EPYd1PN9f4qb12Van2U=; b=PYSvlflXhQX5u5NrrMnVQcSS0j
 NVArLp6ap49sBTKNNYahdFBgb0YA9CjTvitXYuAXmfOwOnQAyHjerKpwtmc4Uwolh66IC8Dd4whft
 N1w9utoqdN3r8gpkNDpGQQ+IO4W3a2wzU03dyEbSTxKRKKZFWqSai+kstNfiCNP7eeOs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x6SSohfrWBTvLquupcOzYUj9EPYd1PN9f4qb12Van2U=; b=MBNkRsg3e12Jzz+0FphrQzF7X8
 fI0D35OQE4czQN3i65We8cp8n1Zzd4ubr/7bawuBkgtzaqtzff11+3Vs45ii9HnFhyaMZp/nR9FzC
 3Wmunud8OTLs1iZC6Ck83hQ6z+JrR1BErfzWNPmFad5rfNHDPenkYq4+qEMvhjQuCI+A=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pMwdS-005vlv-MX for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 19:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:
 Content-ID:Content-Description;
 bh=x6SSohfrWBTvLquupcOzYUj9EPYd1PN9f4qb12Van2U=; b=kQuDTDyGg4pPUubBa7ACOUcfV5
 LmpYLfrV0fVv63Ta5wO6BA/oRqGcqX32DUXr4Sx+XBtAJNFILTzHXcgSXpv8SCBoaMacO8mzQ0a4G
 n6M6gfXFbQgreJkdV3AXemFUUXvQgSlLW0XgsqIBao88zvw1ENAzzsOlEANRXiHxQzAHRw+NBTEiF
 R++bxpKwNeh3CkrT+Kgpm1qmiBPbX7N++mF2bnqoMsMjMnjchkOVnqmIK9o6h3cMrJMXvLAUPDYb0
 8mp/sigAwB5+8iiedrc7ltVtl5eT68k9VAJry3GVdCkHCVpS7qfAw7x4s7R5/WK1zdndbdwmMOL7N
 S9+CptCeGIHCquoIi9i6wzZpy5seui9gY9TntOiIOCg1OnwKSWvuVaxZuqXalrAk8/yXbJd/eG9nm
 xc+ar53oCJMW2m65T712QGjWMdHwd3IWWmKdKL6KNMkS38+a7387c3BcNe8nMjdKr8Xw/sU1Q/l+w
 Js6zeHBmIkf4pKKOt1NiflqWuM8Z5d75RMVUSR5p7GyMGw38ncNjSU424QDb0h7tLnfu+/0owmpR/
 /ZSmLaDXmPjBe5szhoN7GL6BQSsSPOOFgACtYTAe9cdykzp94nBuLjvpqmyyQKdkVsOlbHPhQRj0A
 GgUUVDwHUW7aE2cYlOZYmUeXnftppd5e1NWF+KTcU=;
To: V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 Eric Van Hensbergen <ericvh@gmail.com>
Date: Tue, 31 Jan 2023 20:49:32 +0100
Message-ID: <39887083.4hhy85Dpq7@silver>
In-Reply-To: <CAFkjPTm3xbUpVJG=LLfxH4jMMdbg-5jHYtJtv23UC6karBTL=g@mail.gmail.com>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <4478705.9R3AOq7agI@silver>
 <CAFkjPTm3xbUpVJG=LLfxH4jMMdbg-5jHYtJtv23UC6karBTL=g@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, January 30,
 2023 6:39:25 PM CET Eric Van Hensbergen
 wrote: > Christian (and others), > > I'm looking at revamping my automated
 regression tests (and maybe > embedding them in github actions [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pMwdS-005vlv-MX
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, January 30, 2023 6:39:25 PM CET Eric Van Hensbergen wrote:
> Christian (and others),
> 
> I'm looking at revamping my automated regression tests (and maybe
> embedding them in github actions, but starting local) for 9p.  Right
> now I'm looking at the diod tests as they seem to be the most
> comprehensive tests for 9P2000.L, ultimately I'm gonna see about
> trying to incorporate a minimal set for 9p2000 and 9p2000.u as well.

Nice!

I try to test your current kernel patches in few days.

> Do you know if there are pre-existing regression tests for 9p in qemu
> that I should try and leverage as part of this?

There are tests on QEMU side:
https://wiki.qemu.org/Documentation/9p#Test_Cases

However those are probably not very useful for what you are doing, as these
tests are written to run without any guest by using its own lite-weight 9p
client. So these are more meant to work on 9p server issues by taking out
guest OS and guest client out of the equation.

I mean if you want to add some tests that would run with a Linux guest, sure,
but it will probably be some work to do.

>       -eric
> 
> On Mon, Jan 23, 2023 at 11:36 AM Christian Schoenebeck
> <linux_oss@crudebyte.com> wrote:
> >
> > On Monday, December 19, 2022 12:22:07 AM CET Eric Van Hensbergen wrote:
> > > This is the second version of a patch series which adds a number
> > > of features to improve read/write performance in the 9p filesystem.
> > > Mostly it focuses on fixing caching to help utilize the recently
> > > increased MSIZE limits and also fixes some problematic behavior
> > > within the writeback code.
> > >
> > > Altogether, these show roughly 10x speed increases on simple
> > > file transfers.  Future patch sets will improve cache consistency
> > > and directory caching.
> > >
> > > These patches are also available on github:
> > > https://github.com/v9fs/linux/tree/ericvh/9p-next
> > >
> > > Tested against qemu, cpu, and diod with fsx, dbench, and some
> > > simple benchmarks.
> > >
> > > Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
> >
> > Hi Eric,
> >
> > what's your plan on this series? I just had a look at your github repo and saw
> > there is a lot of stuff marked as WIP.
> >
> > Best regards,
> > Christian Schoenebeck
> >
> >
> 






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
