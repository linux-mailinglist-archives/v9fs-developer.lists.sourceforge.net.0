Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A72205AC401
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 12:53:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUnFa-00075T-Va;
	Sun, 04 Sep 2022 10:53:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oUnFZ-00075M-4I
 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 10:53:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qcpK6gIOPgU08ol6Aa0Hz7RpXFDdBrA/nrdzgg76Ub0=; b=jQZjbwK+bb9pnH7tfGc7XkY9H9
 mw9Hjf2IhUnJcYl3HfRc3MEMaaXC3vOD4WerSEUcqyFjZMk19Yh5ZFFnnId7v5x0ULP/pZx80U0qR
 S0YQpYMawQ5McUbvhHFwAbx0Qa0kYa/ly6xCuYU7KVQDQnb8rltlKysblM99gB5PkzTk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qcpK6gIOPgU08ol6Aa0Hz7RpXFDdBrA/nrdzgg76Ub0=; b=Qy7JM7pj+jCynuIvU7hEkEvTkG
 DDLKVLzd/o1LL0fRuyXDtOx+zv/Ws+V7Y+Ky7pHrLhcK2mUuqG0Jn72tvT0osJVfJvjLrrqex/gsR
 QtxUpr+99fSyqjCghHtec47a3vuOjze3d2mp77Yzmawhy2dC3l4/eN/ldk9rX8KydEVk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUnFW-0001y1-Gz for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 10:53:13 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9F718C01D; Sun,  4 Sep 2022 12:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662288783; bh=qcpK6gIOPgU08ol6Aa0Hz7RpXFDdBrA/nrdzgg76Ub0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ki4TIV7/Pvbdr8MZhAx4vb998AFfcLvijeSd36ArmmJT//e0E5tD9v3uQUPnLrzMi
 Ki6uDH9dh4zJ+WzEGvfPvUkxqNAvWv6RXpxPE/S9AkZyGLu5hTfmm+b0H0K1UH77IR
 eNNdK5M/y0tnm3sc74lcq6apo1SuxJf+pEcXp8WBjudlPp13kMyPOfOv44KDhGhVFy
 jbXLnYlmB1TNUSnFdLybO10KQV6O0m0rtonSCZYlTnoNy6wPAp9KLNAwkl+55iMX9W
 raDex6diN62KfPzIytYAACpvxVU63mOz8vpgL6lNxZXdobXKNOmbiPPyMb62CYKyq+
 +gQO/SIXDD/UA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 5A8FEC009;
 Sun,  4 Sep 2022 12:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662288782; bh=qcpK6gIOPgU08ol6Aa0Hz7RpXFDdBrA/nrdzgg76Ub0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JLZmADVyD0AvRu9LoksIuDGg+altERdF/lHMA3nhtcMmGTzu9YEXKG0LXzQylWMnc
 upA6ps/JXRpXu8Fw09JHVQbbfQf9oujKoXwOM0bBjKZL9rHCdVv+8ig2cf1/RihBZU
 jl7uJN206sGfCddTpHNv46RD5MSukjre9IWim7QxVqlRQU4N5hK7tkLnS6iYbEys5O
 NB1x+xaIQbtURviqiBKuwZIrG11/A1e8QlTyBrtKBM2ZMQsAG0izkuEAUMRxj+dtIH
 eYNH/EjmAZDbTpv1CB+oGFJl8bABVuhIkZ2MyTWiMaEMagrGHa7bNd71/Q8BK4zWbx
 WCuJS1toBLa1g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 90536ec9;
 Sun, 4 Sep 2022 10:52:57 +0000 (UTC)
Date: Sun, 4 Sep 2022 19:52:42 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <YxSDeqn4LrSfSaUs@codewreck.org>
References: <YxRZ7xtcUiYcPaw0@codewreck.org>
 <10e6223b-88c2-a377-c238-11c93d4e1afb@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10e6223b-88c2-a377-c238-11c93d4e1afb@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tetsuo Handa wrote on Sun, Sep 04, 2022 at 07:02:04PM +0900:
 > > In hindsight it's probably faster to just send a diff... Happy to keep
 > > you as author if you'd like, or sign off or whatever you pre [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oUnFW-0001y1-Gz
Subject: Re: [V9fs-developer] [PATCH v2] net/9p: use a dedicated spinlock
 for modifying IDR
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tetsuo Handa wrote on Sun, Sep 04, 2022 at 07:02:04PM +0900:
> > In hindsight it's probably faster to just send a diff... Happy to keep
> > you as author if you'd like, or sign off or whatever you prefer -- I
> > wouldn't have guessed what that report meant without you.
> 
> This diff is bigger than I can guess correctness. Maybe v1 patch should be
> applied as a fix for this problem (because including Reported-by: or Fixes:
> likely makes patches be automatically picked up by stable kernel maintainers
> before syzbot tests for a while) and your patch should be applied as an improvement
> (i.e. omit Reported-by: and Fixes: ). You can manually request for inclusion into
> stable kernels after syzbot tested for a while.

Hmm. The diff is bigger but the change really is equivalent: that
client->lock is only ever used in client.c and trans_fd.c, you replaced
all the occurences in client.c (3 locations + init) while I replaced all
the occurences in trans_fd.c (6 locations + init); the end result is
the same of splitting the two locks exactly at the same place; as far as
correctness goes the patches are identical.

The diff is a bit bigger but the result is more maintainable, and both
versions would require trivial context adjustments to backport anyway
because of bd873038aed5 ("net/9p: allocate appropriate reduced message
buffers") which conflict with either version...
I don't think this warrants the overhead of splitting the patch; sorry.

(and anyway Sasha Levin's autopicker seems to pick almost everything 9p,
said bd873038aed5 was backported down to 5.15 so these will have
backport for free on either version)



Back on topic, assuming you don't strongly oppose to keeping my version,
what tags should I add to the patch?
Reported-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
undersells your work, but I don't want to add something like
Co-authored-by without your permission.


Thanks,
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
