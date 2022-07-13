Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BD7573288
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 11:30:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBYhq-00079b-HZ; Wed, 13 Jul 2022 09:30:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBYhT-00079B-EC
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 09:30:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XyyU3O64rDkO8/f2a3m3jX9KEixUXahN8Gy8KrqClvI=; b=aJmjK4o2W2KDSQ90nXQT0KB0ke
 6Gy+xleGW3PSOfG8dDvOp8U1qccjfR87tREX0Nmp1/bfodryyvWx7bpTdJtd5g2pKvSa/2Fn1wjKY
 GEksYzooVWYSp/VyxI2LtYN9VB3PnU9+AoZDGIveODR3j750nHq4Bxy0PjPmdl9YEDdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XyyU3O64rDkO8/f2a3m3jX9KEixUXahN8Gy8KrqClvI=; b=UwaClCXt9UJPPfVs00pmuMMocF
 GccEhvsx66ehoy3n4n3M89ieGQOyhgma0BmgYqJi32n6A+7xQc+8c4gSXKFOI7F6GWw2nlRrSIlzQ
 l/+tiQl7Rse7tskr/8o46Uh4s0n1Yn62FVnwTyJJhnb8Pvy6ugajhrYV4on16adtSg3U=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBYhN-00FYHZ-Uk
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 09:30:30 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 77ECEC01F; Wed, 13 Jul 2022 11:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657704619; bh=XyyU3O64rDkO8/f2a3m3jX9KEixUXahN8Gy8KrqClvI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ywjF/D7wS9OjyHt7BVsHv8plzVxUgPhiLUbbuDrVr+l86vFhwsSdmzRN/n3MdDngr
 Vs9r39e8bUveHcJQX4iZtN55K3A1EsjrBEJ3nDXTcZ2BibWxxDOdzhbqu3UODbw4tg
 /xz0pHcBLid8jOx4xR9VyOG0hmUpkVsnKUL/pL59MXfYMGfosHxgeYZ9p3rg4KEscS
 NmJqUkmYNVcOcOpbom8yF2GQYNeBwrudIVzmwWH/evM9enn9urkzvnbgmgVSAfQ6eh
 F3Kun4ICWzmlDkQoQUZz1/d/NHyJ8PIkPBpPUleYgZkMFTPRSDzvflwF8XMT9ReyZF
 EDMzPrt+SFtpA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 95E8CC009;
 Wed, 13 Jul 2022 11:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657704618; bh=XyyU3O64rDkO8/f2a3m3jX9KEixUXahN8Gy8KrqClvI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rYO8C5GjfkKJ+X/feO2QzbNu6ngje6EbwAFN1jEj21OCsmiZTu17br7qeEX2K8rSr
 dcRZHU98JNDdp9rvwdMWHv7XSNd904sxppru0+k32zTMNCuV5fl2U9OT0gAIMAt1jo
 XuczTc0MJNI+/IRRaaqEOSGmrhfPJsDiwscIWWMf6m+dvCA3VLsfigqdrsAlps+bHd
 5cHU4p01321IodbGxBQO77L1yexoCKPU3YddWbWZxTFlNuBsEnTEq8udfTjXhmjOKy
 yvxpDSl7fFoJZbL8xu//YxzMMYdMOH11W5BJ5oRmb+sXAo3bGwuEDM+N9EsgOLJ+q5
 ZeXYvPbZFKyrQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id dd90f3c2;
 Wed, 13 Jul 2022 09:30:12 +0000 (UTC)
Date: Wed, 13 Jul 2022 18:29:57 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys6QlcShhji2sx9V@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <Ys3Mj+SgWLzhQGWK@codewreck.org> <Ys3jjg52EIyITPua@codewreck.org>
 <4284956.GYXQZuIPEp@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4284956.GYXQZuIPEp@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Wed, Jul 13,
 2022 at 11:19:48AM
 +0200: > > - for this particular patch, we can still allocate smaller short
 buffers > > for requests, so we should probably keep tsize to [...] 
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
X-Headers-End: 1oBYhN-00FYHZ-Uk
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

Christian Schoenebeck wrote on Wed, Jul 13, 2022 at 11:19:48AM +0200:
> > - for this particular patch, we can still allocate smaller short buffers
> > for requests, so we should probably keep tsize to 0.
> > rsize there really isn't much we can do without a protocol change
> > though...
> 
> Good to know! I don't have any RDMA setup here to test, so I rely on what you 
> say and adjust this in v6 accordingly, along with the strcmp -> flag change of 
> course.

Yeah... I've got a connect-x 3 (mlx4, got a cheap old one) card laying
around, I need to find somewhere to plug it in and actually run some
validation again at some point.
Haven't used 9p/RDMA since I left my previous work in 2020...

I'll try to find time for that before the merge


> As this flag is going to be very RDMA-transport specific, I'm still scratching 
> my head for a good name though.

The actual limitation is that receive buffers are pooled, so something
to like pooled_rcv_buffers or shared_rcv_buffers or anything along that
line?

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
