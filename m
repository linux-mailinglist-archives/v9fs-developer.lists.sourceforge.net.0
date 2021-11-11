Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA4544D844
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Nov 2021 15:29:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mlB54-0007Un-2Y; Thu, 11 Nov 2021 14:29:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mlB51-0007Ug-U1
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Nov 2021 14:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FLQzEjkMg/HyEOuGGfg/HD+FqViJ2CfzeI4vtlX4CKc=; b=dTAZP8kOxg3L/qRJoD1i49h9xX
 1jwJ6flywujqFIe4r+OsNNBgotDbTwPqT8Z++5PyfonP9dqMmW/30yWHiwiDoiRw81/Scr8DKOB7x
 GdT7QU9Ma80eB8UFAW3CCFIaru9IXqjFMAv27a064Z0ML4MBS8KdmD6BIYvvmggO5oEY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FLQzEjkMg/HyEOuGGfg/HD+FqViJ2CfzeI4vtlX4CKc=; b=JOUBAGALXcjskcqI03iJ6M2x58
 mky0hoc9EEI9M7r7U2N24PRvU1gGVbXGfJ3x1pcB73D3AiK1qKUJozVqo1F2PTMNJcWQN3AnvFuxI
 zRRtwDphqZJscM1+bzjusQeZ68q+PA17q70GbRT5Z21UFTNy67PI32enLcQLeDJQnTZw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlB4x-009ivT-U7
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Nov 2021 14:29:31 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 1FA21C021; Thu, 11 Nov 2021 15:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636640959; bh=FLQzEjkMg/HyEOuGGfg/HD+FqViJ2CfzeI4vtlX4CKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O/lfLy2Tp0wyw6eCofe8DNYq41ps/FwPuQnxhWXfkYlLMHi91WWF4PZuBZjeqkrwr
 g2ARkqJmmj/7MFu96wEGd1QMwN4wMKr6mjxc13IhVSSXA0tk/L//38jt5i6QDzM6Ei
 66iK8aZNnwCZ5CJQBxDAhJv1zmdYgBYdp7eoiF4GijygRGYegAa3mWqyiALdRKKk0t
 9dmxV3A3DQmoApiSATFNoiemXpqr3HG7/Og9y0ZYtA/cg51oNvqQIi7i220uahd7NO
 vuVwke6+KXvlsnwj39V8X9yUN5hGx17nf7C9NgbjVeiacJwy16P8fDxaYvYbJBZbcy
 Q3Pp+hH7QQuKg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id F18D9C009;
 Thu, 11 Nov 2021 15:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636640958; bh=FLQzEjkMg/HyEOuGGfg/HD+FqViJ2CfzeI4vtlX4CKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=14LM0lsJlo8UFQwB0ITWsURyJMpC6p7GbMWBmlWlqq78qjvpvHZ8JhvcPHLW7x4hr
 +kZ2yJi9efxxriJ4dOjWjYW+aOEKLr8uCABtSbW/hMVGtMwroMA8YU+zBEuAVuq1y+
 Eh77/eihcaliAQHZyqXMXIUlD/yf4gwHCBY0h03Ug83aaMJ8M7RL6e8DxaEhg+DhXN
 5bnrEUdsfpqlhB0wWaX1t+ZbQ0j6nXY0wzg/fNBvEGCzcg8RqpVYk71bKwMEREbWst
 c+VGu21kWdEw3CC7yKbyoDgS1rpHQfaJPUG4W0PIbnPgPBuKYi5B/NuoBMYZp6Sz18
 yKHs6nCXq36cg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 33223ae0;
 Thu, 11 Nov 2021 14:29:09 +0000 (UTC)
Date: Thu, 11 Nov 2021 23:28:53 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YY0opaUbuiqMGHpr@codewreck.org>
References: <163657847613.834781.7923681076643317435.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163657847613.834781.7923681076643317435.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  David Howells wrote on Wed, Nov 10, 2021 at 09:07:56PM +0000:
 > Here's a set of patches to convert netfs, 9p and afs to use folios and
 to > provide sufficient conversion for ceph that it can continue [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mlB4x-009ivT-U7
Subject: Re: [V9fs-developer] [PATCH v5 0/4] netfs, 9p, afs,
 ceph: Support folios, at least partially
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 kafs-testing@auristor.com, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, Marc Dionne <marc.dionne@auristor.com>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Wed, Nov 10, 2021 at 09:07:56PM +0000:
> Here's a set of patches to convert netfs, 9p and afs to use folios and to
> provide sufficient conversion for ceph that it can continue to use the
> netfs library.  Jeff Layton is working on fully converting ceph.
> 
> This has been rebased on to the 9p merge in Linus's tree[5] so that it has
> access to both the 9p conversion to fscache and folios.

Ran basic tests on 9p with this; it'd probably deserve a bit more
soak-in but at least doesn't seem to break anything obvious:
(Re-)Tested-by: Dominique Martinet <asmadeus@codewreck.org>

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
