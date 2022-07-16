Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C80DA576DBB
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 14:10:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCgct-0008Hd-Uz; Sat, 16 Jul 2022 12:10:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oCgcm-0008HR-7D
 for v9fs-developer@lists.sourceforge.net; Sat, 16 Jul 2022 12:10:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lJTkwXl58eYaowLrV3xUdNnwzw+6NT69JaoxraY3mBY=; b=e/8BlAw6VGZpBUjyiR/sMEZoRc
 BR6IeLHWtrkcNjzE3D1X1qalSD+pq/yTr3cwrQTJ9OMkER4qrVig8MjP6yVIOY6jK16A9FMp4AFK3
 6heUX2U4GBEHil3MUBwwqtM++sYLDPNhckL6ehHPCoX2JiaqsWMuFgKUxTpk5mdl6FQo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lJTkwXl58eYaowLrV3xUdNnwzw+6NT69JaoxraY3mBY=; b=C9UuV8miGv+nC9EbakBhhs5GzU
 lF2ZCYzZpf37nAyeOaPGPZt3YP+brwlON0Piw6bsrrR4cKFjaHhcLtZ6ANEA4KcN/w/G0vQtkn3oU
 Pb0rUmPXvRwVTd1qR/uXnE1ZgLPJtkNl+CKSAcMvPO/7WIOBDu6EF+5GUHcCc00SbqaI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCgcg-00086Y-23
 for v9fs-developer@lists.sourceforge.net; Sat, 16 Jul 2022 12:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=lJTkwXl58eYaowLrV3xUdNnwzw+6NT69JaoxraY3mBY=; b=EI8+37YJtaHw2wjXMeukbElhHY
 95/ctztpHGoQTXmbqAR0/v7cSXqfxTNFX//TOvzcUebMkZ9goDvpW5orqXj54fAry481+YAuDJYZq
 1oMj+efpwDHbm8Fvb7SmGdeO9ARNZa0vJcdPf0IAHnmBIyUzXECOiHSc5xP8PMvZG5F1WuTKbIzyM
 NwRbdwYAa1MEtwDyy2KcquqArpoQBZCSbNdxesLLXW8rBtt1bDOk1XxY6F5Ojw1lSz9hUs1k1AqRm
 7YnWhoYBpPRooOJskYtnF4kbcS4zew3aoji6/EIe3WhZnEsu+mgDvaTMDNpQjtsCvhzyRINcqc8hq
 wUnG8SlsLBLwwfeJ65BqkBpHKt4afFBbXLODh3dmCQWRmnk5VzeSHu5uiIdm66rJ+ixkoDOGebfPk
 ZvAlvW1r3mjeKDujNmV1885cZAi0q8IwisA+zT9JAWHDC2ZeVJtmUwM52qDFpmt9y1RUh9vPx261Y
 LdFQeQ0VCSs5V6QVcivI6D2Oguhqgj0vovOeMotQE1xIb4hb9km0sBQmnTgp97xZTOjcRMchoX/Vs
 hBwOp2mRf1wXBESrKBfOdnR79KLwHIA3qeProu40jCVWAIUxpMVGOI0lFIofv2omNLDT/KTA3MS66
 MIA9tXK/95vtGoPDJ+r3LS4+x3drHNEyD4Ex0Z5ws=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Sat, 16 Jul 2022 14:10:05 +0200
Message-ID: <4065120.gss6piHCF5@silver>
In-Reply-To: <YtKm4M8W+rL+buNj@codewreck.org>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
 <6713865.4mp09fW1HV@silver> <YtKm4M8W+rL+buNj@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Samstag, 16. Juli 2022 13:54:08 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Sat, Jul 16, 2022 at 11:54:29AM +0200:
 > > > Looks good to me, I'll try to get some tcp/rdma testing [...] 
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
X-Headers-End: 1oCgcg-00086Y-23
Subject: Re: [V9fs-developer] [PATCH v6 00/11] remove msize limit in virtio
 transport
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 16. Juli 2022 13:54:08 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Sat, Jul 16, 2022 at 11:54:29AM +0200:
> > > Looks good to me, I'll try to get some tcp/rdma testing done this
> > > weekend and stash them up to next
> > 
> > Great, thanks!
> 
> Quick update on this: tcp seems to work fine, I need to let it run a bit
> longer but not expecting any trouble.
> 
> RDMA is... complicated.
> I was certain an adapter in loopback mode ought to work so I just
> bought a cheap card alone, but I couldn't get it to work (ipoib works
> but I think that's just the linux tcp stack cheating, I'm getting unable
> to resolve route (rdma_resolve_route) errors when trying real rdma
> applications...)
> 
> 
> OTOH, linux got softiwarp merged in as RDMA_SIW which works perfectly
> with my rdma applications, after fixing/working around a couple of bugs
> on the server I'm getting hangs that I can't reproduce with debug on
> current master so this isn't exactly great, not sure where it goes
> wrong :|
> At least with debug still enabled I'm not getting any new hang with your
> patches, so let's call it ok...?

Well, I would need more info to judge or resolve that, like which patch 
exactly broke RDMA behaviour for you?

> I'll send a mail to ex-collegues who might care about it (and
> investigate a bit more if so), and a more open mail if that falls
> short...
> 
> --
> Dominique






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
