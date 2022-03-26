Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0574E80C7
	for <lists+v9fs-developer@lfdr.de>; Sat, 26 Mar 2022 13:24:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nY5LT-0005zy-DG; Sat, 26 Mar 2022 12:24:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nY5LR-0005zr-89
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 12:24:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J+rWcnu8yF7moh054Aw+8XHr3g7eD83siDQ/MkyTBjI=; b=B9+BxiyhPA8U0XAVy2QTWRe7FB
 4uO9IBkVl7UNpyrfh4rjqba33FK+ytOMslcGbyVt5PitJhxX3oB0MQXz/7aNngL+Ivp78SuyQ3q7B
 66345Yggm+ymkCfUC9NVKCVQBu+W3TQTDbAFqvHm5qHLs8aAllwRp+v4z37aHfnd6jEE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J+rWcnu8yF7moh054Aw+8XHr3g7eD83siDQ/MkyTBjI=; b=c8FmYy+FqNQEiX1IBTYs8hZBps
 KYxwCAF+4JpYUwW8+VOTnXuoP7BnjmzHH72Y3o4+F5S2aqcjyOIngbeQnNGtKYH1O12FeHt8WDEp4
 /KyPTQ0OYpr0ZShJJf5aL6ekKnKvaXcPWGPqvrKtSDBH7UUOQMFL5DxETUYxRCx8lAJ0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nY5TF-00Cjxq-5P
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 12:24:44 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B2E90C01A; Sat, 26 Mar 2022 13:24:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648297473; bh=J+rWcnu8yF7moh054Aw+8XHr3g7eD83siDQ/MkyTBjI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fMGFh1uJbcJcldQgmnJxIll8S+FwMV8Yav7DYp0Ttu8UGPN0eWvmzuI3WXZmxJDed
 KcNdXofmrYQdnymnzjU/Xltw6xG8gZ08wTHYsJ2ko+Kvr9I6nPHIq8WAs+BZFV/fgx
 ngpduVyNJvXiDcX5Bx1LQaDboa/g6T6Uyv/XxR6Uu5dyi+6uiQEk5nR+0l9KGxB6NL
 0tlEUOE1841SaECbJ1VnWOItVEiFqcpBpZe1ReTj8SqCocJqd0GnLgkmPviq1maSNx
 L8Lmds4tH7eovs/GPa//YYaes9YGnhKLgMLXd6wSJWp18ODxDqUusJsmd5eRFTyr0G
 AnojQo6SajdHg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C07DCC009;
 Sat, 26 Mar 2022 13:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648297472; bh=J+rWcnu8yF7moh054Aw+8XHr3g7eD83siDQ/MkyTBjI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bp2S0TjOym2RriaIq4Q1XLf+Az7nE22NgnsSp9Ixsfwed0OtIMB2UrLt2wm+8Cxfd
 y/2CPT2Ah6NIRetxdVwix0c0l7Ava30y1r9eXbhIztXaFF93xDJqVh8Ay9NuVXtDqC
 FKZ12TmjWf7EvNH0A3ZPR+tHbwsnrfy05WGCYeWe3Epdokk43fIQC4YjpM2/nOu8hG
 Z5hboCFi/GSpfu8hJfkgol0EeL4axCfzEvGTfBKTLuj3KBm5rSOd9oOedhr4yko8pV
 1OyLgdx9e3ErzM+pPBStOFFNor9sU/FMwqKjsHTPbG9Bq1CdVfDf1FWkt0j1u9WvwF
 thne8LKrDEvxg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1cc6f6ba;
 Sat, 26 Mar 2022 12:24:25 +0000 (UTC)
Date: Sat, 26 Mar 2022 21:24:10 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yj8F6sQzx6Bvy+aZ@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3597833.OkAhqpS0b6@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3597833.OkAhqpS0b6@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sat, Mar 26,
 2022 at 12:48:26PM
 +0100: > [...] > > > Signed-off-by: David Kahurani <k.kahurani@gmail.com>
 > > Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotm [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nY5TF-00Cjxq-5P
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>,
 syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com, ericvh@gmail.com,
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sat, Mar 26, 2022 at 12:48:26PM +0100:
> [...]
>
> > Signed-off-by: David Kahurani <k.kahurani@gmail.com>
> > Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com

Looks good to me - it's pretty much what I'd have done if I hadn't
forgotten!
It doesn't strike me as anything critical and I don't have anything else
for this cycle so I'll just queue it in -next for now, and submit it
at the start of the 5.19 cycle in ~2months.

> I'm not absolutely sure that this will really fix this issue, but it seems to 
> be a good idea to add a rcu_barrier() call here nevertheless.

Yeah, I'm not really sure either but this is the only idea I have given
the debug code doesn't list anything left in the cache, and David came
to the same conclusion :/

Can't hurt though, so let's try and see if syzbot complains
again. Thanks for the review!

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
