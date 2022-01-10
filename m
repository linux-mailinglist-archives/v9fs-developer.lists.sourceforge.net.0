Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8048A407
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 Jan 2022 00:55:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n74Vt-0003Sg-JY; Mon, 10 Jan 2022 23:55:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n74Vs-0003Sa-Kt
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 23:55:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K6/ulcECnW5v1CQbWWMF5TBlmunhZlx2OhoXw0lq57c=; b=YHkeUpT6UaLDslwukgSRiCY/ca
 d9R+nqA7n33ptcx1JFJlFvG5eoVbp8wfJM7wFxnCIO8w75X0FLfMdbUAjqhOqs1CjR+NBqMZPqAIH
 RcgqWyxpnQkafU4ojKnLGxe3xaaAXJEJzicxJgHJm3dHn/Na/kBaLJ8CuDyq/kqMOFS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K6/ulcECnW5v1CQbWWMF5TBlmunhZlx2OhoXw0lq57c=; b=VorEp5T4nKjabEepFeTc1VX68a
 tXQ1sARLpkC6YJeV7b+LZsawA3LHt+7/kG8w3mlRq5Zq+/Op0KAsXM9ZD+GdrgLneLpKtdMKJtovf
 rPCBrWQ9tq8uAzSScGKuLeRBJNbgetktgKTmhg9putVszkPah76lzVoBIKWJAcqXcnwo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n74Vp-00B5Fs-U8
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 23:55:43 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7C7B5C009; Tue, 11 Jan 2022 00:55:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641858935; bh=K6/ulcECnW5v1CQbWWMF5TBlmunhZlx2OhoXw0lq57c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xQgzPKZFDelZ56Ycx59i3+LvKvg4qb8eHN6DcO0p5OJBhVHuytnVLD/3lmr0g5WHF
 LDTr512ap+JLVkVlwrP1CRorovaTTWPluu+cGePtTl7HV+rZWve7VJerjhLrH8apSh
 Rq5iUTTCkc8jg9R+JJs0lUREDHfuqHJMEUBFGHy3Ok2VTL5K8g9SJajxszF3o10lAO
 iPg60COYTSuOCrpKTqgEOzO6zS8zmgJSQweEe0xul0ZfONl5QyAr6JIw6TEfuLsW5o
 JOjzz1BFwCREjxkqpeFDQREDilUzc49+BuEnn8bvzJ8KQVdQd2YZ+E3fYE9+5XLx7y
 fg88Ymv/3XJ1w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 53F2FC009;
 Tue, 11 Jan 2022 00:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641858935; bh=K6/ulcECnW5v1CQbWWMF5TBlmunhZlx2OhoXw0lq57c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xQgzPKZFDelZ56Ycx59i3+LvKvg4qb8eHN6DcO0p5OJBhVHuytnVLD/3lmr0g5WHF
 LDTr512ap+JLVkVlwrP1CRorovaTTWPluu+cGePtTl7HV+rZWve7VJerjhLrH8apSh
 Rq5iUTTCkc8jg9R+JJs0lUREDHfuqHJMEUBFGHy3Ok2VTL5K8g9SJajxszF3o10lAO
 iPg60COYTSuOCrpKTqgEOzO6zS8zmgJSQweEe0xul0ZfONl5QyAr6JIw6TEfuLsW5o
 JOjzz1BFwCREjxkqpeFDQREDilUzc49+BuEnn8bvzJ8KQVdQd2YZ+E3fYE9+5XLx7y
 fg88Ymv/3XJ1w==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 846a2e93;
 Mon, 10 Jan 2022 23:55:30 +0000 (UTC)
Date: Tue, 11 Jan 2022 08:55:15 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: ng@0x80.stream
Message-ID: <YdzHY+cTVmmX3zOm@codewreck.org>
References: <c4815842e8eedab0325fc62ae9e58fde@0x80.stream>
 <Ydy1qtV68fO69baZ@codewreck.org>
 <ae62a8a6f63c83b0dfc23db11ec49028@0x80.stream>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae62a8a6f63c83b0dfc23db11ec49028@0x80.stream>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ng@0x80.stream wrote on Mon, Jan 10,
 2022 at 11:28:43PM +0000:
 > > This is bending the rules somewhat, but does your server only have this
 > > restriction for non-clone walks? > > The servers I use ar [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1n74Vp-00B5Fs-U8
Subject: Re: [V9fs-developer] bad use of fid
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
Cc: v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ng@0x80.stream wrote on Mon, Jan 10, 2022 at 11:28:43PM +0000:
> > This is bending the rules somewhat, but does your server only have this
> > restriction for non-clone walks?
> 
> The servers I use are built on top of go9p and it looks like there's no
> special case for clone walks:
> https://github.com/lionkov/go9p/blob/master/p/srv/fcall.go#L211

Thanks for providing link to server code.
Indeed, regular file clones if file had been open will likely fail as
well with the same error.

> I can't comment on the rest of your message as I lack necessary knowledge
> about the v9fs implementation. :(

It's ok, I'm mostly just thinking aloud :)

There's a merge window right now so I wanted to get a quick fix out
immediately, but if it's not enough I'd rather not rush something out
and work on a proper fix.

My preferred approach now would be to flag if the fid is walkable and
have the search function specify which type of fid it wants if it cares
(operations like stat/wstat could use fids opened with either).

That won't let us clone deleted files, but common operations like
fstat() won't break so it's a good compromise.

It's not that difficult so if you want to take a stab I'd be happy to
take a patch, otherwise I'll work on it as I have time and send you
something for testing -- probably over next weekend.


> I'm a bit surprised that this used to work in 5.10 and that no one spotted
> this problem before in 5.12 and 5.14; it makes me wonder what people use
> v9fs for! I'm thankful there's v9fs.

Most people seem to use it for qemu, which doesn't enforce the
limitation.
The other servers I occasionally test (ganesha, more rarely diod, and
even more rarely suckless' libixp) don't seem to enforce this check, and
you're the first to report this problem so other users for go9p likely
haven't upgraded yet.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
