Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BAE566736
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Jul 2022 12:00:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8fLv-0001dT-AM; Tue, 05 Jul 2022 10:00:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o8fLs-0001dM-73
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Jul 2022 10:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hfguVTYtwGIPAZW3F2nHNrYsfzOFO5Gzn/MKF5X3APE=; b=m6qZ7oPLlFGoP+1quSyvBa0/x0
 +vw0Nn+SuBAI/ETyzBNYEVmdYLRhPvjSAqRnp/lbXeOK+w8QbcwbYQQA94dgaXePJSin/uDY1fXEF
 VfOSYV7ehEBXN/0UJGWZQ9J6Nd0/bbHvnq1Z0OozMXCPdW1oTr9MgIZCmFac/IkngSfY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hfguVTYtwGIPAZW3F2nHNrYsfzOFO5Gzn/MKF5X3APE=; b=bTlkaJw8F3OgDdRssopOaGrv8/
 9clDSd7nz+QKkKLIfBJHdK+japoPr+zKz9NHJh8SJjnoIIf7Kbp48lJ5Zzkz8R5LWdtZyf0SQISx/
 FLTSIrUAT/z7zVhHee4JHtUOwWmMhCXa5y0DMHkE34ZGMRCZnsFTVLC78obOV+9W0cMA=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8fLh-0003af-DN
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Jul 2022 10:00:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=hfguVTYtwGIPAZW3F2nHNrYsfzOFO5Gzn/MKF5X3APE=; b=js1UbpPK+4YZd7XWcFc4g+4A4i
 +/FfUED/+wuXBMtH1MTWO/3xUIJpstl8yshe8/1r8rdE47FtwU3uaNphHFpnYcmk6J4u+BET8CUV9
 /CRb1ws0P/74H4EnXBksOwg39w0IOV8gcX75UEmM5uUorujnUWagaxqQvoqYqdJAEWpoiZioW+3D3
 spyrxU1lTdd3xu0f05zg2bElFlB5Mfv+Frl/UqeJMp3mmOX3807lniWAtwRI3tBrcqezYvO4yxqdz
 NlooT/cBTHXGMiI1uljwKD9smB6bU/qBcGwo0VHCCms25tfS73+UtlOGHrYFMJTh3pf8PbN/po4Sn
 /frhxhS+C86kw5ZHhTx6x89WBx06UpqCmwZ3O44BH+j7lcVsMrFRfbX2cF1Quaes09B4+xAgGd2lc
 +CisZDNnw1nIMRYJP17P3g3qZSvTxb/AhM7163JAvSxbtvJCqD3bl8fw18doUPdelUnBIuw/5fGR+
 2R+xfcSc4qQTbJYObFAqsLR8kFFeXctWhlY0lk5GdlMjn1LVfDy6wLP+CQWbVO1iemBC7XkZGuKa3
 kHMgQodPJf2Xp6uFV1p3pv07HtWCpLKXOSvqF4fILOdUr64FdB6T5ylPMywZx1KP/SiROdhUeZWbK
 7xocmaNkySHHzWGeV1mEmpEQZOyESPG3x3VEr8Jec=;
To: Kent Overstreet <kent.overstreet@gmail.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 05 Jul 2022 11:59:55 +0200
Message-ID: <2478340.1TyedNfDZE@silver>
In-Reply-To: <20220704141946.4yqo2o6ih5zrqjmy@moria.home.lan>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <1877940.0u7pHPiiHj@silver>
 <20220704141946.4yqo2o6ih5zrqjmy@moria.home.lan>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag, 4. Juli 2022 16:19:46 CEST Kent Overstreet wrote:
 > On Mon, Jul 04, 2022 at 03:39:32PM +0200, Christian Schoenebeck wrote:
 > > So simple that it already had one obvious bug (at least). But [...] 
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
X-Headers-End: 1o8fLh-0003af-DN
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 4. Juli 2022 16:19:46 CEST Kent Overstreet wrote:
> On Mon, Jul 04, 2022 at 03:39:32PM +0200, Christian Schoenebeck wrote:
> > So simple that it already had one obvious bug (at least). But as it seems
> > that Dominique already supports your patch, I refrain from enumerating
> > more reasons.
> 
> So snippy.

Yeah, the tone makes the music. If you adjust yours, then I'll do, too.

> > > > However that's exactly what I was going to address with my already
> > > > posted
> > > > patches (relevant patches regarding this issue here being 9..12):
> > > > https://lore.kernel.org/all/cover.1640870037.git.linux_oss@crudebyte.c
> > > > om/
> > > > And in the cover letter (section "STILL TODO" ... "3.") I was
> > > > suggesting
> > > > to
> > > > subsequently subdivide kmem_cache_alloc() into e.g. 4 allocation size
> > > > categories? Because that's what my already posted patches do anyway.
> > > 
> > > Yeah that sounds like you're just reimplementing kmalloc.
> > 
> > Quite exaggerated statement.
> 
> I'm just pointing out that kmalloc() is just a frontend around
> kmem_cache_alloc() that picks the cache based on the size parameter... so...
> still sounds like you are?
> 
> Not that there's never a legitimate reason to do so, but it does raise an
> eyebrow.

So you are saying this change was useless as well then?
https://github.com/torvalds/linux/commit/91a76be37ff89795526c452a6799576b03bec501

Like already discussed in the other email, I omitted those cache size
granularity changes for good reasons, until proofen by benchmark that they
would actually help.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
