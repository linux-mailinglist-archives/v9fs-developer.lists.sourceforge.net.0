Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E01C4843A3
	for <lists+v9fs-developer@lfdr.de>; Tue,  4 Jan 2022 15:46:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n4l4X-0003SD-Rr; Tue, 04 Jan 2022 14:45:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1n4l4V-0003S0-Bt
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Jan 2022 14:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WwK65ni++ZGQq053J7LdvQiiamQQFfjhXrULcJgBdc8=; b=XJdT71Pau+X7eKgz8YBJTHiA/p
 K1HwTJDJdF34Joa2l2To5h9aLMRLWC3nG3AQmNPe678OZol/6InXC1l+JkNHwdRUYyBfgO7VCUD1M
 UCUxY1uf5qVlEW1/y9Wwfph9cguDRbzTrp5JBJ8xuGtYgNQH3JTq2/uIARElb18Vkmp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WwK65ni++ZGQq053J7LdvQiiamQQFfjhXrULcJgBdc8=; b=DuuOL5Iqh/QjH5iGnB3qlBE3iZ
 7TJ5+7FnLev4cQIpBmzBMx/GwgMp7Ei7FcQqCAMdypi793Q771CyV9zozbfq9qigwVPNRYXVtjTbP
 dvC/+wlpshKbeCLOyqcziJOi+GzVr4dOjgjZd/H6W3gB1HOf4B3jrkoS0W3nxwD/RPBc=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n4l4S-001y4c-5k
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Jan 2022 14:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=WwK65ni++ZGQq053J7LdvQiiamQQFfjhXrULcJgBdc8=; b=GzVQUQZcKWO03I/MOO+y53hJye
 yyyzH+qYi8Hx7z5v+ngiE2osdz5J+DZ07BDoPxkgL/mqtQk90O2Sz2YQcarq/Zau0Wf2P3OhwJA1S
 iR+Hp4ruMal3wyETnhL2OmevVbFQtxywtxr36HFresyimnZNbzLUwdnAdjlhbtcjwsc4izNe13XO2
 weO5OIC1a/Ag3qew+d/fq3dncCmNN01GRt3cSuVmZ3569shieFO8cmVqo4FWWR1w4yJjDD5zIzywl
 1JpIQgO8jxDz5R9Up4N0oWRz4wHrxMWLWHI6piplzias56i74gvuYAy5ziSiHZtdf/F1cBobzOx40
 mB85YWcl8rKdMz3MOzPR1QBG0IthE/7D3zKvnHxkxPsTbcrgu5Q5zXMeUDHFM9D7alPt6sHPaj652
 XLJUjZKtEHTbt4kE4H2tYDI2bqXxjCJrBTTE+4rnsEmuogWeWEM8MCdBtnT3ZgwQh56s4j+ZRd183
 bt39jPxazQ5Tu+GtXwSJar1LviQxZ+kCym6k2rnUFnBPeOgjNsmulXFR3ThOh2IaM8Txl8G3ubirW
 U9kzN7AAg1czIzKxS8NaDRnGjvP9TdQGsWFu9DP2fzNoCrHEYxhH/cVX8IM25jKjB2FP8/rpqNM9K
 AHB8G6KMcXL85QJF2oguVBPuukFEAg4dq4Ka+dvyg=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 04 Jan 2022 15:21:57 +0100
Message-ID: <2284086.ouBcKq9vr7@silver>
In-Reply-To: <YdRQWtQNO/DA02VW@codewreck.org>
References: <E1n4jXv-000445-GK@lizzy.crudebyte.com>
 <YdRQWtQNO/DA02VW@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dienstag, 4. Januar 2022 14:49:14 CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Tue, Jan 04, 2022 at 01:53:59PM +0100:
 > > Volunteering as reviewer for 9p patches. As I am quite fa [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n4l4S-001y4c-5k
Subject: Re: [V9fs-developer] [PATCH] 9p: add myself as reviewer to
 MAINTAINERS
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
 Latchesar Ionkov <lucho@ionkov.net>, Greg Kurz <groug@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Dienstag, 4. Januar 2022 14:49:14 CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Tue, Jan 04, 2022 at 01:53:59PM +0100:
> > Volunteering as reviewer for 9p patches. As I am quite familiar with the
> > 9p code base in the Linux kernel already, plus being current maintainer
> > of 9p in QEMU this move probably makes sense.
> 
> There honestly isn't much coming in, but it'll be a pleasure to have you
> help when you can, I'll push this to Linus with other 5.17 changes in a
> couple of weeks :)

I know, it is the same with 9p on QEMU side. But I felt you were currently the 
only person providing service at this end, so I thought a bit of help might 
not hurt.

> I didn't reply to your series for bigger msize, I doubt I'll have time
> to do any useful tests for it this round but I'm thinking of taking the
> first patch first now as it makes sense independantly.

Sure!

> I feel that the rest needs more attention and will be for next cycle,
> sorry for the delay

Yeah, that code definitely still needs some decantation time. No rush. Maybe 
some other people find some time for review or testing in the meantime.

Thanks Dominique!

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
