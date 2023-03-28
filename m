Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8893F6CB37C
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 03:58:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgybt-0004cs-SK;
	Tue, 28 Mar 2023 01:58:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pgybs-0004cl-ND
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 01:58:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MNbvf38tFwUshpZ3ZUagdvlwgRRXXt+hc1JGT6cCqBE=; b=fJVVq4IVLuGpwWlylCSKTeCoJM
 wwUYYD2jSs1L/E8Sc3c+Z6cJp41/vaKx/czfHURKFENig73APW2M5ro0VaO9cwQ9OxvHi7bYLcE6s
 RGA1Vxj+rcx0RV22NKa8p/TNt1mcmkaTOf/+q+U0B+Jr0FulzFhZb2a/BjT9NngPZyPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MNbvf38tFwUshpZ3ZUagdvlwgRRXXt+hc1JGT6cCqBE=; b=EEIsFWC6uoyQK3v/YF97tkrVYw
 HoSvaI+Ys9oXSUQwMppaa3+rYbYR4KIV5FmEuaIlflEXIoGitoaQAjOpF1+2zk6wEVEevMRh9F+pg
 hzlTVcgUwUp36F/+D4iu97uy7G8PXGtpjd2hlaWJl5bt7RwHW5fqQPOH/4KtyojgWq4k=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgybr-0001qV-4m for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 01:58:51 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id DE5A1C01E; Tue, 28 Mar 2023 03:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679968724; bh=MNbvf38tFwUshpZ3ZUagdvlwgRRXXt+hc1JGT6cCqBE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D9xD+rOQ4ASi6jQMVilPWEuBnVKy3lTQM2id/c99zYa3QJf0dBXhesQ0mbMZWOEks
 fEM/riJezIOUZ/hF+r5RMuPlBozFCH/bEeTG4GVcedWF0LEzHicxVqAYQgvkUxSAJF
 1VHLMFWvrH7963zlmaBY1I22tGtW0geP74/xOsYWKqyA7IRmSuLT8QaT9JEa1iYDgV
 m86ppWuACRj7f5n/bqJyjxOW7GxXjZkji0eXKm/IjfvCF/MwK9GQQSkY2+vBuyjxmS
 eq53FQ3O0iHlZ4vSDy3ajgvx7emEo3U10b56fYmsD45aokgVrbI9XgFVPABBtrOcV4
 5/Tsc0E6F+Fcw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B4F4DC009;
 Tue, 28 Mar 2023 03:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679968724; bh=MNbvf38tFwUshpZ3ZUagdvlwgRRXXt+hc1JGT6cCqBE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D9xD+rOQ4ASi6jQMVilPWEuBnVKy3lTQM2id/c99zYa3QJf0dBXhesQ0mbMZWOEks
 fEM/riJezIOUZ/hF+r5RMuPlBozFCH/bEeTG4GVcedWF0LEzHicxVqAYQgvkUxSAJF
 1VHLMFWvrH7963zlmaBY1I22tGtW0geP74/xOsYWKqyA7IRmSuLT8QaT9JEa1iYDgV
 m86ppWuACRj7f5n/bqJyjxOW7GxXjZkji0eXKm/IjfvCF/MwK9GQQSkY2+vBuyjxmS
 eq53FQ3O0iHlZ4vSDy3ajgvx7emEo3U10b56fYmsD45aokgVrbI9XgFVPABBtrOcV4
 5/Tsc0E6F+Fcw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 5fab2ea1;
 Tue, 28 Mar 2023 01:58:39 +0000 (UTC)
Date: Tue, 28 Mar 2023 10:58:24 +0900
From: asmadeus@codewreck.org
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <ZCJJwDij0mLB0gwb@codewreck.org>
References: <ZCI+7Wg5OclSlE8c@bombadil.infradead.org>
 <ZCJGjuOYR6nGXiAw@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCJGjuOYR6nGXiAw@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  asmadeus@codewreck.org wrote on Tue, Mar 28,
 2023 at 10:44:46AM
 +0900: > I've just built Eric's for-next branch and I'm not seeing any issue
 > there, I'll be checking the next tag you pointed at next. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pgybr-0001qV-4m
Subject: Re: [V9fs-developer] 9p regression linux-next next-20230327
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Amir Goldstein <amir73il@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

asmadeus@codewreck.org wrote on Tue, Mar 28, 2023 at 10:44:46AM +0900:
> I've just built Eric's for-next branch and I'm not seeing any issue
> there, I'll be checking the next tag you pointed at next.

Well, at the very least I can confirm mount hangs there :)

[<0>] p9_client_rpc+0xf1/0x380 [9pnet]
[<0>] p9_client_attach+0x8d/0x1d0 [9pnet]
[<0>] v9fs_session_init+0x4ad/0x810 [9p]
[<0>] v9fs_mount+0x6a/0x420 [9p]
[<0>] legacy_get_tree+0x28/0x50
[<0>] vfs_get_tree+0x1a/0x90
[<0>] path_mount+0x746/0x9b0
[<0>] __x64_sys_mount+0x153/0x1b0
[<0>] do_syscall_64+0x3c/0x80
[<0>] entry_SYSCALL_64_after_hwframe+0x63/0xcd


And my async flush hasn't gotten fixed yet, so that mount cannot be
killed either.


I can mount over tcp so it's a virtio change, I'll dig a bit more and
report back with you and cc
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
