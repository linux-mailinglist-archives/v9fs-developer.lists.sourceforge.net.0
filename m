Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A30315996
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 23:42:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9bih-0005Mw-7p; Tue, 09 Feb 2021 22:42:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwysocha@redhat.com>) id 1l9big-0005Mo-Cf
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 22:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZ7uCNlA2uIi2Zywr96bupyWhGmv/tkzQj/R8fIDK/I=; b=nWjMekS3vtjUB3aUDlMS/7HaLG
 eGTS9LyZ12tILiipBY28/leQc9HTgQLy2az5X5iK2QZ0pCy0Cs/4wjHwbCmuMXsLp7nOEgrgYTqhS
 N/PSt1uHWdaOxykw+dx44cW9MF2p0xN1OQBBmB8NUAF4LcoRaAdidybDMTP7jv/87jpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GZ7uCNlA2uIi2Zywr96bupyWhGmv/tkzQj/R8fIDK/I=; b=MLnGb3YBz/FgVnU4whNXOhifSB
 gH7pVhNLlzT8h9sKJ1XDf9O3UxyULS391l78skphul7i8ANmaFUz4eevUx2U42R/V1HshAypCZ8wn
 mWXWT5nLbMoDz6xbojNbnKf5R9TTYIfniktqF/yl0CQzvfXxYsUKdOtkejQP6pB9wTtQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1l9bic-0000kN-F9
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 22:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612910564;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GZ7uCNlA2uIi2Zywr96bupyWhGmv/tkzQj/R8fIDK/I=;
 b=S8phLDy+fsGep/e7tLrlLyPRm9nOFX3vQfS5kbf5B/U9UMtgm59OywSSaKDUuun1JZd6Fk
 S4NBT9Ic2oCbR7rGC6L5t1Pewb7PK7xldFd1Z7muQO+R12xWBw9Tco3XpLAj5s56z7MoO+
 PzMllTC4th6byFqyLypLHC/p1vOlMS8=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-t1paMpF9OHycGbW5T7gfbA-1; Tue, 09 Feb 2021 17:42:41 -0500
X-MC-Unique: t1paMpF9OHycGbW5T7gfbA-1
Received: by mail-ej1-f72.google.com with SMTP id ce9so265341ejc.17
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 09 Feb 2021 14:42:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZ7uCNlA2uIi2Zywr96bupyWhGmv/tkzQj/R8fIDK/I=;
 b=M57PvSYqCj8igjDbt9XkPxIfegFQS3xEtUYZTqrLIdH+vaSnBNnvS0qPcffep8Dt+x
 VRMDKNNvn25PASJ+7qtwawY4BY4IUkk2s+dfo7zRHjnMD//AT0YJYVovnQJtUTJyKgF4
 ZALUotlIyrj+AtwW84bN4kwxHzjZ5TfT0yaB3eqiqk1uEnIUCd7gxWhVOGXN54q9vIyE
 hjZChWmbIijQIc99DYyhxBQc72cfhUac3mFCJzm1f6D2k2M1RvXjr3HhNRMrJCxqePvX
 wxYX2BSUFQqkN1IZ6KlqpFBuWpUA6hUOIavUr9bYlV9+prn5WX7goHbZwe0Rz9UjN73v
 rxXA==
X-Gm-Message-State: AOAM5322wLUApElRDfugXmA89ag5oTIDlsC3AfoplyzvusIJda5tgE7t
 vGrwYzUUxvUWCCSus5qDoAxIdFMzgCjJgKBzHrSYy64XoLpHGiBJiy+Lz9vL/yYSAIW6f1A2x/r
 DSE1ILacC3d9KJXrc1A1vQ27MnetQBZvwcrzISrCxQN60xL4K1rc=
X-Received: by 2002:a17:906:b351:: with SMTP id
 cd17mr24871318ejb.110.1612910560692; 
 Tue, 09 Feb 2021 14:42:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxWZ/SxMb2EYr3Wx/r9tLm+ytvzx5rNbM3Mu7nYLvi+QXirS/jRZBjDCWHtM3Wa2pEsJ4PdxjPocMuO52GFZ9o=
