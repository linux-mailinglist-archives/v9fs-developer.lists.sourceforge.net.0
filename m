Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C474754B168
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 14:46:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o15vx-0006VV-FJ; Tue, 14 Jun 2022 12:46:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o15vw-0006VP-4M
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 12:46:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RBQSMhJpK15hWi9SMdepI4O7Y2eSyNHR2US+GQyQ36o=; b=Jafppe5/BfiAC5Zg37Qb2qovCB
 uMYjBy1iKRXGf0VtEGyX/l4m32BYGZ+EmUwT+Sk/dBmqDdo8dN4mh/hcLm9KkWWhwStPnneiLpgV9
 AHVwmG0diZM0NdOkn+5I7jgAzy6kxdfRS3/QydEOXLIo9v1Kqw49J0eH3rcYItZBe31A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RBQSMhJpK15hWi9SMdepI4O7Y2eSyNHR2US+GQyQ36o=; b=cWkfQ+KomGBvVYHTzErnp7UAYz
 woGUknoeuyr5lS65xru14/zONhRZksI5U59RhmnZrOjA5AJxICzTNkt+9e3HGRHj7T6KcpAhuTZHY
 3Y7wp3X64lqik1VtoAsYz2nQFmHzHP4r/AgbomZY0+/6QaJwisdWSaSIszfdV/uCstWw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o15vs-001HUv-QM
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 12:46:10 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 62270C01D; Tue, 14 Jun 2022 14:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655210762; bh=RBQSMhJpK15hWi9SMdepI4O7Y2eSyNHR2US+GQyQ36o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LilRbVJUfwYoA1//wDU1shCOR5jIlx8SHihvxDmteQ1l1gMs5kgxlk7aM3k7hIFAw
 3A0uRVv0xz4CtRSZK6YZUxF2bAZ3e18O0OOswRu9skzz4N90QpkV2qKn83rSv6KWtd
 vqViBfUVAGcvn02WxoMFlmUDsnA6ae6ww+mwbzj3On574KLvCb1Q9U4rZqn27j9CfH
 +7vb3NOKulwEBsUfb9dWM1abLj30rBDKUOuCh8WHT8VRH1UfOWGJuIdS68MLBfruDo
 maz9BHaJqUwPxGX4Ic2m8vmia6GxKVZP5tvrZ0APgofnHBnqIm5W8Op4BIZNPjboaJ
 Qrkz60btiZZ0A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 6B33DC009;
 Tue, 14 Jun 2022 14:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655210761; bh=RBQSMhJpK15hWi9SMdepI4O7Y2eSyNHR2US+GQyQ36o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VUcy+z4XRKn7+vtvt02If6n53Kq01LfCtnbgiQl1vimsdQQuBo7mMmbPyEj1vKTzU
 UkuQcg3gu2kaXLwSRZ0hWQzJxlgsVZc5CweX9hlL64WeGSNSM/qvhOphK9x5NB3NGC
 nQT2qVZ2nLp2RQIEvrPV+ESJDRrNgoCglQYndTU6cHhI+VdWUGCsTBL9vzb531YY6w
 qrEQXM6+rUxhbXlpWZzw24Gt/M26s/px/ctjthKXsvmdF7S+wKYUkkkl7lodK1FDe5
 UWqFGS0xf/iWIbj8BLlkuSSb6Nqu4LomRlCFD1gyJktnqi3qD3YgWYFn9zqVMfg9Z4
 ohkHGDvGz9xXQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 81288279;
 Tue, 14 Jun 2022 12:45:53 +0000 (UTC)
Date: Tue, 14 Jun 2022 21:45:38 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YqiC8luskkxUftQl@codewreck.org>
References: <YqW5s+GQZwZ/DP5q@codewreck.org>
 <20220614033802.1606738-1-asmadeus@codewreck.org>
 <YqgDdNUxC0hV6KR9@codewreck.org> <19026878.01OTk6HtWb@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19026878.01OTk6HtWb@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Tue, Jun 14,
 2022 at 02:10:01PM
 +0200: > It definitely goes into the right direction, but I think it's going
 a bit too > far by using writeback_fid also in cases where i [...] 
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
X-Headers-End: 1o15vs-001HUv-QM
Subject: Re: [V9fs-developer] [PATCH] 9p: fix EBADF errors in cached mode
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Tue, Jun 14, 2022 at 02:10:01PM +0200:
> It definitely goes into the right direction, but I think it's going a bit too 
> far by using writeback_fid also in cases where it is not necessary and wasn't 
> used before in the past.

Would help if I had an idea of what was used where in the past.. :)

From a quick look at the code, checking out v5.10,
v9fs_vfs_writepage_locked() used the writeback fid always for all writes
v9fs_vfs_readpages is a bit more complex but only seems to be using the
"direct" private_data fid for reads...
It took me a bit of time but I think the reads you were seeing on
writeback fid come from v9fs_write_begin that does some readpage on the
writeback fid to populate the page before a non-filling write happens.

> What about something like this in v9fs_init_request() (yet untested):
> 
>     /* writeback_fid is always opened O_RDWR (instead of just O_WRONLY) 
>      * explicitly for this case: partial write backs that require a read
>      * prior to actual write and therefore requires a fid with read
>      * capability.
>      */
>     if (rreq->origin == NETFS_READ_FOR_WRITE)
>         fid = v9inode->writeback_fid;

... Which seems to be exactly what this origin is about, so if that
works I'm all for it.

> If desired, this could be further constrained later on like:
> 
>     if (rreq->origin == NETFS_READ_FOR_WRITE &&
>         (fid->mode & O_ACCMODE) == O_WRONLY)
>     {
>         fid = v9inode->writeback_fid;
>     }

That also makes sense, if the fid mode has read permissions we might as
well use these as the writeback fid would needlessly be doing root IOs.

> I will definitely give these options some test spins here, a short feedback 
> ahead would be appreciated though.

Please let me know how that works out, I'd be happy to use either of
your versions instead of mine.
If I can be greedy though I'd like to post it together with the other
couple of fixes next week, so having something before the end of the
week would be great -- I think even my first overkill version early and
building on it would make sense at this point.

But I think you've got the right end, so hopefully won't be needing to
delay


Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
