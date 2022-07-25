Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E10CD580015
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jul 2022 15:46:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oFyPs-00038J-D0; Mon, 25 Jul 2022 13:46:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oFyPr-000389-L5
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jul 2022 13:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2NwYAYhbN3OZMacClbvfMK5THoNrkzTnbrqS2W8AjRM=; b=g2BX75+8JkdftbSy3S7rs5cO/h
 Hec4kuCrJ/uwJoiDwaGysSX1xq4JEENqr6vD1mlODACNlbGGXJgCf9rTfqY61oFH4BeDu05d/Do6U
 guHPataljYE4lZruHpxoYiHTEsnpjcwBw0S/fQsgdMAs+0M6CgZ1DaBAL6hgcrdJTYTY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2NwYAYhbN3OZMacClbvfMK5THoNrkzTnbrqS2W8AjRM=; b=K9PdmGLkSP6gYjWyaeJbPfV4dl
 OVru6fshEJ4hSU/TwvyHnIhUbRUc7iDtkA2PQqLONwPSVy9jF82TshKUeEoCDAHOaA4Zn2kBAErgL
 1n0MXKfMDxvPQxPu8Qhq8HrP3nUL7HdfUXbJF1T4c6zTjPee4/stvJqfvyQEnv7JgDMM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oFyPo-009oih-Bb
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jul 2022 13:46:35 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5297AC01F; Mon, 25 Jul 2022 13:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1658749864; bh=2NwYAYhbN3OZMacClbvfMK5THoNrkzTnbrqS2W8AjRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F1EkmJq7oYZxD1SPqVkTKFxKzaoBVjIcqhtmGe7FxqT1OeYVmlJu6UDKFhAS8++oo
 IL7dbF8QVzmCJQI0J1KP3n4xb78VDtmGMVtY5tOlagsjYAqKwo+Yd5/XDaXUU+ABUe
 LV0ci89kTM3tZchfBw01mF6oopK+1N9G0oq6eUdPlfuP/h7PPoJw4GLCwzr5gI3S7P
 qUH9jfcWNedEP/hWS80owdax9dsGJNTlpdsvll6kHdiUTdyDUHtSH79ZemOTU22F7p
 UWLUG4j5cLc81MuR5rYRe6ST3nCVulBLICrmrZaqwtezUUB5Qq4bzEF3DXJcFzCcr2
 aoVgcgLg3ZjMQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2E204C009;
 Mon, 25 Jul 2022 13:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1658749863; bh=2NwYAYhbN3OZMacClbvfMK5THoNrkzTnbrqS2W8AjRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=riikSf24Vi05i2t4TF/OsIT9+NyLICgFe3t+4yLNy64GtLjskwd9PET5eKskZCBzq
 t3BVRH68lt0s79gqe0qhoEjbSwd7Z58pZLikgA12Q8hJopHtHmb3DpvK+m5fxyZsKr
 dzY8o7EPr8/Sdg0KhyTKVpB0pvp/3Q3bUwhLnX9kwyO3d4Ge64xox68paqN+d3XwEU
 aDU0TVVHafhILld1a32Huhxs0GGtdYJ8FqS42cq4PeMEHa5CQ+yvNGQIC+AMGOsWIM
 fw/h/MJpcu4sV5kmE7xIPNdUOz+AzcsXe6TGlag+CeVr8i6xeHyblOTCxW2mZ3TBVH
 usjc4I1NdOrfg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 69b53e8f;
 Mon, 25 Jul 2022 11:50:53 +0000 (UTC)
Date: Mon, 25 Jul 2022 20:50:38 +0900
From: asmadeus@codewreck.org
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <Yt6DjrMdIhpQmm7V@codewreck.org>
References: <000000000000e6917605e48ce2bf@google.com>
 <fb9febe5-00a6-61e9-a2d0-40982f9721a3@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb9febe5-00a6-61e9-a2d0-40982f9721a3@suse.cz>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Vlastimil Babka wrote on Mon, Jul 25,
 2022 at 12:15:24PM +0200:
 > On 7/24/22 15:17, syzbot wrote: > > syzbot has bisected this issue to:
 > > > > commit 7302e91f39a81a9c2efcf4bc5749d18128366945 > > Aut [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oFyPo-009oih-Bb
Subject: Re: [V9fs-developer] [syzbot] WARNING in p9_client_destroy
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
Cc: lucho@ionkov.net, k.kahurani@gmail.com, elver@google.com,
 syzbot <syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com>,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, hdanton@sina.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 edumazet@google.com, rientjes@google.com, kuba@kernel.org, pabeni@redhat.com,
 torvalds@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Vlastimil Babka wrote on Mon, Jul 25, 2022 at 12:15:24PM +0200:
> On 7/24/22 15:17, syzbot wrote:
> > syzbot has bisected this issue to:
> > 
> > commit 7302e91f39a81a9c2efcf4bc5749d18128366945
> > Author: Marco Elver <elver@google.com>
> > Date:   Fri Jan 14 22:03:58 2022 +0000
> > 
> >     mm/slab_common: use WARN() if cache still has objects on destroy
> 
> Just to state the obvious, bisection pointed to a commit that added the
> warning, but the reason for the warning would be that p9 is destroying a
> kmem_cache without freeing all the objects there first, and that would be
> true even before the commit.

Probably true from the moment that cache/idr was introduced... I've got
a couple of fixes in next but given syzcaller claims that's the tree it
was produced on I guess there can be more such leaks.
(well, the lines it sent in the backtrace yesterday don't match next,
but I wouldn't count on it)

If someone wants to have a look please feel free, I would bet the
problem is just that p9_fd_close() doesn't call or does something
equivalent to p9_conn_cancel() and there just are some requests that
haven't been sent yet when the mount is closed..
But I don't have/can/want to take the time to check right now as I
consider such a leak harmless enough, someone has to be root or
equivalent to do 9p mounts in most cases.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
