Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8370269BBE5
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 21:36:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTTwc-0004jI-Sh;
	Sat, 18 Feb 2023 20:36:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTTwU-0004jA-JC
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 20:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/pFwTlz4AiDVvxjY6gJ7Ns3KKC9mALcI1mGQLAJfu0k=; b=fxhyl3rfcCUxDMCbcudN1q61Z5
 oFuqNbi/Dm6mXphJeDEBNDL4qkL7XzNGnVgdNyfQK3j0j3wgMsbVqN/o2gHVEXFKXumIgfx0aMy77
 kRP3Moa5z4EP01I8Jxiwnu/UvKDnhYdnz7QvXbpJiJ0f6o1zm1GVOzdrUNWU/3gqj0l0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/pFwTlz4AiDVvxjY6gJ7Ns3KKC9mALcI1mGQLAJfu0k=; b=QOVV95MS/kB1ZwOJi2rhyCcQuP
 IsEXLzfgGKBnD2yW2AGsbQ7vud0Hxp6ADEa2C44J9NpDJ3Mmcj3iKXKPgCz1GJPdum+XawSvFJFCk
 ko70KRQcPGUKXKZqCB4PCkAgKR9GgnImhMUC24wd1vr9WxYxsQPHN0ZLol5kb2CttcfE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTTwM-0002yz-97 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 20:36:16 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AF2D1C01D; Sat, 18 Feb 2023 21:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676752591; bh=/pFwTlz4AiDVvxjY6gJ7Ns3KKC9mALcI1mGQLAJfu0k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TCr+rnIlmqlEC+mbn65lqO+j/k6eE256kccNfwENTqhC5ZvRSBDrhRtsRVm7pm5I0
 ZyIOFV8PtwmBzCEgkAC771iNgrotw8vFMlOiXgYbDSjiuIzic7jziilDYcAwnbgHUI
 77W1L6GR5FGjxj3dK70BkV0ROn0xXAvYgLhXupQJdGak/fWhcPe+J+VJKlIpDOxFZm
 1Vjgvp/0UP8HAxk5cbXLXWJhOSIA3K3fyWraM21DR2vz1ElgEY8bfI/0h7jrsll4C/
 eT/G4FJSHV3o8ImK/gGhy7r4OuH2ZpnkyZhAPpQHrARfgCQH5CVuwvSHexCHZIOKHC
 H1aGYaFD8Nrgg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A4471C009;
 Sat, 18 Feb 2023 21:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676752591; bh=/pFwTlz4AiDVvxjY6gJ7Ns3KKC9mALcI1mGQLAJfu0k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TCr+rnIlmqlEC+mbn65lqO+j/k6eE256kccNfwENTqhC5ZvRSBDrhRtsRVm7pm5I0
 ZyIOFV8PtwmBzCEgkAC771iNgrotw8vFMlOiXgYbDSjiuIzic7jziilDYcAwnbgHUI
 77W1L6GR5FGjxj3dK70BkV0ROn0xXAvYgLhXupQJdGak/fWhcPe+J+VJKlIpDOxFZm
 1Vjgvp/0UP8HAxk5cbXLXWJhOSIA3K3fyWraM21DR2vz1ElgEY8bfI/0h7jrsll4C/
 eT/G4FJSHV3o8ImK/gGhy7r4OuH2ZpnkyZhAPpQHrARfgCQH5CVuwvSHexCHZIOKHC
 H1aGYaFD8Nrgg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 2df64c9a;
 Sat, 18 Feb 2023 20:36:02 +0000 (UTC)
Date: Sun, 19 Feb 2023 05:35:47 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <Y/E2o2/NmfTyfiM5@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-4-ericvh@kernel.org>
 <Y/CZVEQPFFo0zMjo@codewreck.org>
 <CAFkjPTm909jFaEnpmSMBu-6uZnPBVyU_KqMFzWCwbDopT4jCAA@mail.gmail.com>
 <CAFkjPTmZB273pMkQiX1mcBb4XgM5oo8dHZqV-MSPuTKFrFPkSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTmZB273pMkQiX1mcBb4XgM5oo8dHZqV-MSPuTKFrFPkSQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 10:19:47AM
 -0600: > ...of course, relooking at the functions in mm/filemap.c it seems
 like > I can probably just use filemap_fdatawrite > instead of h [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1pTTwM-0002yz-97
Subject: Re: [V9fs-developer] [PATCH v4 03/11] fs/9p: Consolidate file
 operations and add readahead and writeback
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 10:19:47AM -0600:
> ...of course, relooking at the functions in mm/filemap.c it seems like
> I can probably just use filemap_fdatawrite
> instead of having my own flush function since it basically sets up wbc
> the same way....

hmm, I was basing myself off file_write_and_wait_range that also calls
file_check_and_advance_wb_err before returning, but the wait actually
comes from fdatawrite in there...

So, right:
 - WB_SYNC is probably ok, but if we go that way let's use
filemap_fdatawrite -- less things to think about :)
 - if we want any sort of error reporting
file_check_and_advance_wb_err() is probably useful, at which point
keeping the old function is just as good. That doesn't do any wait, just
checks f_wb_err ... in a really complicated way... I don't want to have
to think about.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
