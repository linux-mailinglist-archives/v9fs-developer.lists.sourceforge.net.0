Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC6057FD3E
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jul 2022 12:15:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oFv7o-00041Y-8X; Mon, 25 Jul 2022 10:15:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <vbabka@suse.cz>) id 1oFv7n-00041R-Qw
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jul 2022 10:15:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NfwO3eQzRbJ+P4zZizMEALzAzJGxDQ9gk1SkR5gMIlM=; b=bmxkXkUmBxc2W41cVbIU6wTbkW
 KuvBwylX7GgtQl/0B0NnmWDebWOPpYKEpbjTrMvZWJaMnK5OvDZ71FLNg9JnL0u8p/DEqvA0xSJnR
 OfrzwJ4EQPOHdxSWL+MwLgelrAzHFJRZysv8CcHr+aOCLzPNKI3p/gNSHNjh0A2NFqMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NfwO3eQzRbJ+P4zZizMEALzAzJGxDQ9gk1SkR5gMIlM=; b=RkB9NkNuw9NXbn/0DOvpVtnz8c
 kGpBnh1GnvMX4hoJhrxNhg33nhxxKMeFR6yxDttu+GCpBfVGcTQ7SGLyAoxnVmRKAeFVSFv7zZ3h9
 hT8RWWr63agaz+uL7WHN8BopxRDdh0bj/dFom1C5QnFzp1Liy0kOFGwJzlKWOr8Cclto=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oFv7b-009isv-9v
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jul 2022 10:15:41 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 11B61352BB;
 Mon, 25 Jul 2022 10:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1658744125; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NfwO3eQzRbJ+P4zZizMEALzAzJGxDQ9gk1SkR5gMIlM=;
 b=AY53X++4aTD0nCr7lpNAfNGku2A2xh+4RUvLQry8G+cwTvbN/TW8yz8jzBaPvw69qO4sR3
 uRm+OM9i7waiCQl0qEmegSIgjfOJYyeVX/t6GvX1ffqvPYAx2t8U4yoL37Jq1BzfJYfFcE
 eAadBhkgMLQ2jk3/LGwQxN0zkUFGeiU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1658744125;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NfwO3eQzRbJ+P4zZizMEALzAzJGxDQ9gk1SkR5gMIlM=;
 b=o0XTcvJA/lPufEvUAQ6IX3VMnLv7FiZ6/eiyqhrbyhoy8ikkByCnqhVs4n35v/RU4zydSD
 oSY2J+jb8Cnc1fBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id BD79313A8D;
 Mon, 25 Jul 2022 10:15:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id IgmBLTxt3mKPJgAAMHmgww
 (envelope-from <vbabka@suse.cz>); Mon, 25 Jul 2022 10:15:24 +0000
Message-ID: <fb9febe5-00a6-61e9-a2d0-40982f9721a3@suse.cz>
Date: Mon, 25 Jul 2022 12:15:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: syzbot <syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com>,
 akpm@linux-foundation.org, asmadeus@codewreck.org, davem@davemloft.net,
 edumazet@google.com, elver@google.com, ericvh@gmail.com, hdanton@sina.com,
 k.kahurani@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
 linux_oss@crudebyte.com, lucho@ionkov.net, netdev@vger.kernel.org,
 pabeni@redhat.com, rientjes@google.com, syzkaller-bugs@googlegroups.com,
 torvalds@linux-foundation.org, v9fs-developer@lists.sourceforge.net
References: <000000000000e6917605e48ce2bf@google.com>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <000000000000e6917605e48ce2bf@google.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/24/22 15:17, syzbot wrote: > syzbot has bisected this
 issue to: > > commit 7302e91f39a81a9c2efcf4bc5749d18128366945 > Author: Marco
 Elver <elver@google.com> > Date: Fri Jan 14 22:03:58 2022 +0000 [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oFv7b-009isv-9v
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 7/24/22 15:17, syzbot wrote:
> syzbot has bisected this issue to:
> 
> commit 7302e91f39a81a9c2efcf4bc5749d18128366945
> Author: Marco Elver <elver@google.com>
> Date:   Fri Jan 14 22:03:58 2022 +0000
> 
>     mm/slab_common: use WARN() if cache still has objects on destroy

Just to state the obvious, bisection pointed to a commit that added the
warning, but the reason for the warning would be that p9 is destroying a
kmem_cache without freeing all the objects there first, and that would be
true even before the commit.

> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=142882ce080000
> start commit:   cb71b93c2dc3 Add linux-next specific files for 20220628
> git tree:       linux-next
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=162882ce080000
> console output: https://syzkaller.appspot.com/x/log.txt?x=122882ce080000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=badbc1adb2d582eb
> dashboard link: https://syzkaller.appspot.com/bug?extid=5e28cdb7ebd0f2389ca4
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=156f74ee080000
> 
> Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com
> Fixes: 7302e91f39a8 ("mm/slab_common: use WARN() if cache still has objects on destroy")
> 
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
