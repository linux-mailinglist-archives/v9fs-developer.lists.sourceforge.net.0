Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 524341EBF74
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Jun 2020 17:55:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jg9GF-0006yJ-7P; Tue, 02 Jun 2020 15:55:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sstabellini@kernel.org>) id 1jg9GE-0006yC-Af
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Jun 2020 15:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PEOaItZeXdyyBJX/+DIh/oBRJLsGFzs4mG36Xkl4uEw=; b=a31mqt+RQWEgYcOB9s19T9ipa5
 z7BaNJtTdyF7VeIt6wKd47iEW8aNMP55UQdLWtiSF3EfxpmkxS8uQWgMeq1dyOeEuj2+dnqmumG2k
 MQgA2dfpnbpJoSwpoWbeIaZwdSEJgFZedOIrbcyisfLqCPiAWg/aljryClcoAYY94Tlc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PEOaItZeXdyyBJX/+DIh/oBRJLsGFzs4mG36Xkl4uEw=; b=d58QKTQoJM55hHrLB8S1Svkaed
 I8B83tpbyXqPkq07qskjERz0S0AGAV5WVOOrap3Dxcm0/4dhqArLSSGR7uIpMHQ7v3t4NB/sS0lfz
 3ngPctR4gL/zG9wJ3euG+VVOxIwCbs5YxGMK5PCuWk6L5y599A3EItynIbkQQBw0oewE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jg9G9-006bL8-Sz
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Jun 2020 15:55:30 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CDFD2067B;
 Tue,  2 Jun 2020 15:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591113308;
 bh=PRxYptlqDh/ho5Adpy8HLDZHSmhfvJbp9cjTmMciy58=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=rqolI2+cJdcgCjFb938OQrKwiPnmVdg09hq9mw0rg3s/2xntd5muOFt2qIOjCU6yt
 JL5oyl+4M1uHTMXcV7sDlr3yTxMpdCvOXSYOxOHXfujuQRMO5vZEztUqutLOtD3Atb
 GDB+AIu2CqT/LfTdGrDSRzpjlKflJrrfpVV6Seho=
Date: Tue, 2 Jun 2020 08:55:07 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <20200602060246.GA16791@nautica>
Message-ID: <alpine.DEB.2.21.2006020855010.12801@sstabellini-ThinkPad-T480s>
References: <20200521193242.15953-1-sstabellini@kernel.org>
 <20200522055847.GA2833@nautica>
 <alpine.DEB.2.21.2006011406100.12801@sstabellini-ThinkPad-T480s>
 <20200602060246.GA16791@nautica>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jg9G9-006bL8-Sz
Subject: Re: [V9fs-developer] [PATCH v2] 9p/xen: increase XEN_9PFS_RING_ORDER
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
Cc: jgross@suse.com, lucho@ionkov.net,
 Stefano Stabellini <sstabellini@kernel.org>, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 xen-devel@lists.xenproject.org, boris.ostrovsky@oracle.com,
 Stefano Stabellini <stefano.stabellini@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2 Jun 2020, Dominique Martinet wrote:
> Stefano Stabellini wrote on Mon, Jun 01, 2020:
> > > LGTM, I'll try to find some time to test this by the end of next week or
> > > will trust you if I can't make it -- ping me around June 1st if I don't
> > > reply again until then...
> > 
> > Ping :-)
> 
> I actually did think about this patch this weekend! . . .but didn't
> quite make it :/
> Anyway, as promised pushed to linux-next, I'll submit this for 5.8

Thank you!


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
