Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D432054760C
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 17:19:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o02ta-00089C-J7; Sat, 11 Jun 2022 15:19:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <viro@ftp.linux.org.uk>) id 1o02tU-000891-Ha
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 15:19:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wGPqBG6QROc7wGr2dAVFjZMoM713TxZD0kORS5OQD0Y=; b=UoOQ1f/BkLx3SK2/7HtbVbgmx2
 bq3E4zTBrvEQPQAWfLOriJvVtVhFZA0XVRZNwyqbT2PYk0735iK2dtnmyizJbejGymB9DEdShi5mg
 JnAAtksSezA0pFq9V/sfp2Aw4t4KWbvJEFb+BFFWxjZAZQny6cl68wT0Fj4KArC9aVsk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wGPqBG6QROc7wGr2dAVFjZMoM713TxZD0kORS5OQD0Y=; b=OWjP3lQxw4gvTR+9D3ZctsQZob
 qd6juALYeNH1YEvvRhnUoN5GlIcLfDp04jyNB+M+5bVUjE506EaYqffBtlx4dPYm7N3yIv7c2daE4
 dhC/ckpCwdqo1rnrqSIe9aJ+SlqJ9rOUo+E7+xe5BE3UJ7cAjyY9PHgG3VFGmL+TgKKM=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o02tN-00059x-8i
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 15:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wGPqBG6QROc7wGr2dAVFjZMoM713TxZD0kORS5OQD0Y=; b=nkXuAnE9/SQez/HHivi1NLK8if
 fSWTa5FaJQuK7v+HmclOnC7LVaWVwxWq4TnG0ns1BGEwOiIrwMgwxuMRhZpyqeGKGXYtQr8gbJen0
 hqVk5nSa5hyy1+K0wPPd4mZx1O17xVBnK+YgNapApDmi3tVSmGFteBkr18tQSIzPSFp5/wJ56WRLb
 iQyjNkmvWzYxwjKN5T6ZCmVg97RIJFMErLINc7KkpqJUIVncVmIDb6mySfx1a8knlHBd/rTYSfJRd
 gnlC+UyrAdy4i6jh4GI9GhrBZXHfMPpVAaq61IkEVHIz5yMb4x/YE/J3ckNr4PlN4PfUzDIR0qRji
 ZPynrW+Q==;
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1o02tH-00691K-Bq; Sat, 11 Jun 2022 15:19:07 +0000
Date: Sat, 11 Jun 2022 15:19:07 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <YqSyaz0GNdZbu1bx@zeniv-ca.linux.org.uk>
References: <YqDfWho8+f2AXPrj@zeniv-ca.linux.org.uk>
 <YqSYWgeQqenOYwVf@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqSYWgeQqenOYwVf@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 11, 2022 at 10:27:54PM +0900, Dominique Martinet
 wrote: > That makes me wonder just how much use we get for the legacy >
 protocols
 -- I guess we do have some but all the filesystem-y > implementations that
 I would expect to be main users for large > IOs/zc [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o02tN-00059x-8i
Subject: Re: [V9fs-developer] [RFC][CFT] handling Rerror without
 copy_from_iter_full()
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jun 11, 2022 at 10:27:54PM +0900, Dominique Martinet wrote:

> That makes me wonder just how much use we get for the legacy
> protocols -- I guess we do have some but all the filesystem-y
> implementations that I would expect to be main users for large
> IOs/zc are 9P2000.L as far as I know -- especially considering
> virtio is pretty much limited to qemu? Are there other 9p virtio
> servers?

Client can trivially force its use - -o version=9p2000.u and there
you go...

> So would it make sense to just say "not .L? tough luck, no zc",
> or am I just being lazy?
> 
> > Had that been in fixed-sized buffer (which is actually 4K), we would've
> > dealt with that the same way we handle non-zerocopy case.  However,
> > for zerocopy it doesn't end up there, so we need to copy it from
> > those pages.
> > 
> > The trouble is, by the time we get around to that, the references to
> > pages in question are already dropped.  As the result, p9_zc_check_errors()
> > tries to get the data using copy_from_iter_full().  Unfortunately, the
> > iov_iter it's trying to read from might *NOT* be capable of that.
> > It is, after all, a data destination, not data source.  In particular,
> > if it's an ITER_PIPE one, copy_from_iter_full() will simply fail.
> 
> Silly question, in case of a pipe we'll have written something we
> shouldn't have, or is it not gone yet until we actually finish the IO
> with iov_iter_advance?
> (my understanding is that reader won't have anything to read until
> someone else does the advance, and that someone else will have
> overwritten the data with their own content so no garbage wlll be read)

More than that, pipe is locked through ->read_iter(), so transient garbage
in it doesn't matter - we will either advance it by zero (it's an error)
or, with iov_iter_get_pages_alloc() switching to advancing variant,
we'll revert by the amount it had reserved there (error is the same as
extremely short read).

> ... With that said though your approach here definitely looks better
> than what we currently have -- my main issue is that truncating is fine
> for the original 9p2000 but for .U you'd be losing the ecode that we
> currently trust for being errno-compatible.

No, we wouldn't - this
                len = req->rc.size - req->rc.offset;
		if (len > (P9_ZC_HDR_SZ - 7)) {
			err = -EFAULT;
			goto out_err;
		}
in p9_check_zc_errors() means that mainline won't even look at that value.
And we'll get the same -EFAULT when we get to
                err = p9pdu_readf(&req->rc, c->proto_version, "s?d",
				  &ename, &ecode);
in p9_check_errors() and see that the length of string is too large to
fit into (truncated) reply.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
