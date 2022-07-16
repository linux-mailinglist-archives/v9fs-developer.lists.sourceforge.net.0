Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A68B5576DA6
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 13:54:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCgNd-0002in-9Q; Sat, 16 Jul 2022 11:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oCgNb-0002id-9s
 for v9fs-developer@lists.sourceforge.net; Sat, 16 Jul 2022 11:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oyzbxOjURZ0sFk365mtqWl8JBCEDiqGZxcNXeEMsT4U=; b=OOOlRBu1V+KWLdljiwZok1fWjj
 j+H9i9X5aZnnih8lRiidLyPHDmNAGm7YRxN4cI1zZOLjDJL8jSJreh+nqz1tcKGoGQxG03kG9UdRf
 H91Y9EXssLbgO1dQtomUyeJJOo0gsEaHKxL0Rc8pXVpoDzGPKHbP8DC5G5XRNrs+Czp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oyzbxOjURZ0sFk365mtqWl8JBCEDiqGZxcNXeEMsT4U=; b=k800nzaEm5DeqWYQAM9arUqQ2K
 5uIkO4+zDxHthootGTuTD/BUouVyy6hieZXJozbwo8AKzveodv/qcB3YxZ+1q6D8H/hSHLmIHLjuh
 lBb8g64SmAij4s9jW0oYtn66y+kuFbEyhoru7bPDZ8AAvZicMNjtsh1lSbnIroBaZ26A=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCgNZ-000yR3-SY
 for v9fs-developer@lists.sourceforge.net; Sat, 16 Jul 2022 11:54:39 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 53230C01C; Sat, 16 Jul 2022 13:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657972471; bh=oyzbxOjURZ0sFk365mtqWl8JBCEDiqGZxcNXeEMsT4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aASqWUooX9bP1bNic8wpXy1BZSxTyLjtZbuZR1dZCqYI3m2JmHPeqA01CiXubwtRv
 MWhe3RleX1uoUXqT++aPgqOhMlESSpoE+Y/NFE/Ih6eqskx4mNNQi+Igqgx5K1tgCn
 +wWNmnUizalNDH6KU2oKCDne/HEZAbaEi9zQIhGyoh3K+WpyqNfa+IHc3YFLF3Kyr9
 k4vtZB0LoJpWgVuwfhYjmET7qY0zBTfSOLeoYFEYR7yywdSN1MbPEzRmrptWsbZNep
 aZmc633MAjVesvh6y/Zc2ALk8DHEGnlcHvBtl7LgFU3c/80ZjakRgiMofPJvVetAWR
 dz9n6L0Ct6WCw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id ED385C009;
 Sat, 16 Jul 2022 13:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657972470; bh=oyzbxOjURZ0sFk365mtqWl8JBCEDiqGZxcNXeEMsT4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bld0kl0VgpSaUjA5HAkcvXSoUmgcsntrTLjvZEUOuiCkia1Tif3oQ/9p6tnZD35Te
 3KWJk4/1dICn8jeT2R2Xx8L09PmHGbKc7aY9IN5Q7X1OFDgknMh7DcJRyQnbukVzNH
 /L9VTeBI/DG9vxHHXJk1OH7QUPpdwLW6FWANWYCaYsSln5eag0Y/IEBgd/6hlS5dAt
 SfacHPI7NKPeZ8+rAV3BUbMKgLz/aVlc8h7NxqzPDV2zIGdxZnD76rDBRdowCpuN+r
 ENBFJ/qCZvoOPQCwZgjblzCCK04F+JHO72kyO7T+gPHdKj5Kh0dZ1qcS7zrNYGbb3H
 0gjELFezLS5tQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 5bf80499;
 Sat, 16 Jul 2022 11:54:23 +0000 (UTC)
Date: Sat, 16 Jul 2022 20:54:08 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YtKm4M8W+rL+buNj@codewreck.org>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
 <YtHqlVx9/joj+AXH@codewreck.org> <YtH4M9GvVdAsSCz2@codewreck.org>
 <6713865.4mp09fW1HV@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6713865.4mp09fW1HV@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sat, Jul 16,
 2022 at 11:54:29AM
 +0200: > > Looks good to me, I'll try to get some tcp/rdma testing done this
 > > weekend and stash them up to next > > Great, thanks! Quick update on
 this: tcp seems to work fine,
 I need to let it run a bit longer but not expecting
 any trouble. 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oCgNZ-000yR3-SY
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

Christian Schoenebeck wrote on Sat, Jul 16, 2022 at 11:54:29AM +0200:
> > Looks good to me, I'll try to get some tcp/rdma testing done this
> > weekend and stash them up to next
> 
> Great, thanks!

Quick update on this: tcp seems to work fine, I need to let it run a bit
longer but not expecting any trouble.

RDMA is... complicated.
I was certain an adapter in loopback mode ought to work so I just
bought a cheap card alone, but I couldn't get it to work (ipoib works
but I think that's just the linux tcp stack cheating, I'm getting unable
to resolve route (rdma_resolve_route) errors when trying real rdma
applications...)


OTOH, linux got softiwarp merged in as RDMA_SIW which works perfectly
with my rdma applications, after fixing/working around a couple of bugs
on the server I'm getting hangs that I can't reproduce with debug on
current master so this isn't exactly great, not sure where it goes
wrong :|
At least with debug still enabled I'm not getting any new hang with your
patches, so let's call it ok...?

I'll send a mail to ex-collegues who might care about it (and
investigate a bit more if so), and a more open mail if that falls
short...

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
