Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DED57339B
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 11:56:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBZ6m-0001nL-Iq; Wed, 13 Jul 2022 09:56:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBZ6h-0001mS-S7
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 09:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pjiAEa60Alkw3UWG+MQjG9CTRo60uCCBhIdRs0otWFc=; b=CMKJokC+Zh/vxZcFw4E7GDHlcB
 TSBMY/P14f0TdUjqgb6DGP7sUX88ZjAoF1NTwW0dhNexR1ZIqsxBT8IhP20Brf7dPvnjOiGK9qi/U
 cYe3I24m7m/S38t0glFtwsVTICGJc02PPJN4gHDOtKKNBMiPmBlhGpminV7VwXr4xrzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pjiAEa60Alkw3UWG+MQjG9CTRo60uCCBhIdRs0otWFc=; b=Mmw27wmu8XtKbqyp2DUo7RyXri
 QbYbsqaEFCiITxgyRkUHrB4dvn5LV5qF/+SCEIuDrHgK+3mh16u5tGlIXuoiNgnuf+KG5TIAqgBXn
 zH3g6s6xqeCKTRdSul056nS3FdXhyU8F5mVECqynDzH84xIfv5D0alsrT1PSy1YVGQyk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBZ6g-0001ev-RB
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 09:56:35 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5CA65C01C; Wed, 13 Jul 2022 11:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657706188; bh=pjiAEa60Alkw3UWG+MQjG9CTRo60uCCBhIdRs0otWFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oWmdA5i9zqTEWirP6yj0ZQ3tI3n/29ATEa6esdIR5yvp+HITlzHeZDdnhHCUQUJQ3
 FmCJH4GdJAYSJ3KP5H6961KfFSk/4PQZkZjlBvIvMn1Wg/foE8TYp6EzjLls1OrgfP
 Rp+O+p+nIoJ0wtGMYNFwmv3kuKVaztM2Rmww0apJCX2vbXKH0JaEebdnwOMLlJKNKy
 CbGBO4reBCOoTXx7bucrX3VKfo0cP5kxUOhRqq8yBZGgEAOVIFGcrrcHpjyURCZQ0p
 S69LhEvNNr9PhuQ+zsJUeiiBwjXJdab0pGmLbW8Od3TykW0XgEIscpPQ/cClMT1ViP
 9tUSyiZNkvQrA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D8981C009;
 Wed, 13 Jul 2022 11:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657706188; bh=pjiAEa60Alkw3UWG+MQjG9CTRo60uCCBhIdRs0otWFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oWmdA5i9zqTEWirP6yj0ZQ3tI3n/29ATEa6esdIR5yvp+HITlzHeZDdnhHCUQUJQ3
 FmCJH4GdJAYSJ3KP5H6961KfFSk/4PQZkZjlBvIvMn1Wg/foE8TYp6EzjLls1OrgfP
 Rp+O+p+nIoJ0wtGMYNFwmv3kuKVaztM2Rmww0apJCX2vbXKH0JaEebdnwOMLlJKNKy
 CbGBO4reBCOoTXx7bucrX3VKfo0cP5kxUOhRqq8yBZGgEAOVIFGcrrcHpjyURCZQ0p
 S69LhEvNNr9PhuQ+zsJUeiiBwjXJdab0pGmLbW8Od3TykW0XgEIscpPQ/cClMT1ViP
 9tUSyiZNkvQrA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1435d5b7;
 Wed, 13 Jul 2022 09:56:23 +0000 (UTC)
Date: Wed, 13 Jul 2022 18:56:08 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys6WuOh2MaicETuw@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <Ys3jjg52EIyITPua@codewreck.org> <4284956.GYXQZuIPEp@silver>
 <1998718.eTOXZt5M9a@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1998718.eTOXZt5M9a@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Wed, Jul 13,
 2022 at 11:29:13AM
 +0200: > > As this flag is going to be very RDMA-transport specific, I'm
 still > > scratching my head for a good name though. > > Or, ins [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oBZ6g-0001ev-RB
Subject: Re: [V9fs-developer] [PATCH v5 11/11] net/9p: allocate appropriate
 reduced message buffers
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

Christian Schoenebeck wrote on Wed, Jul 13, 2022 at 11:29:13AM +0200:
> > As this flag is going to be very RDMA-transport specific, I'm still
> > scratching my head for a good name though.
> 
> Or, instead of inventing some exotic flag name, maybe introducing an enum for 
> the individual 9p transport types?

That works for me as well

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