X-Received: by 2002:a17:906:b351:: with SMTP id
 cd17mr24871281ejb.110.1612910560352; 
 Tue, 09 Feb 2021 14:42:40 -0800 (PST)
MIME-Version: 1.0
References: <591237.1612886997@warthog.procyon.org.uk>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
In-Reply-To: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
From: David Wysochanski <dwysocha@redhat.com>
Date: Tue, 9 Feb 2021 17:42:04 -0500
Message-ID: <CALF+zOkMKqvidLf8WZD889PUN-KofdiRPOcbO4hxboVmUGiOgw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l9bic-0000kN-F9
Subject: Re: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 David Howells <dhowells@redhat.com>, linux-cachefs <linux-cachefs@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Feb 9, 2021 at 2:07 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> So I'm looking at this early, because I have more time now than I will
> have during the merge window, and honestly, your pull requests have
> been problematic in the past.
>
> The PG_fscache bit waiting functions are completely crazy. The comment
> about "this will wake up others" is actively wrong, and the waiting
> function looks insane, because you're mixing the two names for
> "fscache" which makes the code look totally incomprehensible. Why
> would we wait for PF_fscache, when PG_private_2 was set? Yes, I know
> why, but the code looks entirely nonsensical.
>
> So just looking at the support infrastructure changes, I get a big "Hmm".
>
> But the thing that makes me go "No, I won't pull this", is that it has
> all the same hallmark signs of trouble that I've complained about
> before: I see absolutely zero sign of "this has more developers
> involved".
>
> There's not a single ack from a VM person for the VM changes. There's
> no sign that this isn't yet another "David Howells went off alone and
> did something that absolutely nobody else cared about".
>

I care about it.

I cannot speak to your concerns about the infrastructure changes, nor
can I comment about a given maintainers involvement or lack thereof.
However, I can tell you what my involvement has been.  I got involved
with it because some of our customers use fscache with NFS and I've
supported it.  I saw dhowells rewriting it to greatly simplify the
code and make it easier to debug and wanted to support the effort.

I have been working on the NFS conversion as dhowells has been
evolving the fscache-iter API.  David first posted the series I think
in Dec 2019 and I started with NFS about mid-year 2020, and had my
first post of NFS patches in July:
https://marc.info/?l=linux-nfs&m=159482591232752&w=2

One thing that came out of the earlier iterations as a result of my
testing was the need for the network filesystem to be able to 'cap'
the IO size based on its parameters, hence the "clamp_length()"
function.  So the next iteration dhowells further evolved it into a
'netfs' API and a 'fscache' API, and my November post was based on
that:
https://marc.info/?l=linux-nfs&m=160596540022461&w=2

Each iteration has greatly simplified the interface to the network
filesystem until today where the API is pretty simple.  I have done
extensive tests with each iteration with all the main NFS versions,
specific unit tests, xfstests, etc.  However my test matrix did not
hit enough fscache + pNFS servers, and I found a problem too late to
include in his pull request.  This is mostly why my patches were not
included to convert NFS to the new fscache API, but I intend to work
out the remaining issues for the next merge window, and I'll have an
opportunity to do more testing last week of Feb with the NFS "remote
bakeathon".  My most recent post was at the end of Jan, and Anna is
taking the first 5 refactoring patches in the next merge window:
https://marc.info/?l=linux-nfs&m=161184595127618&w=2

I do not have the skills of a Trond or Anna NFS developers, but I have
worked in this in earnest and intend to see it through to completion
and support NFS and fscache work.  I have received some feedback on
the NFS patches though it's not been a lot, I do know I have some
things to address still.  With open source, no feedback is hard to
draw conclusions other than it's not "super popular" area, but we
always knew that about fscache - it's an "add on" that some customers
require but not everyone. I know Trond speaks up when I make a mistake
and/or something will cause a problem, so I consider the silence
mostly a positive sign.



> See my problem? I need to be convinced that this makes sense outside
> of your world, and it's not yet another thing that will cause problems
> down the line because nobody else really ever used it or cared about
> it until we hit a snag.
>
>                   Linus
>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
