Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B145474D0
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 15:28:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o01AE-00086y-Mu; Sat, 11 Jun 2022 13:28:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o01AD-00086m-FI
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 13:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TGzmb/Iu7QpV6WSsoJdFI/dC7IRxWq/cmuz/luanVAc=; b=aBrzTDE7giaUPRoX5GYTPol3VR
 K0itFE6pRF+VPDxbft8IJxTE/Vi5i0Losv6NHnd4oQDHc8qpsEcZjV3TEPg7u3MCc1ncFWOZvAt/X
 a2vyPwHDPf3JtU0axgnoUIxghIYAg/8oW0Y5hgceSnQCdJ1Y1INmG245SOiTDhmnJUww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TGzmb/Iu7QpV6WSsoJdFI/dC7IRxWq/cmuz/luanVAc=; b=hBgC/CVu7V2ayQE3PTki4R3WBs
 Slzl2mKv0lC8ejO5ayjbVaGDyWhkpdI63XuNdG6tZf7Ok+eUj8nMSwmdAiBcEqExSK3PnHn4jUMe/
 MKUpg1Bb3LpKrhy6LLfKUlLREQt5H+4nOm7YL10MAPnT5FxKFnnqCSfbjQUl0o0UCdM0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o01AC-00F5KD-JY
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 13:28:29 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 35CA4C01D; Sat, 11 Jun 2022 15:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1654954102; bh=TGzmb/Iu7QpV6WSsoJdFI/dC7IRxWq/cmuz/luanVAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tQP5srUj2YfSSYrAcwf8WOuwgC2dLZvbfuWXOee/l6dMy7c+JCKSEojbvjqZVuRJh
 hXwEpR/QmUAtYjiT3dnfqmX25QqFLnrXdZ7fhDq/cgQqrgz8K3Uy64ezrVNtQUQaNJ
 FU6Oh6vkPm9HOZuqjy9dUX1dwo/maMU8Ayeeh6YdXrBQbDdPmmpM0lHs/a4YIHzZSR
 Z0hnMFC1PL7Hk5TpSW6DXR0LXeSQe3Q3xr+po6x6H9M/RrmmF1+VLqh9ZQUig1/Muj
 tzDDoWO5PSNYU15P480tknwTmXW+KruEHeLMVIAQN1+YSD3vI1HxHeTvzXYClr827F
 PhqhsEav8sRZQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B5814C009;
 Sat, 11 Jun 2022 15:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1654954092; bh=TGzmb/Iu7QpV6WSsoJdFI/dC7IRxWq/cmuz/luanVAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oBKAGwxwZjWU0vDddmpjSlML42V0uJgzRWo0YNv9mF6HRGaJ4rT/scSgW6gno069C
 UY31d5HdJOjDIKlJ7uB6CfgN1qvVbEMRxrQYArwlSW7DWns6pfAvML8NQ5hKD83FBv
 RuSNCS4itsT6tXloguYAQNetaD48+EDiNn+Qi3QhqXhT+5auTTuDOgLRsxX/RpX8bo
 ebS57Rm9aOHSuRo4E5YNYf2w2GbG5JM06h8v8f1oAfICX1LvwMcgLpGm/P2A/FnvQj
 InRpqVner+PJV0uZcFH8NVBmWM/iB5q3XZ/ZTFGtKUzhlFPlTFQvgkPLNEERqWEv6m
 /58ghFMxuoz/g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id cdccf9d2;
 Sat, 11 Jun 2022 13:28:09 +0000 (UTC)
Date: Sat, 11 Jun 2022 22:27:54 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <YqSYWgeQqenOYwVf@codewreck.org>
References: <YqDfWho8+f2AXPrj@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqDfWho8+f2AXPrj@zeniv-ca.linux.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Al Viro wrote on Wed, Jun 08, 2022 at 05:41:46PM +0000: >
 As it is, p9_client_zc_rpc()/p9_check_zc_errors() is playing fast > and loose
 with copy_from_iter_full(). > > Background: reading from file is [...] 
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
X-Headers-End: 1o01AC-00F5KD-JY
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

Al Viro wrote on Wed, Jun 08, 2022 at 05:41:46PM +0000:
> 	As it is, p9_client_zc_rpc()/p9_check_zc_errors() is playing fast
> and loose with copy_from_iter_full().
> 
> 	Background: reading from file is done by sending Tread request.
> Response consists of fixed-sized header (including the amount of data
> actually read) followed by the data itself.
> 
> 	For zero-copy case we arrange the things so that the first 11
> bytes of reply go into the fixed-sized buffer, with the rest going
> straight into the pages we want to read into.

Ugh... zc really needs something like direct data placement NFS/RDMA has
been doing... (But that's just not possible without extending the
protocol)

> 	What makes the things inconvenient is that sglist describing
> what should go where has to be set *before* the reply arrives.  As
> the result, if reply is an error, the things get interesting.  Success
> is
> 	size[4] Rread tag[2] count[4] data[count]
> For error layout varies depending upon the protocol variant -
> in original 9P and 9P2000 it's
> 	size[4] Rerror tag[2] len[2] error[len]
> in 9P2000.U
> 	size[4] Rerror tag[2] len[2] error[len] errno[4]
> in 9P2000.L
> 	size[4] Rlerror tag[2] errno[4]
> 
> The last case is nice and simple - we have an 11-byte response that fits
> into the fixed-sized buffer we hoped to get an Rread into.  In other
> two, though, we get a variable-length string spill into the pages
> we'd prepared for the data to be read.

That makes me wonder just how much use we get for the legacy
protocols -- I guess we do have some but all the filesystem-y
implementations that I would expect to be main users for large
IOs/zc are 9P2000.L as far as I know -- especially considering
virtio is pretty much limited to qemu? Are there other 9p virtio
servers?

So would it make sense to just say "not .L? tough luck, no zc",
or am I just being lazy?

> Had that been in fixed-sized buffer (which is actually 4K), we would've
> dealt with that the same way we handle non-zerocopy case.  However,
> for zerocopy it doesn't end up there, so we need to copy it from
> those pages.
> 
> The trouble is, by the time we get around to that, the references to
> pages in question are already dropped.  As the result, p9_zc_check_errors()
> tries to get the data using copy_from_iter_full().  Unfortunately, the
> iov_iter it's trying to read from might *NOT* be capable of that.
> It is, after all, a data destination, not data source.  In particular,
> if it's an ITER_PIPE one, copy_from_iter_full() will simply fail.

Silly question, in case of a pipe we'll have written something we
shouldn't have, or is it not gone yet until we actually finish the IO
with iov_iter_advance?
(my understanding is that reader won't have anything to read until
someone else does the advance, and that someone else will have
overwritten the data with their own content so no garbage wlll be read)


> The thing is, in ->zc_request() itself we have those pages.  There it
> would be a simple matter of memcpy_from_page() into the fixed-sized
> buffer and it isn't hard to recognize the (rare) case when such
> copying is needed.  That way we get rid of p9_zc_check_errors() entirely
> - p9_check_errors() can be used instead both for zero-copy and non-zero-copy
> cases.
> 
> Do you see any problems with the variant below?

... With that said though your approach here definitely looks better
than what we currently have -- my main issue is that truncating is fine
for the original 9p2000 but for .U you'd be losing the ecode that we
currently trust for being errno-compatible.
It's *probably* not a problem in practice, but preserving that errno
would theorically make us look for the page where the last few bytes
went to and overwrite the end of the string with it but that's starting
to be ugly.

Anyway even not doing that is probably better than reading from
something we no longer own; but I'm still thinking just refusing non-.L
variants to zc calls is a better decision long term.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
