Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BC854B2CC
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 16:11:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o17Gn-0007xa-2D; Tue, 14 Jun 2022 14:11:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o17Gl-0007xJ-F9
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 14:11:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0up0HQhrsxc90C88YMmJQmlVHMrBI86sKQklFU28KR8=; b=hSaeH2y/nSQ5jk3TjvCTeEhbmy
 ovboQW1MMxo7FsjSzez9WvRQhsmhqsRCXky+pscb1PD8VZzKL32/Y2jPMB4cg9oeK6dDhZNoaHIT5
 cnFdA3IngYkwty6+qs/2Pea4FsNIIfKKYevN830GZLsNqcnuQc3EZHqbsxhZpiISaK/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0up0HQhrsxc90C88YMmJQmlVHMrBI86sKQklFU28KR8=; b=T8ngFz4WeVL2XLIyhOEXKVKcsy
 YyGlNScRlgFRS5C2IVKeIrI3XPzkRn/f1OgVu+IFbzTEnGjjATCIHEZlHJcvX1SJ3b9feYB874/+u
 uR8qZfQTSn7jcc3FvtheeH7F7/Zieml7jr7zcfqB+U/U2qLhRBIzNp3DuCc2VT/SXB7w=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o17Gj-0004Y9-B8
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 14:11:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=0up0HQhrsxc90C88YMmJQmlVHMrBI86sKQklFU28KR8=; b=Hp1+8w4PUY58i0Tlkd3yeyLr1t
 d+416tMt71AkGKbx1PRjrgGubVu2CXrnBDpBbOFaBdEqpkvYB8C6w0aNophxcs4gWQR/KIi23kUYS
 eqjPJOORRCQ6F8TvdPT1A4BrmbM94f4UU15NqaO8OhfRs9kLxSkms6mHkPz0uGdIBaAkgiPHvSLs4
 ODNsEb4eEx0Z5cMEzrgDmqfDAA9slhFg/jpbigImbW9YKf+EKQHLrU961QQpO96oP5oz4GgzE9G0Y
 rSE0lUykUF5rhIZ/Mtf2q8mCxqjJO5cfB2r/YAeutwggT/qTVApUrNSQtSyZk1V0iOte8BdAD1PQc
 yvesVwal19dT9zYIdQ56uNLn9Kurfr7tiBLrfQC1upVxd/OkXfVJJ3OMskAf8O61wVRlGWUwH8exR
 MUge0IC5VloTMaquBTx2Ar46bMg1RyoRrYfyeLUj+MwtwbvwN3SdgGRXwbjS6nQ6/DnS9cC8RuCeT
 NuSia+FFUU/KTMyKGeQQ4t1ufx4/736ogVnN3cIkPnDkm+jnMVMpdElh9vrOQeOw1DrUxSs81vwyJ
 h4PRMK2TxpwLa+4YAkGqSNjsSr5tmjpddr7jWVsakCBVVZcaVjRpq/shELYc6KDRLkvWr1jRQds5L
 VzX8eOOz15rMBARpKWHy3gPVUNq1YCLWDmZv6YE9c=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 14 Jun 2022 16:11:35 +0200
Message-ID: <1796737.mFSqR1lx0c@silver>
In-Reply-To: <YqiC8luskkxUftQl@codewreck.org>
References: <YqW5s+GQZwZ/DP5q@codewreck.org> <19026878.01OTk6HtWb@silver>
 <YqiC8luskkxUftQl@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dienstag, 14. Juni 2022 14:45:38 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Tue, Jun 14, 2022 at 02:10:01PM +0200:
 > > It definitely goes into the right direction, but I think [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o17Gj-0004Y9-B8
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Dienstag, 14. Juni 2022 14:45:38 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Tue, Jun 14, 2022 at 02:10:01PM +0200:
> > It definitely goes into the right direction, but I think it's going a bit
> > too far by using writeback_fid also in cases where it is not necessary
> > and wasn't used before in the past.
> 
> Would help if I had an idea of what was used where in the past.. :)
> 
> From a quick look at the code, checking out v5.10,
> v9fs_vfs_writepage_locked() used the writeback fid always for all writes
> v9fs_vfs_readpages is a bit more complex but only seems to be using the
> "direct" private_data fid for reads...
> It took me a bit of time but I think the reads you were seeing on
> writeback fid come from v9fs_write_begin that does some readpage on the
> writeback fid to populate the page before a non-filling write happens.

Yes, the overall picture in the past was not clear to me either.

To be more specific, I was reading your patch as if it would e.g. also use the 
writeback_fid if somebody explicitly called read() (i.e. not an implied read 
caused by a partial write back), and was concerned about a potential privilege 
escalation. Maybe it's just a theoretical issue, as this case is probably 
already catched on a higher, general fs handling level, but worth 
consideration.

> > What about something like this in v9fs_init_request() (yet untested):
> >     /* writeback_fid is always opened O_RDWR (instead of just O_WRONLY)
> >     
> >      * explicitly for this case: partial write backs that require a read
> >      * prior to actual write and therefore requires a fid with read
> >      * capability.
> >      */
> >     
> >     if (rreq->origin == NETFS_READ_FOR_WRITE)
> >     
> >         fid = v9inode->writeback_fid;
> 
> ... Which seems to be exactly what this origin is about, so if that
> works I'm all for it.
> 
> > If desired, this could be further constrained later on like:
> >     if (rreq->origin == NETFS_READ_FOR_WRITE &&
> >     
> >         (fid->mode & O_ACCMODE) == O_WRONLY)
> >     
> >     {
> >     
> >         fid = v9inode->writeback_fid;
> >     
> >     }
> 
> That also makes sense, if the fid mode has read permissions we might as
> well use these as the writeback fid would needlessly be doing root IOs.
> 
> > I will definitely give these options some test spins here, a short
> > feedback
> > ahead would be appreciated though.
> 
> Please let me know how that works out, I'd be happy to use either of
> your versions instead of mine.
> If I can be greedy though I'd like to post it together with the other
> couple of fixes next week, so having something before the end of the
> week would be great -- I think even my first overkill version early and
> building on it would make sense at this point.
> 
> But I think you've got the right end, so hopefully won't be needing to
> delay

I need a day or two for testing, then I will report back for sure. So it 
should perfectly fit into your intended schedule.

Thanks!

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
