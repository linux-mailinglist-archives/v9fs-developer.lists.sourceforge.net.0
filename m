Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B589573411
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 12:23:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBZX4-0006QB-Cz; Wed, 13 Jul 2022 10:23:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oBZWl-0006Pr-R7
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 10:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wHmQ4QutF9xLy8a32/xGDr4CB2rcz5qRvqhIsboHxus=; b=kytfr0VNoTvms2ESQy+5frCshz
 RIFBoZ523SR7571klvkRkTBid1Za2tB5TKtZcyqD0vcpCrhjj6yIgtBPuT5uLxhSlB4SikTY0PRCN
 LYTKgGLITobfv2nYwd1KxIDa9JlwApwqe8MZZ29F1dfTZAAe4NzNo5LU9ogCt+sypz90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wHmQ4QutF9xLy8a32/xGDr4CB2rcz5qRvqhIsboHxus=; b=NdE/HCLrgbEFE8wjgM0BqlMwfn
 0JEEwLE0lKpwLrK4DEUBuSdo25ENklF34q7rybs17L5OBMaY2TGHBtvHIXoOdcsOPgPjgxs70Iekd
 S9tiO6XRtHHLS2Eb1KjEtYJ4u5ixjudv0xqHG3vYkZgS1VCd+bsAKtGv4aZeOK2fzmRk=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBZWk-00FaCB-MR
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 10:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=wHmQ4QutF9xLy8a32/xGDr4CB2rcz5qRvqhIsboHxus=; b=FCMpJerlIFQDhcbFGN31XMhAlB
 Dyb1l9AOPzR26jZVjqfwDKgBNmKaTYL7nVXoA1xai6NsXQeQQ82Qzu589JcDOZfcDGzuAiO+R0o5g
 fIPQi9dnf81OW5s4HZkKLLqY5LPwNfFrvSe6ACpDCPVthMmSBMHdVr/kHEC8kiR3izaHxZdceeGhi
 5romADZ0TD7SoBKMNsygQcPINfBc3vg8Wa4Gfp/ewx5OvPWnpxN37hKdt8ufHXwkp86aVv7eNXrBc
 i8tYPo8uVO8dhZecQCjxTogwEK95Oqp498g+hstlJm/xJ/+3FFEprFpk+AYMbbbfweuppmgQlAArX
 QrKjHzP2FnJp6E/eu7UF5UzyLsdnmlX3O6hZKPsvDox7jAUBpwb+rDXDUhmFK8jkmLTNFHdRKELW+
 a33x8rNmc+JRWYifK1WMN/pIqHBwGXvm8yxhj5uJAVnsRLqBYcXphx6xtTq7qJTXMAvgbl03FM8+D
 CutdT+XiAoBlWHfbOz3balCpDiXuYsx30BwPfQybZ3B3V2uSg2N69pJzgSaGipwn3tofYDBSqOARK
 76E4aiOGlLSh+xAG0nYZtr1PofnrUboxRWnapzHgqWT3cR4oej7MaDMiRGnBy3Of+zEj4YCMcYRpI
 GzK3XIU2qpRX+/RTTFVzP1jnbeDC77jN4sjQvyA8Y=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 13 Jul 2022 12:22:50 +0200
Message-ID: <3177156.tURSKFNe1E@silver>
In-Reply-To: <Ys6QlcShhji2sx9V@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <4284956.GYXQZuIPEp@silver> <Ys6QlcShhji2sx9V@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mittwoch, 13. Juli 2022 11:29:57 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Wed, Jul 13, 2022 at 11:19:48AM +0200:
 > > > - for this particular patch, we can still allocate smal [...] 
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
X-Headers-End: 1oBZWk-00FaCB-MR
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 13. Juli 2022 11:29:57 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Wed, Jul 13, 2022 at 11:19:48AM +0200:
> > > - for this particular patch, we can still allocate smaller short buffers
> > > for requests, so we should probably keep tsize to 0.
> > > rsize there really isn't much we can do without a protocol change
> > > though...
> > 
> > Good to know! I don't have any RDMA setup here to test, so I rely on what
> > you say and adjust this in v6 accordingly, along with the strcmp -> flag
> > change of course.
> 
> Yeah... I've got a connect-x 3 (mlx4, got a cheap old one) card laying
> around, I need to find somewhere to plug it in and actually run some
> validation again at some point.
> Haven't used 9p/RDMA since I left my previous work in 2020...
> 
> I'll try to find time for that before the merge
> 
> > As this flag is going to be very RDMA-transport specific, I'm still
> > scratching my head for a good name though.
> 
> The actual limitation is that receive buffers are pooled, so something
> to like pooled_rcv_buffers or shared_rcv_buffers or anything along that
> line?

OK, I'll go this way then, as it's the easiest to do, can easily be refactored 
in future if someone really cares, and it feels less like a hack than 
injecting "if transport == rdma" into client code directly.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
