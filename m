Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E77AB576AB6
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 01:29:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCUkP-0005qe-SJ; Fri, 15 Jul 2022 23:29:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oCUkO-0005qY-06
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 23:29:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LRh8CqlPIRkzfgBybrqwK+yCpZ0l+gQTLXIpKVRcThc=; b=H0hW5k3aYbjUJTOE/KT8Bk4Fhw
 gJ0ix9opYWdlOWPjS48XxWRcOndL0VrNLDzaiIJyBnA196CyXjc8kU2XjbRhor+/pQVNjS/K/fOCk
 0ri6Pc2ohW5oneTrDtbmhefOSBSn/0SweMQliHuJT5AvNoEE64z/upZM4YUyc8XEk/Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LRh8CqlPIRkzfgBybrqwK+yCpZ0l+gQTLXIpKVRcThc=; b=VI7ncD+TBC8Py47cuponP5GalD
 ZubBr1HgfI/ymYhn1kUsstLG3vF+8JvEHwt+a4J/Z0aV0pKcLf8qnnnoipJgbb9jMduMNIym92WBg
 js9SzGbVPKPzkonwjc5oz/0VrKwJb+U3Ppu3U7R9xCoM5F/GwvZjNn2k5cuwRTaZ0qIc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCUkK-000Z0M-Bm
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 23:29:23 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D63DEC01D; Sat, 16 Jul 2022 01:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657927753; bh=LRh8CqlPIRkzfgBybrqwK+yCpZ0l+gQTLXIpKVRcThc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tLmDGkkDWDJnchH2Rg43JNu3FuIeKGtO1NGvEkSVcEqrlEmvMzCNNR3NZiiSiHF8t
 02U4B4S4hs/09u8bZAFCdJcdpK80mXxjuYzMTHlRNd8ehKC0ncq2l7txa2mXSipOHA
 vKRDBoS7QJXqDD548of3KipgdV0hCTtMwLqXz8pFIOQLSBMzzQrRBlQaShPZxDMFd2
 O2RP5uRo4eyS8wBfu8VErk927dDr8iysYknXvRxb5K0uec3sPOozv8eCkZBH0Nk36k
 H6igSTFRFDmow8PtfUnFmQOw+P9EpVa4WJvSWjrSbES/aIikaBExDaBjkxmrT6iFRO
 d3VirZ3wdV5tQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 277B7C009;
 Sat, 16 Jul 2022 01:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657927753; bh=LRh8CqlPIRkzfgBybrqwK+yCpZ0l+gQTLXIpKVRcThc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tLmDGkkDWDJnchH2Rg43JNu3FuIeKGtO1NGvEkSVcEqrlEmvMzCNNR3NZiiSiHF8t
 02U4B4S4hs/09u8bZAFCdJcdpK80mXxjuYzMTHlRNd8ehKC0ncq2l7txa2mXSipOHA
 vKRDBoS7QJXqDD548of3KipgdV0hCTtMwLqXz8pFIOQLSBMzzQrRBlQaShPZxDMFd2
 O2RP5uRo4eyS8wBfu8VErk927dDr8iysYknXvRxb5K0uec3sPOozv8eCkZBH0Nk36k
 H6igSTFRFDmow8PtfUnFmQOw+P9EpVa4WJvSWjrSbES/aIikaBExDaBjkxmrT6iFRO
 d3VirZ3wdV5tQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b97f1b49;
 Fri, 15 Jul 2022 23:29:06 +0000 (UTC)
Date: Sat, 16 Jul 2022 08:28:51 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YtH4M9GvVdAsSCz2@codewreck.org>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
 <YtHqlVx9/joj+AXH@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YtHqlVx9/joj+AXH@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Sat, Jul 16, 2022 at 07:30:45AM
 +0900: > Christian Schoenebeck wrote on Fri, Jul 15, 2022 at 11:35:26PM +0200:
 > > * Patches 7..11 tremendously reduce unnecessarily huge 9p [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oCUkK-000Z0M-Bm
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Sat, Jul 16, 2022 at 07:30:45AM +0900:
> Christian Schoenebeck wrote on Fri, Jul 15, 2022 at 11:35:26PM +0200:
> > * Patches 7..11 tremendously reduce unnecessarily huge 9p message sizes and
> >   therefore provide performance gain as well. So far, almost all 9p messages
> >   simply allocated message buffers exactly msize large, even for messages
> >   that actually just needed few bytes. So these patches make sense by
> >   themselves, independent of this overall series, however for this series
> >   even more, because the larger msize, the more this issue would have hurt
> >   otherwise.
> 
> Unless they got stuck somewhere the mails are missing patches 10 and 11,
> one too many 0s to git send-email ?

nevermind, they just got in after 1h30... I thought it'd been 1h since
the first mails because the first ones were already 50 mins late and I
hadn't noticed! I wonder where they're stuck, that's the time
lizzy.crudebyte.com received them and it filters earlier headers so
probably between you and it?

ohwell.

> I'll do a quick review from github commit meanwhile

Looks good to me, I'll try to get some tcp/rdma testing done this
weekend and stash them up to next

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
