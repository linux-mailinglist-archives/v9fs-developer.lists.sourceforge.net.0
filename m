Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42872692BCE
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Feb 2023 01:12:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQdUn-0001IX-1G;
	Sat, 11 Feb 2023 00:12:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pQdUm-0001IR-0l
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 00:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3EJFrpGxIuEHBMCx0npPppHhZZJ6DpJG62GSSPqpbEw=; b=H47yc9US3F4cb/5+xnpIYQW2/U
 l7/UFxeiKtKwgDb8dRYTsmbMbaF+Wy4MIfOxMSwrOGtI/m4lkcOgCVmybW9299nLgNi2hTT1pxfaN
 ffx44K18UZJ2e/OKs/aULNO6dhRmp2Ln7XHP8jsrbk7BVRiMcTJo41gK7jH4a1Hg/34k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3EJFrpGxIuEHBMCx0npPppHhZZJ6DpJG62GSSPqpbEw=; b=d+GFM2O3PDXhxg/8txVhHd4sM4
 rG4DUzAyX1s4A0hWgXoU4UG9COYG5YI/Xndld5FhYE+/BcuWUQ4nWeWNyh7L4LYBujaBU47zeF5pv
 xObmoWog4nMcIH3aaaOAkJAu+guBIFnmG9gCI/twxazsT975ZfSorknqmEb3nvLBmlFk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pQdUh-0005Qc-VQ for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 00:12:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 95AD2C023; Sat, 11 Feb 2023 01:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676074332; bh=3EJFrpGxIuEHBMCx0npPppHhZZJ6DpJG62GSSPqpbEw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VCqYscMcnrVHY8wYyeFNVJ+rD/Pbez+zCH0ZjwvVkbnPWsk3TBDR4C2vFj9iQYe76
 hGu38vxpd+B/3kTpD63FFPrPhAg86XzTa4D0qMM9PSe8QRo8++akfIw7h0t7t3ynqn
 l9D0XZwvOyEft0ER0dRircJu148jZkEngOxk0z4EBhLh00dr1s1YifdBeYYEd/BD9M
 PeTjwwY9AOnJpP01FV4+Wi7sPrpDja8Zp8mBWKJLXS0pGC6N8KLoKPmKI/6ZcYzjEu
 YnOoZwkd6afkMLNJKsaK27Wt35Hd3NYQbGWx1uaBct4gVHNp4D54hnMyPhrTIjQQW/
 BqX6mSwumazfQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 28F22C009;
 Sat, 11 Feb 2023 01:12:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676074331; bh=3EJFrpGxIuEHBMCx0npPppHhZZJ6DpJG62GSSPqpbEw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1/KBbjO7L22L7kRw+OQSRpx/J47Qtrc/0Bq8co0Aw/fAjseO0khb1g+DfDo9Y425s
 bswygOvv1mR26b65unK17ejqXnS2AYCSrbkyLPvW0DezyQ5TUDF/CXRQATdxYrRBU6
 4I2xps/v+r7O8ZB6OA3j/Kp2YfMQBSeTGgNcNLW3aXBvMJXCC6mZj/59RLKx5IJqws
 2jWUVZDjVm+iNCMwr3o7UPtBpZFwUUbq301yvr6+ii7MxDPOaQ4IaX1VLUMUfxBRMQ
 0DCdLpk8nGvX+35dXDWntQmq9/kMV5D3eUsiyEBJkwZVsocPELV7ZPt4ywrxP6qnsn
 1al1lBjDDocEw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 34ae1f8d;
 Sat, 11 Feb 2023 00:11:42 +0000 (UTC)
Date: Sat, 11 Feb 2023 09:11:27 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Juergen Gross <jgross@suse.com>
Message-ID: <Y+bdL74W+qTzRRn7@codewreck.org>
References: <20230130113036.7087-1-jgross@suse.com>
 <20230130113036.7087-2-jgross@suse.com>
 <Y9liesGIeKFkf+tI@corigine.com>
 <bf452f47-8874-09a9-2d74-6a2ad5bea215@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf452f47-8874-09a9-2d74-6a2ad5bea215@suse.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Juergen Gross wrote on Wed, Feb 01, 2023 at 07:37:04AM +0100:
 > > It's unclear if this series is targeted at 'net' or 'net-next'. > > FWIIW, 
 I feel I feel it would be more appropriate for the latter > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pQdUh-0005Qc-VQ
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p/xen: fix version parsing
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
 Simon Horman <simon.horman@corigine.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Juergen Gross wrote on Wed, Feb 01, 2023 at 07:37:04AM +0100:
> > It's unclear if this series is targeted at 'net' or 'net-next'.
> > FWIIW, I feel I feel it would be more appropriate for the latter
> > as these do not feel like bug fixes: feel free to differ on that.
> 
> I'm fine with net-next.

It doesn't look like it got picked up in net-next, so I'm queueing it up in the
9p tree.

Thanks for the patches and the review!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
